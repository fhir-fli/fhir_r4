// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
class LocationMode {
  // Private constructor for internal use (like enum)
  LocationMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LocationMode values
  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationMode instance = LocationMode._(
    'instance',
  );

  /// kind
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationMode kind = LocationMode._(
    'kind',
  );

  /// For instances where an Element is present but not value

  static final LocationMode elementOnly = LocationMode._('');

  /// List of all enum-like values
  static final List<LocationMode> values = [
    instance,
    kind,
  ];

  /// Returns the enum value with an element attached
  LocationMode withElement(Element? newElement) {
    return LocationMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LocationMode] from JSON.
  static LocationMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationMode.elementOnly.withElement(element);
    }
    return LocationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
