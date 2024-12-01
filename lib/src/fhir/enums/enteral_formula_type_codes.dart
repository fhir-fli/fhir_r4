// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralFormulaType : Codes for type of enteral formula to be administered to patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
class EnteralFormulaTypeCodes {
  // Private constructor for internal use (like enum)
  EnteralFormulaTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [EnteralFormulaTypeCodes] from JSON.
  factory EnteralFormulaTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaTypeCodes.elementOnly.withElement(element);
    }
    return EnteralFormulaTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EnteralFormulaTypeCodes values
  /// value443031000124106
  static final EnteralFormulaTypeCodes value443031000124106 =
      EnteralFormulaTypeCodes._(
    '443031000124106',
  );

  /// value443051000124104
  static final EnteralFormulaTypeCodes value443051000124104 =
      EnteralFormulaTypeCodes._(
    '443051000124104',
  );

  /// value442911000124109
  static final EnteralFormulaTypeCodes value442911000124109 =
      EnteralFormulaTypeCodes._(
    '442911000124109',
  );

  /// value443021000124108
  static final EnteralFormulaTypeCodes value443021000124108 =
      EnteralFormulaTypeCodes._(
    '443021000124108',
  );

  /// value442971000124100
  static final EnteralFormulaTypeCodes value442971000124100 =
      EnteralFormulaTypeCodes._(
    '442971000124100',
  );

  /// value442981000124102
  static final EnteralFormulaTypeCodes value442981000124102 =
      EnteralFormulaTypeCodes._(
    '442981000124102',
  );

  /// value442991000124104
  static final EnteralFormulaTypeCodes value442991000124104 =
      EnteralFormulaTypeCodes._(
    '442991000124104',
  );

  /// value443011000124100
  static final EnteralFormulaTypeCodes value443011000124100 =
      EnteralFormulaTypeCodes._(
    '443011000124100',
  );

  /// value442961000124107
  static final EnteralFormulaTypeCodes value442961000124107 =
      EnteralFormulaTypeCodes._(
    '442961000124107',
  );

  /// value442951000124105
  static final EnteralFormulaTypeCodes value442951000124105 =
      EnteralFormulaTypeCodes._(
    '442951000124105',
  );

  /// value442941000124108
  static final EnteralFormulaTypeCodes value442941000124108 =
      EnteralFormulaTypeCodes._(
    '442941000124108',
  );

  /// value442921000124101
  static final EnteralFormulaTypeCodes value442921000124101 =
      EnteralFormulaTypeCodes._(
    '442921000124101',
  );

  /// value442931000124103
  static final EnteralFormulaTypeCodes value442931000124103 =
      EnteralFormulaTypeCodes._(
    '442931000124103',
  );

  /// value443361000124100
  static final EnteralFormulaTypeCodes value443361000124100 =
      EnteralFormulaTypeCodes._(
    '443361000124100',
  );

  /// value443401000124105
  static final EnteralFormulaTypeCodes value443401000124105 =
      EnteralFormulaTypeCodes._(
    '443401000124105',
  );

  /// value443491000124103
  static final EnteralFormulaTypeCodes value443491000124103 =
      EnteralFormulaTypeCodes._(
    '443491000124103',
  );

  /// value443501000124106
  static final EnteralFormulaTypeCodes value443501000124106 =
      EnteralFormulaTypeCodes._(
    '443501000124106',
  );

  /// value443421000124100
  static final EnteralFormulaTypeCodes value443421000124100 =
      EnteralFormulaTypeCodes._(
    '443421000124100',
  );

  /// value443471000124104
  static final EnteralFormulaTypeCodes value443471000124104 =
      EnteralFormulaTypeCodes._(
    '443471000124104',
  );

  /// value444431000124104
  static final EnteralFormulaTypeCodes value444431000124104 =
      EnteralFormulaTypeCodes._(
    '444431000124104',
  );

  /// value443451000124109
  static final EnteralFormulaTypeCodes value443451000124109 =
      EnteralFormulaTypeCodes._(
    '443451000124109',
  );

  /// value441561000124106
  static final EnteralFormulaTypeCodes value441561000124106 =
      EnteralFormulaTypeCodes._(
    '441561000124106',
  );

  /// value443461000124106
  static final EnteralFormulaTypeCodes value443461000124106 =
      EnteralFormulaTypeCodes._(
    '443461000124106',
  );

  /// value441531000124102
  static final EnteralFormulaTypeCodes value441531000124102 =
      EnteralFormulaTypeCodes._(
    '441531000124102',
  );

  /// value443561000124107
  static final EnteralFormulaTypeCodes value443561000124107 =
      EnteralFormulaTypeCodes._(
    '443561000124107',
  );

  /// value443481000124101
  static final EnteralFormulaTypeCodes value443481000124101 =
      EnteralFormulaTypeCodes._(
    '443481000124101',
  );

  /// value441571000124104
  static final EnteralFormulaTypeCodes value441571000124104 =
      EnteralFormulaTypeCodes._(
    '441571000124104',
  );

  /// value441591000124103
  static final EnteralFormulaTypeCodes value441591000124103 =
      EnteralFormulaTypeCodes._(
    '441591000124103',
  );

  /// value441601000124106
  static final EnteralFormulaTypeCodes value441601000124106 =
      EnteralFormulaTypeCodes._(
    '441601000124106',
  );

  /// value443351000124102
  static final EnteralFormulaTypeCodes value443351000124102 =
      EnteralFormulaTypeCodes._(
    '443351000124102',
  );

  /// value443771000124106
  static final EnteralFormulaTypeCodes value443771000124106 =
      EnteralFormulaTypeCodes._(
    '443771000124106',
  );

  /// value441671000124100
  static final EnteralFormulaTypeCodes value441671000124100 =
      EnteralFormulaTypeCodes._(
    '441671000124100',
  );

  /// value443111000124101
  static final EnteralFormulaTypeCodes value443111000124101 =
      EnteralFormulaTypeCodes._(
    '443111000124101',
  );

  /// value443431000124102
  static final EnteralFormulaTypeCodes value443431000124102 =
      EnteralFormulaTypeCodes._(
    '443431000124102',
  );

  /// value443411000124108
  static final EnteralFormulaTypeCodes value443411000124108 =
      EnteralFormulaTypeCodes._(
    '443411000124108',
  );

  /// value442651000124102
  static final EnteralFormulaTypeCodes value442651000124102 =
      EnteralFormulaTypeCodes._(
    '442651000124102',
  );

  /// For instances where an Element is present but not value

  static final EnteralFormulaTypeCodes elementOnly =
      EnteralFormulaTypeCodes._('');

  /// List of all enum-like values
  static final List<EnteralFormulaTypeCodes> values = [
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
    value443361000124100,
    value443401000124105,
    value443491000124103,
    value443501000124106,
    value443421000124100,
    value443471000124104,
    value444431000124104,
    value443451000124109,
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
    value442651000124102,
  ];

  /// Returns the enum value with an element attached
  EnteralFormulaTypeCodes withElement(Element? newElement) {
    return EnteralFormulaTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
