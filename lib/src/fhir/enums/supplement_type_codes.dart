// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// SupplementType : Codes for nutritional supplements to be provided to the patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
@collection
class SupplementTypeCodes {
  /// Constructor for internal use (like enum)
  SupplementTypeCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SupplementTypeCodes values
  /// value442901000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442901000124106 = SupplementTypeCodes(
    fhirCode: '442901000124106',
  );

  /// value443031000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443031000124106 = SupplementTypeCodes(
    fhirCode: '443031000124106',
  );

  /// value443051000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443051000124104 = SupplementTypeCodes(
    fhirCode: '443051000124104',
  );

  /// value442911000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442911000124109 = SupplementTypeCodes(
    fhirCode: '442911000124109',
  );

  /// value443021000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443021000124108 = SupplementTypeCodes(
    fhirCode: '443021000124108',
  );

  /// value442971000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442971000124100 = SupplementTypeCodes(
    fhirCode: '442971000124100',
  );

  /// value442981000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442981000124102 = SupplementTypeCodes(
    fhirCode: '442981000124102',
  );

  /// value442991000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442991000124104 = SupplementTypeCodes(
    fhirCode: '442991000124104',
  );

  /// value443011000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443011000124100 = SupplementTypeCodes(
    fhirCode: '443011000124100',
  );

  /// value442961000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442961000124107 = SupplementTypeCodes(
    fhirCode: '442961000124107',
  );

  /// value442951000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442951000124105 = SupplementTypeCodes(
    fhirCode: '442951000124105',
  );

  /// value442941000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442941000124108 = SupplementTypeCodes(
    fhirCode: '442941000124108',
  );

  /// value442921000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442921000124101 = SupplementTypeCodes(
    fhirCode: '442921000124101',
  );

  /// value442931000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442931000124103 = SupplementTypeCodes(
    fhirCode: '442931000124103',
  );

  /// value444331000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444331000124106 = SupplementTypeCodes(
    fhirCode: '444331000124106',
  );

  /// value443361000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443361000124100 = SupplementTypeCodes(
    fhirCode: '443361000124100',
  );

  /// value443391000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443391000124108 = SupplementTypeCodes(
    fhirCode: '443391000124108',
  );

  /// value443401000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443401000124105 = SupplementTypeCodes(
    fhirCode: '443401000124105',
  );

  /// value443491000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443491000124103 = SupplementTypeCodes(
    fhirCode: '443491000124103',
  );

  /// value443501000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443501000124106 = SupplementTypeCodes(
    fhirCode: '443501000124106',
  );

  /// value443421000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443421000124100 = SupplementTypeCodes(
    fhirCode: '443421000124100',
  );

  /// value443471000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443471000124104 = SupplementTypeCodes(
    fhirCode: '443471000124104',
  );

  /// value444431000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444431000124104 = SupplementTypeCodes(
    fhirCode: '444431000124104',
  );

  /// value443451000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443451000124109 = SupplementTypeCodes(
    fhirCode: '443451000124109',
  );

  /// value444321000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444321000124108 = SupplementTypeCodes(
    fhirCode: '444321000124108',
  );

  /// value441561000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441561000124106 = SupplementTypeCodes(
    fhirCode: '441561000124106',
  );

  /// value443461000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443461000124106 = SupplementTypeCodes(
    fhirCode: '443461000124106',
  );

  /// value441531000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441531000124102 = SupplementTypeCodes(
    fhirCode: '441531000124102',
  );

  /// value443561000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443561000124107 = SupplementTypeCodes(
    fhirCode: '443561000124107',
  );

  /// value443481000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443481000124101 = SupplementTypeCodes(
    fhirCode: '443481000124101',
  );

  /// value441571000124104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441571000124104 = SupplementTypeCodes(
    fhirCode: '441571000124104',
  );

  /// value441591000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441591000124103 = SupplementTypeCodes(
    fhirCode: '441591000124103',
  );

  /// value441601000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441601000124106 = SupplementTypeCodes(
    fhirCode: '441601000124106',
  );

  /// value443351000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443351000124102 = SupplementTypeCodes(
    fhirCode: '443351000124102',
  );

  /// value443771000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443771000124106 = SupplementTypeCodes(
    fhirCode: '443771000124106',
  );

  /// value441671000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value441671000124100 = SupplementTypeCodes(
    fhirCode: '441671000124100',
  );

  /// value443111000124101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443111000124101 = SupplementTypeCodes(
    fhirCode: '443111000124101',
  );

  /// value443431000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443431000124102 = SupplementTypeCodes(
    fhirCode: '443431000124102',
  );

  /// value443411000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443411000124108 = SupplementTypeCodes(
    fhirCode: '443411000124108',
  );

  /// value444361000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444361000124102 = SupplementTypeCodes(
    fhirCode: '444361000124102',
  );

  /// value444401000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444401000124107 = SupplementTypeCodes(
    fhirCode: '444401000124107',
  );

  /// value444381000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444381000124107 = SupplementTypeCodes(
    fhirCode: '444381000124107',
  );

  /// value444371000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value444371000124109 = SupplementTypeCodes(
    fhirCode: '444371000124109',
  );

  /// value443441000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value443441000124107 = SupplementTypeCodes(
    fhirCode: '443441000124107',
  );

  /// value442651000124102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplementTypeCodes value442651000124102 = SupplementTypeCodes(
    fhirCode: '442651000124102',
  );

  /// For instances where an Element is present but not value

  static final SupplementTypeCodes elementOnly = SupplementTypeCodes();

  /// List of all enum-like values
  static final List<SupplementTypeCodes> values = [
    value442901000124106,
    value443031000124106,
    value443051000124104,
    value442911000124109,
    value443021000124108,
    value442971000124100,
    value442981000124102,
    value442991000124104,
    value443011000124100,
    value442961000124107,
    value442951000124105,
    value442941000124108,
    value442921000124101,
    value442931000124103,
    value444331000124106,
    value443361000124100,
    value443391000124108,
    value443401000124105,
    value443491000124103,
    value443501000124106,
    value443421000124100,
    value443471000124104,
    value444431000124104,
    value443451000124109,
    value444321000124108,
    value441561000124106,
    value443461000124106,
    value441531000124102,
    value443561000124107,
    value443481000124101,
    value441571000124104,
    value441591000124103,
    value441601000124106,
    value443351000124102,
    value443771000124106,
    value441671000124100,
    value443111000124101,
    value443431000124102,
    value443411000124108,
    value444361000124102,
    value444401000124107,
    value444381000124107,
    value444371000124109,
    value443441000124107,
    value442651000124102,
  ];

  /// Returns the enum value with an element attached
  SupplementTypeCodes withElement(Element? newElement) {
    return SupplementTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SupplementTypeCodes] from JSON.
  static SupplementTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplementTypeCodes.elementOnly.withElement(element);
    }
    return SupplementTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplementTypeCodes.$fhirCode';
}
