// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the location is still in use.
class LocationStatus {
  // Private constructor for internal use (like enum)
  LocationStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [LocationStatus] from JSON.
  factory LocationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus.elementOnly.withElement(element);
    }
    return LocationStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LocationStatus values
  /// active
  static final LocationStatus active = LocationStatus._(
    'active',
  );

  /// suspended
  static final LocationStatus suspended = LocationStatus._(
    'suspended',
  );

  /// inactive
  static final LocationStatus inactive = LocationStatus._(
    'inactive',
  );

  /// For instances where an Element is present but not value

  static final LocationStatus elementOnly = LocationStatus._('');

  /// List of all enum-like values
  static final List<LocationStatus> values = [
    active,
    suspended,
    inactive,
  ];

  /// Returns the enum value with an element attached
  LocationStatus withElement(Element? newElement) {
    return LocationStatus._(fhirCode, element: newElement);
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
