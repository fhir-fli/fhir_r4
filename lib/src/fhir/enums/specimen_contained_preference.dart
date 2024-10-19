// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Degree of preference of a type of conditioned specimen.
@collection
class SpecimenContainedPreference {
  /// Constructor for internal use (like enum)
  SpecimenContainedPreference({this.fhirCode, this.element})
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

  /// SpecimenContainedPreference values
  /// preferred
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenContainedPreference preferred =
      SpecimenContainedPreference(
    fhirCode: 'preferred',
  );

  /// alternate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenContainedPreference alternate =
      SpecimenContainedPreference(
    fhirCode: 'alternate',
  );

  /// For instances where an Element is present but not value

  static final SpecimenContainedPreference elementOnly =
      SpecimenContainedPreference();

  /// List of all enum-like values
  static final List<SpecimenContainedPreference> values = [
    preferred,
    alternate,
  ];

  /// Returns the enum value with an element attached
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SpecimenContainedPreference] from JSON.
  static SpecimenContainedPreference fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly.withElement(element);
    }
    return SpecimenContainedPreference.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecimenContainedPreference.$fhirCode';
}
