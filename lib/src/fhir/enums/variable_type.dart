// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
class VariableType {
  // Private constructor for internal use (like enum)
  VariableType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// VariableType values
  /// dichotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VariableType dichotomous = VariableType._(
    'dichotomous',
  );

  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VariableType continuous = VariableType._(
    'continuous',
  );

  /// descriptive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VariableType descriptive = VariableType._(
    'descriptive',
  );

  /// For instances where an Element is present but not value

  static final VariableType elementOnly = VariableType._('');

  /// List of all enum-like values
  static final List<VariableType> values = [
    dichotomous,
    continuous,
    descriptive,
  ];

  /// Returns the enum value with an element attached
  VariableType withElement(Element? newElement) {
    return VariableType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [VariableType] from JSON.
  static VariableType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableType.elementOnly.withElement(element);
    }
    return VariableType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
