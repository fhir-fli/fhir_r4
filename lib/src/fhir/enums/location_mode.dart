// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
enum LocationMode {
  /// Display: Instance
  /// Definition: The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A).
  instance('instance'),

  /// Display: Kind
  /// Definition: The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could be constrained within a specific boundary (such as organization, or parent location, address etc.).
  kind('kind'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LocationMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LocationMode] instances.
  static LocationMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationMode.elementOnly.withElement(
        element,
      );
    }
    return LocationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  LocationMode withElement(Element? newElement) {
    return LocationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
