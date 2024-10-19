// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes representing the likelihood of a particular outcome in a risk assessment.
class RiskProbability {
  // Private constructor for internal use (like enum)
  RiskProbability._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RiskProbability values
  /// negligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RiskProbability negligible = RiskProbability._(
    'negligible',
  );

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RiskProbability low = RiskProbability._(
    'low',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RiskProbability moderate = RiskProbability._(
    'moderate',
  );

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RiskProbability high = RiskProbability._(
    'high',
  );

  /// certain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RiskProbability certain = RiskProbability._(
    'certain',
  );

  /// For instances where an Element is present but not value

  static final RiskProbability elementOnly = RiskProbability._('');

  /// List of all enum-like values
  static final List<RiskProbability> values = [
    negligible,
    low,
    moderate,
    high,
    certain,
  ];

  /// Returns the enum value with an element attached
  RiskProbability withElement(Element? newElement) {
    return RiskProbability._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RiskProbability] from JSON.
  static RiskProbability fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RiskProbability.elementOnly.withElement(element);
    }
    return RiskProbability.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RiskProbability.$fhirCode';
}
