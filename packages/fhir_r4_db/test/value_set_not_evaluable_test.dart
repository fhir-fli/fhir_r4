import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// fhirant REVIEW-2026-09-17 T1 and T2, at the store.
///
/// "Not held" was answered as "empty": a ValueSet the store does not hold,
/// or one including all of a CodeSystem it does not hold, expanded to no
/// codes, so `:in` matched nothing and `:not-in` matched everything.
///
/// R4B valueset-operation-expand.html, read whole 2026-09-17, verbatim:
/// "When a server cannot correctly expand a value set because it does not
/// fully understand the code systems (e.g. it has the wrong version, or
/// incomplete definitions) then it SHALL return an error." `:in` and
/// `:not-in` need that expansion; search.html says nothing of a value set
/// that cannot be expanded, so refusing the search is this store's reading.
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
  });

  tearDown(() => db.close());

  Future<void> save(Map<String, dynamic> json) =>
      dao.saveResource(fhir.Resource.fromJson(json));

  Future<void> observation(String id, String system, String code) => save({
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': system, 'code': code},
          ],
        },
      });

  Future<void> valueSet(Map<String, dynamic> compose) => save({
        'resourceType': 'ValueSet',
        'id': 'vs',
        'url': 'http://example.org/vs',
        'status': 'active',
        'compose': compose,
      });

  Future<void> codeSystem({
    String content = 'complete',
    String? version,
    List<String> codes = const ['a', 'b'],
  }) =>
      save({
        'resourceType': 'CodeSystem',
        'id': 'cs${version ?? ''}',
        'url': 'http://example.org/cs',
        if (version != null) 'version': version,
        'status': 'active',
        'content': content,
        'concept': [
          for (final c in codes) {'code': c},
        ],
      });

  Future<List<String>> ids(String modifier) async => (await dao.search(
        resourceType: fhir.R4ResourceType.Observation,
        searchParameters: {
          'code:$modifier': ['http://example.org/vs'],
        },
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  const wholeSystem = {
    'include': [
      {'system': 'http://example.org/cs'},
    ],
  };

  for (final modifier in ['in', 'not-in']) {
    test(':$modifier refuses a ValueSet the store does not hold', () async {
      await observation('o1', 'http://example.org/cs', 'a');
      expect(ids(modifier), throwsA(isA<ValueSetNotHeld>()));
    });

    test(':$modifier refuses an include of a CodeSystem it does not hold',
        () async {
      await valueSet(wholeSystem);
      await observation('o1', 'http://example.org/cs', 'a');
      expect(ids(modifier), throwsA(isA<CodeSystemNotEvaluable>()));
    });

    for (final content in ['not-present', 'example', 'fragment']) {
      test(':$modifier refuses an include of a CodeSystem held as $content',
          () async {
        await codeSystem(content: content);
        await valueSet(wholeSystem);
        await observation('o1', 'http://example.org/cs', 'a');
        expect(ids(modifier), throwsA(isA<CodeSystemNotEvaluable>()));
      });
    }

    test(':$modifier refuses an include of a version it does not hold',
        () async {
      await codeSystem(version: '1');
      await valueSet({
        'include': [
          {'system': 'http://example.org/cs', 'version': '2'},
        ],
      });
      await observation('o1', 'http://example.org/cs', 'a');
      expect(ids(modifier), throwsA(isA<CodeSystemNotEvaluable>()));
    });
  }

  test('every refusal is a ValueSetRefusal with a message and an issue code',
      () async {
    await valueSet(wholeSystem);
    try {
      await ids('in');
      fail('not refused');
    } on ValueSetRefusal catch (e) {
      expect(e.message, contains('http://example.org/cs'));
      expect(e.issueCode, 'not-found');
    }
  });

  test('a complete CodeSystem it holds is expanded, of the version asked for',
      () async {
    await codeSystem(version: '1', codes: ['a']);
    await codeSystem(version: '2', codes: ['a', 'b']);
    await valueSet({
      'include': [
        {'system': 'http://example.org/cs', 'version': '1'},
      ],
    });
    await observation('o1', 'http://example.org/cs', 'a');
    await observation('o2', 'http://example.org/cs', 'b');
    expect(await ids('in'), ['o1']);
    expect(await ids('not-in'), ['o2']);
  });

  test('an enumerated include needs no CodeSystem: the list is the answer',
      () async {
    await valueSet({
      'include': [
        {
          'system': 'http://loinc.org',
          'concept': [
            {'code': '8867-4', 'display': 'Heart rate'},
          ],
        },
      ],
    });
    await observation('o1', 'http://loinc.org', '8867-4');
    await observation('o2', 'http://loinc.org', '8480-6');
    expect(await ids('in'), ['o1']);
    expect(await ids('not-in'), ['o2']);
  });

  test('expandValueSet gives system, code and display, excludes applied',
      () async {
    await save({
      'resourceType': 'CodeSystem',
      'id': 'cs',
      'url': 'http://example.org/cs',
      'status': 'active',
      'content': 'complete',
      'concept': [
        {
          'code': 'a',
          'display': 'A',
          'concept': [
            {'code': 'a1', 'display': 'A one'},
          ],
        },
        {'code': 'b', 'display': 'B'},
      ],
    });
    await valueSet({
      'include': [
        {'system': 'http://example.org/cs'},
      ],
      'exclude': [
        {
          'system': 'http://example.org/cs',
          'concept': [
            {'code': 'a'},
          ],
        },
      ],
    });
    final expansion = await dao.expandValueSetByUrl('http://example.org/vs');
    expect(
      expansion.map((c) => '${c.system}|${c.code}|${c.display}'),
      [
        'http://example.org/cs|a1|A one',
        'http://example.org/cs|b|B',
      ],
    );
  });
}
