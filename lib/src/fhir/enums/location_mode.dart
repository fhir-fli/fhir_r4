// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
@collection
class LocationMode {
  /// Constructor for internal use (like enum)
  LocationMode({this.fhirCode, this.element})
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

  /// LocationMode values
  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationMode instance = LocationMode(
    fhirCode: 'instance',
  );

  /// kind
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LocationMode kind = LocationMode(
    fhirCode: 'kind',
  );

  /// For instances where an Element is present but not value

  static final LocationMode elementOnly = LocationMode();

  /// List of all enum-like values
  static final List<LocationMode> values = [
    instance,
    kind,
  ];

  /// Returns the enum value with an element attached
  LocationMode withElement(Element? newElement) {
    return LocationMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LocationMode.$fhirCode';
}
