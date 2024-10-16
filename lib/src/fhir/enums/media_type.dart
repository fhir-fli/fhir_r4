import 'package:fhir_r4/fhir_r4.dart';

/// Codes for high level media categories.
enum MediaType {
  /// Display: Image
  /// Definition: The media consists of one or more unmoving images, including photographs, computer-generated graphs and charts, and scanned documents
  image('image'),

  /// Display: Video
  /// Definition: The media consists of a series of frames that capture a moving image
  video('video'),

  /// Display: Audio
  /// Definition: The media consists of a sound recording
  audio('audio'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MediaType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MediaType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaType.elementOnly.withElement(element);
    }
    return MediaType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MediaType withElement(Element? newElement) {
    return MediaType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
