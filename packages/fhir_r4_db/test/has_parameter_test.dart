import 'package:fhir_r4_db/fhir_r4_db.dart' show HasParameter;
import 'package:test/test.dart';

void main() {
  group('HasParameter.parse:', () {
    test('parses simple _has parameter', () {
      final result =
          HasParameter.parse('_has:Observation:patient:code', '1234');

      expect(result, isNotNull);
      expect(result!.targetType, 'Observation');
      expect(result.referenceParam, 'patient');
      expect(result.searchParam, 'code');
      expect(result.value, '1234');
      expect(result.nested, isNull);
    });

    test('parses nested _has parameter', () {
      final result = HasParameter.parse(
        '_has:Observation:subject:_has:DiagnosticReport:result:code',
        'abc',
      );

      expect(result, isNotNull);
      expect(result!.targetType, 'Observation');
      expect(result.referenceParam, 'subject');
      expect(result.nested, isNotNull);
      expect(result.nested!.targetType, 'DiagnosticReport');
      expect(result.nested!.referenceParam, 'result');
      expect(result.nested!.searchParam, 'code');
      expect(result.nested!.value, 'abc');
    });

    test('returns null for non-_has key', () {
      expect(HasParameter.parse('name', 'Smith'), isNull);
    });

    test('returns null for _has with too few parts', () {
      expect(HasParameter.parse('_has:Observation:patient', 'val'), isNull);
    });

    test('returns null for _has with too many parts', () {
      expect(
        HasParameter.parse('_has:Obs:patient:code:extra', 'val'),
        isNull,
      );
    });

    test('returns null for _has with empty target type', () {
      expect(HasParameter.parse('_has::patient:code', 'val'), isNull);
    });

    test('returns null for _has with empty reference param', () {
      expect(HasParameter.parse('_has:Observation::code', 'val'), isNull);
    });

    test('returns null for _has with empty search param', () {
      expect(HasParameter.parse('_has:Observation:patient:', 'val'), isNull);
    });

    test('toString includes all fields', () {
      final param = HasParameter(
        targetType: 'Observation',
        referenceParam: 'patient',
        searchParam: 'code',
        value: '1234',
      );

      final str = param.toString();
      expect(str, contains('Observation'));
      expect(str, contains('patient'));
      expect(str, contains('code'));
      expect(str, contains('1234'));
    });

    test('toString includes nested when present', () {
      final param = HasParameter(
        targetType: 'Observation',
        referenceParam: 'subject',
        searchParam: '',
        value: '',
        nested: HasParameter(
          targetType: 'DiagnosticReport',
          referenceParam: 'result',
          searchParam: 'code',
          value: 'abc',
        ),
      );

      expect(param.toString(), contains('nested'));
    });

    test('returns null for nested _has with invalid inner', () {
      // The inner part after _has: is missing enough colons
      expect(
        HasParameter.parse(
          '_has:Observation:subject:_has:DiagnosticReport:result',
          'val',
        ),
        isNull,
      );
    });
  });
}
