import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void narrativeTest() {
  group('Narrative', () {
    test('construction with all fields', () {
      final narrative = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml('<div xmlns="http://www.w3.org/1999/xhtml">Test</div>'),
      );

      expect(narrative.status, NarrativeStatus.generated);
      expect(
        narrative.div.valueString,
        '<div xmlns="http://www.w3.org/1999/xhtml">Test</div>',
      );
      expect(narrative.fhirType, 'Narrative');
    });

    test('different narrative statuses', () {
      final generated = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml('<div xmlns="http://www.w3.org/1999/xhtml">Gen</div>'),
      );
      final extensions = Narrative(
        status: NarrativeStatus.extensions,
        div: FhirXhtml('<div xmlns="http://www.w3.org/1999/xhtml">Ext</div>'),
      );
      final additional = Narrative(
        status: NarrativeStatus.additional,
        div: FhirXhtml('<div xmlns="http://www.w3.org/1999/xhtml">Add</div>'),
      );
      final empty = Narrative(
        status: NarrativeStatus.empty_,
        div: FhirXhtml('<div xmlns="http://www.w3.org/1999/xhtml"></div>'),
      );

      expect(generated.status, NarrativeStatus.generated);
      expect(extensions.status, NarrativeStatus.extensions);
      expect(additional.status, NarrativeStatus.additional);
      expect(empty.status, NarrativeStatus.empty_);
    });

    test('toJson produces correct JSON', () {
      final narrative = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Hello</div>',
        ),
      );
      final json = narrative.toJson();
      expect(json['status'], 'generated');
      expect(
        json['div'],
        '<div xmlns="http://www.w3.org/1999/xhtml">Hello</div>',
      );
    });

    test('fromJson round-trips correctly', () {
      final original = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml"><p>Patient info</p></div>',
        ),
      );
      final json = original.toJson();
      final restored = Narrative.fromJson(json);
      expect(restored.status.valueString, original.status.valueString);
      expect(restored.div.valueString, original.div.valueString);
    });

    test('fromJsonString works', () {
      const json =
          r'{"status":"generated","div":"<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"}';
      final narrative = Narrative.fromJsonString(json);
      expect(narrative.status, NarrativeStatus.generated);
      expect(narrative.div.valueString, contains('Test'));
    });

    test('copyWith creates modified copy', () {
      final original = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Original</div>',
        ),
      );
      final modified = original.copyWith(
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Modified</div>',
        ),
      );
      expect(modified.div.valueString, contains('Modified'));
      expect(modified.status, NarrativeStatus.generated);
    });

    test('copyWith with no args returns equal object', () {
      final original = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Test</div>',
        ),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Same</div>',
        ),
      );
      final b = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Same</div>',
        ),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">A</div>',
        ),
      );
      final b = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">B</div>',
        ),
      );
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final narrative = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Test</div>',
        ),
      );
      expect(narrative.getChildByName('status'), isA<NarrativeStatus>());
      expect(narrative.getChildByName('div'), isA<FhirXhtml>());
    });

    test('clone creates deep copy', () {
      final narrative = Narrative(
        status: NarrativeStatus.generated,
        div: FhirXhtml(
          '<div xmlns="http://www.w3.org/1999/xhtml">Test</div>',
        ),
      );
      final cloned = narrative.clone();
      expect(cloned.equalsDeep(narrative), isTrue);
    });
  });
}
