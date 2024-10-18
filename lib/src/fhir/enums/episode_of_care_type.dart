// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
enum EpisodeOfCareType {
  /// Display: Home and Community Care
  /// Definition:
  hacc('hacc'),

  /// Display: Post Acute Care
  /// Definition:
  pac('pac'),

  /// Display: Post coordinated diabetes program
  /// Definition:
  diab('diab'),

  /// Display: Drug and alcohol rehabilitation
  /// Definition:
  da('da'),

  /// Display: Community-based aged care
  /// Definition:
  cacp('cacp'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EpisodeOfCareType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EpisodeOfCareType] instances.
  static EpisodeOfCareType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly.withElement(element);
    }
    return EpisodeOfCareType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
