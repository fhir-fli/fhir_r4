// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// SupplementType : Codes for nutritional supplements to be provided to the patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
@Entity()
class SupplementTypeCodes extends FhirCode {
  /// Factory constructor to create [SupplementTypeCodes] from JSON.
  factory SupplementTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplementTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return SupplementTypeCodes._(value, element);
    }
    throw ArgumentError(
      'SupplementTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value442901000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442901000124106([this.element])
      : dbValue = '442901000124106',
        super('442901000124106', element);

  /// value443031000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443031000124106([this.element])
      : dbValue = '443031000124106',
        super('443031000124106', element);

  /// value443051000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443051000124104([this.element])
      : dbValue = '443051000124104',
        super('443051000124104', element);

  /// value442911000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442911000124109([this.element])
      : dbValue = '442911000124109',
        super('442911000124109', element);

  /// value443021000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443021000124108([this.element])
      : dbValue = '443021000124108',
        super('443021000124108', element);

  /// value442971000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442971000124100([this.element])
      : dbValue = '442971000124100',
        super('442971000124100', element);

  /// value442981000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442981000124102([this.element])
      : dbValue = '442981000124102',
        super('442981000124102', element);

  /// value442991000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442991000124104([this.element])
      : dbValue = '442991000124104',
        super('442991000124104', element);

  /// value443011000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443011000124100([this.element])
      : dbValue = '443011000124100',
        super('443011000124100', element);

  /// value442961000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442961000124107([this.element])
      : dbValue = '442961000124107',
        super('442961000124107', element);

  /// value442951000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442951000124105([this.element])
      : dbValue = '442951000124105',
        super('442951000124105', element);

  /// value442941000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442941000124108([this.element])
      : dbValue = '442941000124108',
        super('442941000124108', element);

  /// value442921000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442921000124101([this.element])
      : dbValue = '442921000124101',
        super('442921000124101', element);

  /// value442931000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442931000124103([this.element])
      : dbValue = '442931000124103',
        super('442931000124103', element);

  /// value444331000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444331000124106([this.element])
      : dbValue = '444331000124106',
        super('444331000124106', element);

  /// value443361000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443361000124100([this.element])
      : dbValue = '443361000124100',
        super('443361000124100', element);

  /// value443391000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443391000124108([this.element])
      : dbValue = '443391000124108',
        super('443391000124108', element);

  /// value443401000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443401000124105([this.element])
      : dbValue = '443401000124105',
        super('443401000124105', element);

  /// value443491000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443491000124103([this.element])
      : dbValue = '443491000124103',
        super('443491000124103', element);

  /// value443501000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443501000124106([this.element])
      : dbValue = '443501000124106',
        super('443501000124106', element);

  /// value443421000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443421000124100([this.element])
      : dbValue = '443421000124100',
        super('443421000124100', element);

  /// value443471000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443471000124104([this.element])
      : dbValue = '443471000124104',
        super('443471000124104', element);

  /// value444431000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444431000124104([this.element])
      : dbValue = '444431000124104',
        super('444431000124104', element);

  /// value443451000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443451000124109([this.element])
      : dbValue = '443451000124109',
        super('443451000124109', element);

  /// value444321000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444321000124108([this.element])
      : dbValue = '444321000124108',
        super('444321000124108', element);

  /// value441561000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441561000124106([this.element])
      : dbValue = '441561000124106',
        super('441561000124106', element);

  /// value443461000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443461000124106([this.element])
      : dbValue = '443461000124106',
        super('443461000124106', element);

  /// value441531000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441531000124102([this.element])
      : dbValue = '441531000124102',
        super('441531000124102', element);

  /// value443561000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443561000124107([this.element])
      : dbValue = '443561000124107',
        super('443561000124107', element);

  /// value443481000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443481000124101([this.element])
      : dbValue = '443481000124101',
        super('443481000124101', element);

  /// value441571000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441571000124104([this.element])
      : dbValue = '441571000124104',
        super('441571000124104', element);

  /// value441591000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441591000124103([this.element])
      : dbValue = '441591000124103',
        super('441591000124103', element);

  /// value441601000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441601000124106([this.element])
      : dbValue = '441601000124106',
        super('441601000124106', element);

  /// value443351000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443351000124102([this.element])
      : dbValue = '443351000124102',
        super('443351000124102', element);

  /// value443771000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443771000124106([this.element])
      : dbValue = '443771000124106',
        super('443771000124106', element);

  /// value441671000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value441671000124100([this.element])
      : dbValue = '441671000124100',
        super('441671000124100', element);

  /// value443111000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443111000124101([this.element])
      : dbValue = '443111000124101',
        super('443111000124101', element);

  /// value443431000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443431000124102([this.element])
      : dbValue = '443431000124102',
        super('443431000124102', element);

  /// value443411000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443411000124108([this.element])
      : dbValue = '443411000124108',
        super('443411000124108', element);

  /// value444361000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444361000124102([this.element])
      : dbValue = '444361000124102',
        super('444361000124102', element);

  /// value444401000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444401000124107([this.element])
      : dbValue = '444401000124107',
        super('444401000124107', element);

  /// value444381000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444381000124107([this.element])
      : dbValue = '444381000124107',
        super('444381000124107', element);

  /// value444371000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value444371000124109([this.element])
      : dbValue = '444371000124109',
        super('444371000124109', element);

  /// value443441000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value443441000124107([this.element])
      : dbValue = '443441000124107',
        super('443441000124107', element);

  /// value442651000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplementTypeCodes.value442651000124102([this.element])
      : dbValue = '442651000124102',
        super('442651000124102', element);

  /// For instances where an Element is present but not value

  SupplementTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SupplementTypeCodes._(super.input, [super.element])
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
    '442901000124106',
    '443031000124106',
    '443051000124104',
    '442911000124109',
    '443021000124108',
    '442971000124100',
    '442981000124102',
    '442991000124104',
    '443011000124100',
    '442961000124107',
    '442951000124105',
    '442941000124108',
    '442921000124101',
    '442931000124103',
    '444331000124106',
    '443361000124100',
    '443391000124108',
    '443401000124105',
    '443491000124103',
    '443501000124106',
    '443421000124100',
    '443471000124104',
    '444431000124104',
    '443451000124109',
    '444321000124108',
    '441561000124106',
    '443461000124106',
    '441531000124102',
    '443561000124107',
    '443481000124101',
    '441571000124104',
    '441591000124103',
    '441601000124106',
    '443351000124102',
    '443771000124106',
    '441671000124100',
    '443111000124101',
    '443431000124102',
    '443411000124108',
    '444361000124102',
    '444401000124107',
    '444381000124107',
    '444371000124109',
    '443441000124107',
    '442651000124102',
  ];

  /// Returns the enum value with an element attached
  SupplementTypeCodes withElement(Element? newElement) {
    return SupplementTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplementTypeCodes.$value';
}
