// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
@Entity()
class ImmunizationRouteCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationRouteCodes] from JSON.
  factory ImmunizationRouteCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRouteCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationRouteCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationRouteCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// IDINJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.IDINJ([this.element])
      : dbValue = 'IDINJ',
        super('IDINJ', element);

  /// IM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.IM([this.element])
      : dbValue = 'IM',
        super('IM', element);

  /// NASINHLC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.NASINHLC([this.element])
      : dbValue = 'NASINHLC',
        super('NASINHLC', element);

  /// IVINJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.IVINJ([this.element])
      : dbValue = 'IVINJ',
        super('IVINJ', element);

  /// PO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.PO([this.element])
      : dbValue = 'PO',
        super('PO', element);

  /// SQ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.SQ([this.element])
      : dbValue = 'SQ',
        super('SQ', element);

  /// TRNSDERM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRouteCodes.TRNSDERM([this.element])
      : dbValue = 'TRNSDERM',
        super('TRNSDERM', element);

  /// For instances where an Element is present but not value

  ImmunizationRouteCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationRouteCodes._(super.input, [super.element])
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
    'IDINJ',
    'IM',
    'NASINHLC',
    'IVINJ',
    'PO',
    'SQ',
    'TRNSDERM',
  ];

  /// Returns the enum value with an element attached
  ImmunizationRouteCodes withElement(Element? newElement) {
    return ImmunizationRouteCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRouteCodes.$value';
}
