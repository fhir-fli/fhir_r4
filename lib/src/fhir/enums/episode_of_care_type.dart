// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
class EpisodeOfCareType {
  // Private constructor for internal use (like enum)
  EpisodeOfCareType._(this.fhirCode, {this.element});

  /// Factory constructor to create [EpisodeOfCareType] from JSON.
  factory EpisodeOfCareType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly.withElement(element);
    }
    return EpisodeOfCareType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EpisodeOfCareType values
  /// hacc
  static final EpisodeOfCareType hacc = EpisodeOfCareType._(
    'hacc',
  );

  /// pac
  static final EpisodeOfCareType pac = EpisodeOfCareType._(
    'pac',
  );

  /// diab
  static final EpisodeOfCareType diab = EpisodeOfCareType._(
    'diab',
  );

  /// da
  static final EpisodeOfCareType da = EpisodeOfCareType._(
    'da',
  );

  /// cacp
  static final EpisodeOfCareType cacp = EpisodeOfCareType._(
    'cacp',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareType elementOnly = EpisodeOfCareType._('');

  /// List of all enum-like values
  static final List<EpisodeOfCareType> values = [
    hacc,
    pac,
    diab,
    da,
    cacp,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
