// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
@Entity()
class ImmunizationEvaluationDoseStatusCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationEvaluationDoseStatusCodes] from JSON.
  factory ImmunizationEvaluationDoseStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationEvaluationDoseStatusCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationEvaluationDoseStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// valid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusCodes.valid([this.element])
      : dbValue = 'valid',
        super('valid', element);

  /// notvalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusCodes.notvalid([this.element])
      : dbValue = 'notvalid',
        super('notvalid', element);

  /// For instances where an Element is present but not value

  ImmunizationEvaluationDoseStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusCodes._(super.input, [super.element])
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
    'valid',
    'notvalid',
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationEvaluationDoseStatusCodes.$value';
}
