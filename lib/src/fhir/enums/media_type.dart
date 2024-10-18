// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MediaType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MediaType] instances.
  static MediaType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaType.elementOnly.withElement(element);
    }
    return MediaType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MediaType withElement(Element? newElement) {
    return MediaType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
