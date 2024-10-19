// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// TextureModifier: Codes for food consistency types or texture modifications to apply to foods. This value set is composed of SNOMED CT (US Extension and Core) Concepts from SCTID 229961002 Food consistency types (substance) hierarchy and is provided as a suggestive example.
@Entity()
class TextureModifierCodes extends FhirCode {
  /// Factory constructor to create [TextureModifierCodes] from JSON.
  factory TextureModifierCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifierCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return TextureModifierCodes._(value, element);
    }
    throw ArgumentError(
      'TextureModifierCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value228053002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228053002([this.element])
      : dbValue = '228053002',
        super('228053002', element);

  /// value439091000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value439091000124107([this.element])
      : dbValue = '439091000124107',
        super('439091000124107', element);

  /// value228049004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228049004([this.element])
      : dbValue = '228049004',
        super('228049004', element);

  /// value441881000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value441881000124103([this.element])
      : dbValue = '441881000124103',
        super('441881000124103', element);

  /// value441761000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value441761000124103([this.element])
      : dbValue = '441761000124103',
        super('441761000124103', element);

  /// value441751000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value441751000124100([this.element])
      : dbValue = '441751000124100',
        super('441751000124100', element);

  /// value228059003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228059003([this.element])
      : dbValue = '228059003',
        super('228059003', element);

  /// value441791000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value441791000124106([this.element])
      : dbValue = '441791000124106',
        super('441791000124106', element);

  /// value228055009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228055009([this.element])
      : dbValue = '228055009',
        super('228055009', element);

  /// value228056005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228056005([this.element])
      : dbValue = '228056005',
        super('228056005', element);

  /// value441771000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value441771000124105([this.element])
      : dbValue = '441771000124105',
        super('441771000124105', element);

  /// value228057001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228057001([this.element])
      : dbValue = '228057001',
        super('228057001', element);

  /// value228058006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228058006([this.element])
      : dbValue = '228058006',
        super('228058006', element);

  /// value228060008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifierCodes.value228060008([this.element])
      : dbValue = '228060008',
        super('228060008', element);

  /// For instances where an Element is present but not value

  TextureModifierCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TextureModifierCodes._(super.input, [super.element])
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
    '228053002',
    '439091000124107',
    '228049004',
    '441881000124103',
    '441761000124103',
    '441751000124100',
    '228059003',
    '441791000124106',
    '228055009',
    '228056005',
    '441771000124105',
    '228057001',
    '228058006',
    '228060008',
  ];

  /// Returns the enum value with an element attached
  TextureModifierCodes withElement(Element? newElement) {
    return TextureModifierCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TextureModifierCodes.$value';
}
