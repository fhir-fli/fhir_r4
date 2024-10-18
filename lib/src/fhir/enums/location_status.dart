// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the location is still in use.
enum LocationStatus {
  /// Display: Active
  /// Definition: The location is operational.
  active('active'),

  /// Display: Suspended
  /// Definition: The location is temporarily closed.
  suspended('suspended'),

  /// Display: Inactive
  /// Definition: The location is no longer used.
  inactive('inactive'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LocationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LocationStatus] instances.
  static LocationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus.elementOnly.withElement(element);
    }
    return LocationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  LocationStatus withElement(Element? newElement) {
    return LocationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
