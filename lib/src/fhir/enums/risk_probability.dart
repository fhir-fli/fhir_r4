// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes representing the likelihood of a particular outcome in a risk assessment.
@Entity()
class RiskProbability extends FhirCode {
  /// Factory constructor to create [RiskProbability] from JSON.
  factory RiskProbability.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RiskProbability.elementOnly(element);
    }
    if (values.contains(value)) {
      return RiskProbability._(value, element);
    }
    throw ArgumentError(
      'RiskProbability.fromJson: JSON value is not a valid value',
    );
  }

  /// negligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RiskProbability.negligible([this.element])
      : dbValue = 'negligible',
        super('negligible', element);

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RiskProbability.low([this.element])
      : dbValue = 'low',
        super('low', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RiskProbability.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RiskProbability.high([this.element])
      : dbValue = 'high',
        super('high', element);

  /// certain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RiskProbability.certain([this.element])
      : dbValue = 'certain',
        super('certain', element);

  /// For instances where an Element is present but not value

  RiskProbability.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RiskProbability._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'negligible',
    'low',
    'moderate',
    'high',
    'certain',
  ];

  /// Returns the enum value with an element attached
  RiskProbability withElement(Element? newElement) {
    return RiskProbability._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RiskProbability.$value';
}
