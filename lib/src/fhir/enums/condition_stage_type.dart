// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example value set for the type of stages of cancer and other conditions
@collection
class ConditionStageType {
  /// Constructor for internal use (like enum)
  ConditionStageType({this.fhirCode, this.element})
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

  /// ConditionStageType values
  /// value261023001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionStageType value261023001 = ConditionStageType(
    fhirCode: '261023001',
  );

  /// value260998006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionStageType value260998006 = ConditionStageType(
    fhirCode: '260998006',
  );

  /// For instances where an Element is present but not value

  static final ConditionStageType elementOnly = ConditionStageType();

  /// List of all enum-like values
  static final List<ConditionStageType> values = [
    value261023001,
    value260998006,
  ];

  /// Returns the enum value with an element attached
  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionStageType] from JSON.
  static ConditionStageType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionStageType.elementOnly.withElement(element);
    }
    return ConditionStageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionStageType.$fhirCode';
}
