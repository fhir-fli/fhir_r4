// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Type for orientation.
@collection
class OrientationType {
  /// Constructor for internal use (like enum)
  OrientationType({this.fhirCode, this.element})
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

  /// OrientationType values
  /// sense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrientationType sense = OrientationType(
    fhirCode: 'sense',
  );

  /// antisense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OrientationType antisense = OrientationType(
    fhirCode: 'antisense',
  );

  /// For instances where an Element is present but not value

  static final OrientationType elementOnly = OrientationType();

  /// List of all enum-like values
  static final List<OrientationType> values = [
    sense,
    antisense,
  ];

  /// Returns the enum value with an element attached
  OrientationType withElement(Element? newElement) {
    return OrientationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OrientationType] from JSON.
  static OrientationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly.withElement(element);
    }
    return OrientationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OrientationType.$fhirCode';
}
