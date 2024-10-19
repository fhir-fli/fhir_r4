// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates whether the location is still in use.
@collection
class LocationStatus {
  /// Constructor for internal use (like enum)
  LocationStatus({this.fhirCode, this.element})
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

  /// LocationStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationStatus active = LocationStatus(
    fhirCode: 'active',
  );

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationStatus suspended = LocationStatus(
    fhirCode: 'suspended',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationStatus inactive = LocationStatus(
    fhirCode: 'inactive',
  );

  /// For instances where an Element is present but not value

  static final LocationStatus elementOnly = LocationStatus();

  /// List of all enum-like values
  static final List<LocationStatus> values = [
    active,
    suspended,
    inactive,
  ];

  /// Returns the enum value with an element attached
  LocationStatus withElement(Element? newElement) {
    return LocationStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LocationStatus] from JSON.
  static LocationStatus fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LocationStatus.$fhirCode';
}
