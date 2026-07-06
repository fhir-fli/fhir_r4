import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void metaTest() {
  group('FhirMeta', () {
    test('construction with all fields', () {
      final meta = FhirMeta(
        versionId: FhirId('1'),
        lastUpdated: FhirInstant.fromString('2024-01-15T10:30:00.000Z'),
        source: FhirUri('http://example.org/fhir'),
        profile: [
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
        ],
        security: [
          Coding(
            system: FhirUri(
              'http://terminology.hl7.org/CodeSystem/v3-Confidentiality',
            ),
            code: FhirCode('R'),
            display: FhirString('Restricted'),
          ),
        ],
        tag: [
          Coding(
            system: FhirUri('http://example.org/tags'),
            code: FhirCode('reviewed'),
          ),
        ],
      );

      expect(meta.versionId?.valueString, '1');
      expect(meta.lastUpdated, isNotNull);
      expect(meta.source?.valueString, 'http://example.org/fhir');
      expect(meta.profile?.length, 1);
      expect(meta.security?.length, 1);
      expect(meta.security?[0].code?.valueString, 'R');
      expect(meta.tag?.length, 1);
      expect(meta.tag?[0].code?.valueString, 'reviewed');
      expect(meta.fhirType, 'Meta');
    });

    test('construction with minimal fields', () {
      const meta = FhirMeta();
      expect(meta.versionId, isNull);
      expect(meta.lastUpdated, isNull);
      expect(meta.source, isNull);
      expect(meta.profile, isNull);
      expect(meta.security, isNull);
      expect(meta.tag, isNull);
    });

    test('toJson produces correct JSON', () {
      final meta = FhirMeta(
        versionId: FhirId('2'),
        source: FhirUri('http://example.org'),
        profile: [
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
        ],
      );
      final json = meta.toJson();
      expect(json['versionId'], '2');
      expect(json['source'], 'http://example.org');
      expect(json['profile'], isA<List>());
      expect((json['profile'] as List).length, 1);
    });

    test('toJson with security and tag', () {
      final meta = FhirMeta(
        security: [Coding(code: FhirCode('R'))],
        tag: [Coding(code: FhirCode('test'))],
      );
      final json = meta.toJson();
      expect(json['security'], isA<List>());
      expect(json['tag'], isA<List>());
    });

    test('fromJson round-trips correctly', () {
      final original = FhirMeta(
        versionId: FhirId('3'),
        source: FhirUri('http://example.org'),
        profile: [
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
        ],
        tag: [
          Coding(
            system: FhirUri('http://example.org'),
            code: FhirCode('test'),
          ),
        ],
      );
      final json = original.toJson();
      final restored = FhirMeta.fromJson(json);
      expect(restored.versionId?.valueString, '3');
      expect(restored.source?.valueString, 'http://example.org');
      expect(restored.profile?.length, 1);
      expect(restored.tag?.length, 1);
      expect(restored.tag?[0].code?.valueString, 'test');
    });

    test('fromJsonString works', () {
      const json = '{"versionId":"1","source":"http://example.org"}';
      final meta = FhirMeta.fromJsonString(json);
      expect(meta.versionId?.valueString, '1');
      expect(meta.source?.valueString, 'http://example.org');
    });

    test('copyWith creates modified copy', () {
      final original = FhirMeta(
        versionId: FhirId('1'),
        source: FhirUri('http://example.org'),
      );
      final modified = original.copyWith(
        versionId: FhirId('2'),
      );
      expect(modified.versionId?.valueString, '2');
      expect(modified.source?.valueString, 'http://example.org');
    });

    test('copyWith with no args returns equal object', () {
      final original = FhirMeta(
        versionId: FhirId('1'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = FhirMeta(versionId: FhirId('1'));
      final b = FhirMeta(versionId: FhirId('1'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = FhirMeta(versionId: FhirId('1'));
      final b = FhirMeta(versionId: FhirId('2'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final meta = FhirMeta(
        versionId: FhirId('1'),
        source: FhirUri('http://example.org'),
      );
      expect(meta.getChildByName('versionId'), isA<FhirId>());
      expect(meta.getChildByName('source'), isA<FhirUri>());
      expect(meta.getChildByName('lastUpdated'), isNull);
    });

    test('getChildrenByName returns list for tag', () {
      final meta = FhirMeta(
        tag: [
          Coding(code: FhirCode('a')),
          Coding(code: FhirCode('b')),
        ],
      );
      final children = meta.getChildrenByName('tag');
      expect(children.length, 2);
    });

    test('getChildrenByName returns list for profile', () {
      final meta = FhirMeta(
        profile: [
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/us-core-patient',
          ),
        ],
      );
      final children = meta.getChildrenByName('profile');
      expect(children.length, 2);
    });

    test('clone creates deep copy', () {
      final meta = FhirMeta(
        versionId: FhirId('1'),
        tag: [Coding(code: FhirCode('test'))],
      );
      final cloned = meta.clone();
      expect(cloned.equalsDeep(meta), isTrue);
    });

    test('multiple profiles', () {
      final meta = FhirMeta(
        profile: [
          FhirCanonical(
            'http://hl7.org/fhir/StructureDefinition/Patient',
          ),
          FhirCanonical(
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient',
          ),
        ],
      );
      expect(meta.profile?.length, 2);
    });
  });
}
