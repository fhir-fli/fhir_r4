// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes; HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the Social Security Administration; and other anticipated consent directives related to participation in a clinical trial, medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate (DNR); Physician Orders for Life-Sustaining Treatment (POLST)
@Entity()
class ConsentCategoryCodes extends FhirCode {
  /// Factory constructor to create [ConsentCategoryCodes] from JSON.
  factory ConsentCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'ConsentCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// acd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.acd([this.element])
      : dbValue = 'acd',
        super('acd', element);

  /// dnr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.dnr([this.element])
      : dbValue = 'dnr',
        super('dnr', element);

  /// emrgonly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.emrgonly([this.element])
      : dbValue = 'emrgonly',
        super('emrgonly', element);

  /// hcd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.hcd([this.element])
      : dbValue = 'hcd',
        super('hcd', element);

  /// npp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.npp([this.element])
      : dbValue = 'npp',
        super('npp', element);

  /// polst
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.polst([this.element])
      : dbValue = 'polst',
        super('polst', element);

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.research([this.element])
      : dbValue = 'research',
        super('research', element);

  /// rsdid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.rsdid([this.element])
      : dbValue = 'rsdid',
        super('rsdid', element);

  /// rsreid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.rsreid([this.element])
      : dbValue = 'rsreid',
        super('rsreid', element);

  /// value59284_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.value59284_0([this.element])
      : dbValue = '59284-0',
        super('59284-0', element);

  /// value57016_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.value57016_8([this.element])
      : dbValue = '57016-8',
        super('57016-8', element);

  /// value57017_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.value57017_6([this.element])
      : dbValue = '57017-6',
        super('57017-6', element);

  /// value64292_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentCategoryCodes.value64292_6([this.element])
      : dbValue = '64292-6',
        super('64292-6', element);

  /// For instances where an Element is present but not value

  ConsentCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentCategoryCodes._(super.input, [super.element])
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
    'acd',
    'dnr',
    'emrgonly',
    'hcd',
    'npp',
    'polst',
    'research',
    'rsdid',
    'rsreid',
    '59284-0',
    '57016-8',
    '57017-6',
    '64292-6',
  ];

  /// Returns the enum value with an element attached
  ConsentCategoryCodes withElement(Element? newElement) {
    return ConsentCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentCategoryCodes.$value';
}
