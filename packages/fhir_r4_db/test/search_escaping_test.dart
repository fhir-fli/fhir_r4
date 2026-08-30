// ignore_for_file: use_raw_strings

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:fhir_r4_db/src/search/search_escaping.dart';
import 'package:test/test.dart';

/// R4 3.1.1.4.19. `$`, `,` and `|` are separators, so a literal one inside a
/// value is prefixed with a backslash and a literal backslash is doubled.
///
/// The spec's own worked example: `code=a,b` asks for either code, while
/// `code=a\,b` asks for the single code `a,b`. Splitting raw does not merely
/// miss a record, it returns the WRONG ones.
///
/// Note where each separator is handled. The DAO splits on the pipe and on the
/// dollar, because those are internal to a single value. Comma splitting
/// happens further out, in whatever parses the query string, so the comma half
/// of this escaping has to be applied there too.
Future<void> main() async {
  group('splitting honours the escape', () {
    test("the spec's own example: a,b is two values, a\\,b is one", () {
      expect(splitEscaped('a,b', ','), equals(['a', 'b']));
      expect(splitEscaped(r'a\,b', ','), equals(['a,b']));
    });

    test('a doubled backslash is one literal backslash', () {
      // "The parameter value xx\xx is illegal, and param=xx\\xx indicates a
      // literal value of xx\xx."
      expect(splitEscaped(r'xx\\xx', ','), equals([r'xx\xx']));
    });

    test('an escaped pipe does not split a token', () {
      expect(splitEscaped(r'sys|a\|b', '|'), equals(['sys', 'a|b']));
    });

    test('an escaped dollar does not split a composite', () {
      // "param=xxx$xxx indicates that it is a composite parameter, while
      // param=xx\$xx indicates that the parameter has the literal value xx$xx."
      expect(splitEscaped(r'xxx$xxx', r'$'), equals(['xxx', 'xxx']));
      expect(splitEscaped(r'xx\$xx', r'$'), equals([r'xx$xx']));
    });

    test('a value with no escapes is untouched', () {
      expect(splitEscaped('plain', ','), equals(['plain']));
      expect(splitEscaped('a,b,c', ','), equals(['a', 'b', 'c']));
    });

    test('empty segments survive, because |code has meaning', () {
      // "[parameter]=|[code]: ... the Coding/Identifier has no system"
      expect(splitEscaped('|code', '|'), equals(['', 'code']));
      expect(splitEscaped('system|', '|'), equals(['system', '']));
    });

    test('unescapeValue strips without splitting', () {
      expect(unescapeValue(r'Clinic\, North'), equals('Clinic, North'));
      expect(unescapeValue(r'xx\\xx'), equals(r'xx\xx'));
      expect(unescapeValue('untouched'), equals('untouched'));
    });
  });

  group('through the search itself', () {
    late FhirDb fhirDb;
    late FhirDao dao;

    setUp(() async {
      fhirDb = FhirDb(NativeDatabase.memory());
      dao = fhirDb.fhirDao;
      await dao.saveResource(
        Organization.fromJson({
          'resourceType': 'Organization',
          'id': 'comma',
          'name': 'Clinic, North Wing',
        }),
      );
      await dao.saveResource(
        Organization.fromJson({
          'resourceType': 'Organization',
          'id': 'plain',
          'name': 'Clinic',
        }),
      );
    });
    tearDown(() async => fhirDb.close());

    Future<List<String>> ids(String param, String value) async =>
        (await dao.search(
          resourceType: R4ResourceType.Organization,
          searchParameters: {
            param: [value],
          },
        ))
            .map((r) => r.id?.valueString ?? '')
            .toList()
          ..sort();

    test('a known positive, so a zero below means the escaping', () async {
      expect(await ids('name', 'Clinic'), equals(['comma', 'plain']));
    });

    test('an escaped comma searches for the one name containing it', () async {
      // Unescaped this would be two OR values, "Clinic" and " North Wing",
      // and the first of those matches both organisations.
      expect(await ids('name', r'Clinic\, North'), equals(['comma']));
    });

    test('the DAO takes values already split, so a comma here is data',
        () async {
      // Comma OR-splitting happens in the REST layer that parses the query
      // string, not here: this API takes a LIST of values already separated.
      // So a comma reaching the DAO is part of the value, and "Clinic,Nothing"
      // is a name no organisation has.
      expect(await ids('name', 'Clinic,Nothing'), isEmpty);
    });
  });
}
