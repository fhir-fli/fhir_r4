// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for high level media categories.
@collection
class MediaType {
  /// Constructor for internal use (like enum)
  MediaType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MediaType values
  /// image
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaType image = MediaType(
    fhirCode: 'image',
  );

  /// video
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaType video = MediaType(
    fhirCode: 'video',
  );

  /// audio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaType audio = MediaType(
    fhirCode: 'audio',
  );

  /// For instances where an Element is present but not value

  static final MediaType elementOnly = MediaType();

  /// List of all enum-like values
  static final List<MediaType> values = [
    image,
    video,
    audio,
  ];

  /// Returns the enum value with an element attached
  MediaType withElement(Element? newElement) {
    return MediaType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MediaType] from JSON.
  static MediaType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MediaType.$fhirCode';
}
