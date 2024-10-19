// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
@Entity()
class VariableType extends FhirCode {
  /// Factory constructor to create [VariableType] from JSON.
  factory VariableType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableType.elementOnly(element);
    }
    if (values.contains(value)) {
      return VariableType._(value, element);
    }
    throw ArgumentError(
      'VariableType.fromJson: JSON value is not a valid value',
    );
  }

  /// dichotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VariableType.dichotomous([this.element])
      : dbValue = 'dichotomous',
        super('dichotomous', element);

  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VariableType.continuous([this.element])
      : dbValue = 'continuous',
        super('continuous', element);

  /// descriptive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  VariableType.descriptive([this.element])
      : dbValue = 'descriptive',
        super('descriptive', element);

  /// For instances where an Element is present but not value

  VariableType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  VariableType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'dichotomous',
    'continuous',
    'descriptive',
  ];

  /// Returns the enum value with an element attached
  VariableType withElement(Element? newElement) {
    return VariableType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'VariableType.$value';
}
