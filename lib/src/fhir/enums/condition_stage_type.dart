// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for the type of stages of cancer and other conditions
class ConditionStageType {
  // Private constructor for internal use (like enum)
  ConditionStageType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionStageType values
  /// value261023001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionStageType value261023001 = ConditionStageType._(
    '261023001',
  );

  /// value260998006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionStageType value260998006 = ConditionStageType._(
    '260998006',
  );

  /// For instances where an Element is present but not value

  static final ConditionStageType elementOnly = ConditionStageType._('');

  /// List of all enum-like values
  static final List<ConditionStageType> values = [
    value261023001,
    value260998006,
  ];

  /// Returns the enum value with an element attached
  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
