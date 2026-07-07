import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void annotationTest() {
  group('Annotation', () {
    test('construction with all fields and authorString', () {
      final ann = Annotation(
        authorString: FhirString('Dr. Smith'),
        time: FhirDateTime.fromString('2024-01-15T10:30:00Z'),
        text: FhirMarkdown('Patient reports improvement.'),
      );

      expect(ann.authorString?.valueString, 'Dr. Smith');
      expect(ann.authorX, isA<FhirString>());
      expect(ann.time, isNotNull);
      expect(ann.text.valueString, 'Patient reports improvement.');
      expect(ann.fhirType, 'Annotation');
    });

    test('construction with authorReference', () {
      final ann = Annotation(
        authorReference: Reference(
          reference: FhirString('Practitioner/123'),
          display: FhirString('Dr. Smith'),
        ),
        text: FhirMarkdown('A note.'),
      );
      expect(
        ann.authorReference?.reference?.valueString,
        'Practitioner/123',
      );
      expect(ann.authorX, isA<Reference>());
    });

    test('construction with text only (required)', () {
      final ann = Annotation(text: FhirMarkdown('Simple note'));
      expect(ann.text.valueString, 'Simple note');
      expect(ann.authorX, isNull);
      expect(ann.time, isNull);
    });

    test('toJson with authorString', () {
      final ann = Annotation(
        authorString: FhirString('Dr. Smith'),
        text: FhirMarkdown('Note text'),
      );
      final json = ann.toJson();
      expect(json['authorString'], 'Dr. Smith');
      expect(json['text'], 'Note text');
      expect(json.containsKey('time'), isFalse);
    });

    test('toJson with authorReference', () {
      final ann = Annotation(
        authorReference: Reference(
          reference: FhirString('Practitioner/123'),
        ),
        text: FhirMarkdown('Note'),
      );
      final json = ann.toJson();
      expect(json['authorReference'], isA<Map<String, dynamic>>());
      expect(json['authorReference']['reference'], 'Practitioner/123');
    });

    test('fromJson round-trips with authorString', () {
      final original = Annotation(
        authorString: FhirString('Dr. Jones'),
        time: FhirDateTime.fromString('2024-06-15'),
        text: FhirMarkdown('Follow-up note'),
      );
      final json = original.toJson();
      final restored = Annotation.fromJson(json);
      expect(restored.authorString?.valueString, 'Dr. Jones');
      expect(restored.text.valueString, 'Follow-up note');
    });

    test('fromJson round-trips with authorReference', () {
      final original = Annotation(
        authorReference: Reference(
          reference: FhirString('Practitioner/456'),
        ),
        text: FhirMarkdown('Reference note'),
      );
      final json = original.toJson();
      final restored = Annotation.fromJson(json);
      expect(
        restored.authorReference?.reference?.valueString,
        'Practitioner/456',
      );
    });

    test('fromJsonString works', () {
      const json = '{"text":"A note","authorString":"Dr. Smith"}';
      final ann = Annotation.fromJsonString(json);
      expect(ann.text.valueString, 'A note');
      expect(ann.authorString?.valueString, 'Dr. Smith');
    });

    test('copyWith creates modified copy', () {
      final original = Annotation(
        authorString: FhirString('Dr. Smith'),
        text: FhirMarkdown('Original note'),
      );
      final modified = original.copyWith(
        text: FhirMarkdown('Updated note'),
      );
      expect(modified.text.valueString, 'Updated note');
      expect(modified.authorString?.valueString, 'Dr. Smith');
    });

    test('copyWith with no args returns equal object', () {
      final original = Annotation(
        text: FhirMarkdown('Test note'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Annotation(text: FhirMarkdown('Note'));
      final b = Annotation(text: FhirMarkdown('Note'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Annotation(text: FhirMarkdown('A'));
      final b = Annotation(text: FhirMarkdown('B'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns text', () {
      final ann = Annotation(text: FhirMarkdown('Note'));
      expect(ann.getChildByName('text'), isA<FhirMarkdown>());
    });

    test('getChildrenByName for authorX', () {
      final ann = Annotation(
        authorString: FhirString('Dr. Smith'),
        text: FhirMarkdown('Note'),
      );
      final children = ann.getChildrenByName('authorX');
      expect(children.length, 1);
    });

    test('clone creates deep copy', () {
      final ann = Annotation(
        authorString: FhirString('Dr. Smith'),
        text: FhirMarkdown('Note'),
      );
      final cloned = ann.clone();
      expect(cloned.equalsDeep(ann), isTrue);
    });
  });
}
