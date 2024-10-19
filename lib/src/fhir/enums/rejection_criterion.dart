// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Criterion for rejection of the specimen by laboratory.
@collection
class RejectionCriterion {
  /// Constructor for internal use (like enum)
  RejectionCriterion({this.fhirCode, this.element})
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

  /// RejectionCriterion values
  /// hemolized
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RejectionCriterion hemolized = RejectionCriterion(
    fhirCode: 'hemolized',
  );

  /// insufficient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RejectionCriterion insufficient = RejectionCriterion(
    fhirCode: 'insufficient',
  );

  /// broken
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RejectionCriterion broken = RejectionCriterion(
    fhirCode: 'broken',
  );

  /// clotted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RejectionCriterion clotted = RejectionCriterion(
    fhirCode: 'clotted',
  );

  /// wrong_temperature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RejectionCriterion wrong_temperature = RejectionCriterion(
    fhirCode: 'wrong-temperature',
  );

  /// For instances where an Element is present but not value

  static final RejectionCriterion elementOnly = RejectionCriterion();

  /// List of all enum-like values
  static final List<RejectionCriterion> values = [
    hemolized,
    insufficient,
    broken,
    clotted,
    wrong_temperature,
  ];

  /// Returns the enum value with an element attached
  RejectionCriterion withElement(Element? newElement) {
    return RejectionCriterion(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RejectionCriterion] from JSON.
  static RejectionCriterion fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RejectionCriterion.elementOnly.withElement(element);
    }
    return RejectionCriterion.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RejectionCriterion.$fhirCode';
}
