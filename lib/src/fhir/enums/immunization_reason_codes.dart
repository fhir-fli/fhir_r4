// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was administered. This value set is provided as a suggestive example.
@Entity()
class ImmunizationReasonCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationReasonCodes] from JSON.
  factory ImmunizationReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value429060002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationReasonCodes.value429060002([this.element])
      : dbValue = '429060002',
        super('429060002', element);

  /// value281657000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationReasonCodes.value281657000([this.element])
      : dbValue = '281657000',
        super('281657000', element);

  /// For instances where an Element is present but not value

  ImmunizationReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationReasonCodes._(super.input, [super.element])
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
    '429060002',
    '281657000',
  ];

  /// Returns the enum value with an element attached
  ImmunizationReasonCodes withElement(Element? newElement) {
    return ImmunizationReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationReasonCodes.$value';
}
