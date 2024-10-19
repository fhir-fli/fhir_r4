// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
@Entity()
class ImmunizationStatusReasonCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationStatusReasonCodes] from JSON.
  factory ImmunizationStatusReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationStatusReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationStatusReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// IMMUNE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationStatusReasonCodes.IMMUNE([this.element])
      : dbValue = 'IMMUNE',
        super('IMMUNE', element);

  /// MEDPREC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationStatusReasonCodes.MEDPREC([this.element])
      : dbValue = 'MEDPREC',
        super('MEDPREC', element);

  /// OSTOCK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationStatusReasonCodes.OSTOCK([this.element])
      : dbValue = 'OSTOCK',
        super('OSTOCK', element);

  /// PATOBJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationStatusReasonCodes.PATOBJ([this.element])
      : dbValue = 'PATOBJ',
        super('PATOBJ', element);

  /// For instances where an Element is present but not value

  ImmunizationStatusReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationStatusReasonCodes._(super.input, [super.element])
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
    'IMMUNE',
    'MEDPREC',
    'OSTOCK',
    'PATOBJ',
  ];

  /// Returns the enum value with an element attached
  ImmunizationStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationStatusReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationStatusReasonCodes.$value';
}
