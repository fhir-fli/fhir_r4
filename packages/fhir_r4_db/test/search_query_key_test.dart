import 'package:fhir_r4_db/src/search/search_parameter_types.dart';
import 'package:fhir_r4_db/src/search/search_query_key.dart';
import 'package:test/test.dart';

/// The key is cut at the first `.` or `:`, whichever comes first, and the rest
/// is carried whole. Every example below is one the specification writes out.
void main() {
  group('splitting the key', () {
    test('a plain parameter has no qualifier', () {
      final key = SearchQueryKey.parse('family');
      expect(key.name, equals('family'));
      expect(key.qualifier, isNull);
      expect(key.modifier, isNull);
      expect(key.chain, isNull);
    });

    test('a modifier', () {
      final key = SearchQueryKey.parse('family:exact');
      expect(key.name, equals('family'));
      expect(key.qualifier, equals(':exact'));
      expect(key.modifier, equals('exact'));
      expect(key.chain, isNull);
    });

    test('a chain with no type constraint', () {
      // search.html: DiagnosticReport?subject.name=peter
      final key = SearchQueryKey.parse('subject.name');
      expect(key.name, equals('subject'));
      expect(key.qualifier, equals('.name'));
      expect(key.modifier, isNull, reason: 'a bare chain carries no modifier');
      expect(key.chain, equals('name'));
    });

    test('a type-constrained chain carries both', () {
      // search.html: DiagnosticReport?subject:Patient.name=peter
      final key = SearchQueryKey.parse('subject:Patient.name');
      expect(key.name, equals('subject'));
      expect(key.qualifier, equals(':Patient.name'));
      expect(key.modifier, equals('Patient'));
      expect(key.chain, equals('name'));
    });

    test('a deeper chain keeps everything after the first dot', () {
      final key = SearchQueryKey.parse('subject:Patient.organization.name');
      expect(key.name, equals('subject'));
      expect(key.chain, equals('organization.name'));
      expect(key.modifier, equals('Patient'));
    });

    test('_has is cut at its first colon like anything else', () {
      // Its own parser takes it from here: every colon in it is structural.
      final key = SearchQueryKey.parse('_has:Observation:patient:code');
      expect(key.name, equals('_has'));
      expect(key.qualifier, equals(':Observation:patient:code'));
    });
  });

  group('the declared type decides what a value means', () {
    test('a string parameter is a string with no comparators', () {
      final definition = searchParameterFor('Patient', 'family');
      expect(definition?.type, equals('string'));
      expect(definition?.comparators, isEmpty);
    });

    test('a date parameter declares all nine comparators', () {
      final definition = searchParameterFor('Patient', 'birthdate');
      expect(definition?.type, equals('date'));
      expect(
        definition?.comparators,
        equals(['eq', 'ne', 'gt', 'ge', 'lt', 'le', 'sa', 'eb', 'ap']),
      );
    });

    test('one definition serves every resource in its base', () {
      // individual-birthdate has base [Patient, Person, RelatedPerson].
      for (final type in ['Patient', 'Person', 'RelatedPerson']) {
        expect(
          searchParameterFor(type, 'birthdate')?.type,
          equals('date'),
          reason: type,
        );
      }
    });

    test('an unknown parameter has no definition', () {
      expect(searchParameterFor('Patient', 'not-a-parameter'), isNull);
      expect(searchParameterFor('NotAResource', 'family'), isNull);
    });
  });

  group('comparators are only looked for where they are declared', () {
    test('a date value gives up its comparator', () {
      final definition = searchParameterFor('Patient', 'birthdate')!;
      expect(
        splitComparator(definition, 'gt1980-01-01'),
        equals(('gt', '1980-01-01')),
      );
      expect(
        splitComparator(definition, '1980-01-01'),
        equals((null, '1980-01-01')),
      );
    });

    test('a name beginning with a comparator is left alone', () {
      // This is why the type has to decide and the value cannot. Apgar starts
      // with ap, Nelson with ne, Ledger with le, Sample with sa, Equator with
      // eq, and none of them is a comparator.
      final definition = searchParameterFor('Patient', 'family')!;
      for (final name in [
        'Apgar',
        'Nelson',
        'Ledger',
        'Sample',
        'Equator',
        'Grey',
      ]) {
        expect(splitComparator(definition, name), equals((null, name)));
      }
    });
  });

  group('the comparators come from the parameter, not from a copied list', () {
    test('a narrowed declaration is honoured', () {
      // The commit that generated `comparator` claimed it was read "so a
      // custom parameter that narrows the set stays correct", while the date,
      // quantity and number handlers still used their own hardcoded list of
      // nine. The claim was false until they were changed to take the
      // definition. This is the test that would have caught it.
      const narrowed = SearchParameterDefinition('date', ['ge', 'le']);
      expect(
        splitComparator(narrowed, 'ge1980-01-01'),
        equals(('ge', '1980-01-01')),
      );
      expect(
        splitComparator(narrowed, 'gt1980-01-01'),
        equals((null, 'gt1980-01-01')),
        reason: 'gt is not declared on this parameter',
      );
    });

    test('a declaration with none strips nothing', () {
      const none = SearchParameterDefinition('string', []);
      expect(
        splitComparator(none, 'gt1980-01-01'),
        equals((null, 'gt1980-01-01')),
      );
    });
  });

  group('modifiers are checked against the type', () {
    test('string takes exact and contains, token does not', () {
      expect(isModifierAllowed('string', 'exact'), isTrue);
      expect(isModifierAllowed('string', 'contains'), isTrue);
      expect(isModifierAllowed('token', 'exact'), isFalse);
      expect(isModifierAllowed('token', 'contains'), isFalse);
    });

    test('token takes its own set', () {
      for (final modifier in [
        'text',
        'not',
        'above',
        'below',
        'in',
        'not-in',
        'of-type',
      ]) {
        expect(isModifierAllowed('token', modifier), isTrue, reason: modifier);
      }
    });

    test('missing applies to every type except composite', () {
      for (final type in [
        'string',
        'token',
        'reference',
        'uri',
        'date',
        'number',
        'quantity',
        'special',
      ]) {
        expect(isModifierAllowed(type, 'missing'), isTrue, reason: type);
      }
      expect(isModifierAllowed('composite', 'missing'), isFalse);
    });

    test('a reference takes any resource type as its modifier', () {
      expect(isModifierAllowed('reference', 'Patient'), isTrue);
      expect(isModifierAllowed('reference', 'Organization'), isTrue);
      expect(isModifierAllowed('reference', 'identifier'), isTrue);
      expect(isModifierAllowed('reference', 'exact'), isFalse);
    });

    test('an invented modifier is allowed nowhere', () {
      for (final type in ['string', 'token', 'date', 'reference', 'uri']) {
        expect(isModifierAllowed(type, 'banana'), isFalse, reason: type);
      }
    });
  });
}
