// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is provided as a suggestive example.
@Entity()
class ImmunizationProgramEligibility extends FhirCode {
  /// Factory constructor to create [ImmunizationProgramEligibility] from JSON.
  factory ImmunizationProgramEligibility.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationProgramEligibility.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationProgramEligibility._(value, element);
    }
    throw ArgumentError(
      'ImmunizationProgramEligibility.fromJson: JSON value is not a valid value',
    );
  }

  /// ineligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationProgramEligibility.ineligible([this.element])
      : dbValue = 'ineligible',
        super('ineligible', element);

  /// uninsured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationProgramEligibility.uninsured([this.element])
      : dbValue = 'uninsured',
        super('uninsured', element);

  /// For instances where an Element is present but not value

  ImmunizationProgramEligibility.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationProgramEligibility._(super.input, [super.element])
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
    'ineligible',
    'uninsured',
  ];

  /// Returns the enum value with an element attached
  ImmunizationProgramEligibility withElement(Element? newElement) {
    return ImmunizationProgramEligibility._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationProgramEligibility.$value';
}
