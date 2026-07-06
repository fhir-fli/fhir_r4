import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void attachmentTest() {
  group('Attachment', () {
    test('construction with all fields', () {
      final att = Attachment(
        contentType: FhirCode('application/pdf'),
        language: CommonLanguages.en,
        data: FhirBase64Binary('SGVsbG8gV29ybGQ='),
        url: FhirUrl('http://example.org/doc.pdf'),
        size: FhirUnsignedInt(12345),
        hash: FhirBase64Binary('aGFzaA=='),
        title: FhirString('Test Document'),
        creation: FhirDateTime.fromString('2024-01-15'),
      );

      expect(att.contentType?.valueString, 'application/pdf');
      expect(att.language, CommonLanguages.en);
      expect(att.data?.valueString, 'SGVsbG8gV29ybGQ=');
      expect(att.url?.valueString, 'http://example.org/doc.pdf');
      expect(att.size?.valueString, '12345');
      expect(att.hash?.valueString, 'aGFzaA==');
      expect(att.title?.valueString, 'Test Document');
      expect(att.creation, isNotNull);
      expect(att.fhirType, 'Attachment');
    });

    test('construction with minimal fields', () {
      const att = Attachment();
      expect(att.contentType, isNull);
      expect(att.language, isNull);
      expect(att.data, isNull);
      expect(att.url, isNull);
      expect(att.size, isNull);
      expect(att.hash, isNull);
      expect(att.title, isNull);
      expect(att.creation, isNull);
    });

    test('toJson produces correct JSON', () {
      final att = Attachment(
        contentType: FhirCode('text/plain'),
        url: FhirUrl('http://example.org/doc.txt'),
        title: FhirString('My Document'),
      );
      final json = att.toJson();
      expect(json['contentType'], 'text/plain');
      expect(json['url'], 'http://example.org/doc.txt');
      expect(json['title'], 'My Document');
      expect(json.containsKey('data'), isFalse);
      expect(json.containsKey('size'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = Attachment(
        contentType: FhirCode('image/png'),
        url: FhirUrl('http://example.org/image.png'),
        size: FhirUnsignedInt(5000),
        title: FhirString('X-Ray Image'),
      );
      final json = original.toJson();
      final restored = Attachment.fromJson(json);
      expect(
        restored.contentType?.valueString,
        original.contentType?.valueString,
      );
      expect(restored.url?.valueString, original.url?.valueString);
      expect(restored.size?.valueString, original.size?.valueString);
      expect(restored.title?.valueString, original.title?.valueString);
    });

    test('fromJsonString works', () {
      const json = '{"contentType":"text/plain","title":"Test"}';
      final att = Attachment.fromJsonString(json);
      expect(att.contentType?.valueString, 'text/plain');
      expect(att.title?.valueString, 'Test');
    });

    test('copyWith creates modified copy', () {
      final original = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Original'),
      );
      final modified = original.copyWith(
        title: FhirString('Modified'),
      );
      expect(modified.title?.valueString, 'Modified');
      expect(modified.contentType?.valueString, 'text/plain');
    });

    test('copyWith with no args returns equal object', () {
      final original = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Test'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Test'),
      );
      final b = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Test'),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Attachment(title: FhirString('A'));
      final b = Attachment(title: FhirString('B'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final att = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Test'),
      );
      expect(att.getChildByName('contentType'), isA<FhirCode>());
      expect(att.getChildByName('title'), isA<FhirString>());
      expect(att.getChildByName('data'), isNull);
    });

    test('clone creates deep copy', () {
      final att = Attachment(
        contentType: FhirCode('text/plain'),
        title: FhirString('Test'),
      );
      final cloned = att.clone();
      expect(cloned.equalsDeep(att), isTrue);
    });

    test('base64 encoded data round-trips', () {
      final att = Attachment(
        contentType: FhirCode('text/plain'),
        data: FhirBase64Binary('SGVsbG8gV29ybGQ='),
      );
      final json = att.toJson();
      final restored = Attachment.fromJson(json);
      expect(restored.data?.valueString, 'SGVsbG8gV29ybGQ=');
    });
  });
}
