// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifier: Codes for food consistency types or texture modifications to apply to foods. This value set is composed of SNOMED CT (US Extension and Core) Concepts from SCTID 229961002 Food consistency types (substance) hierarchy and is provided as a suggestive example.
class TextureModifierCodes {
  // Private constructor for internal use (like enum)
  TextureModifierCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TextureModifierCodes values
  /// value228053002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228053002 = TextureModifierCodes._(
    '228053002',
  );

  /// value439091000124107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value439091000124107 =
      TextureModifierCodes._(
    '439091000124107',
  );

  /// value228049004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228049004 = TextureModifierCodes._(
    '228049004',
  );

  /// value441881000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value441881000124103 =
      TextureModifierCodes._(
    '441881000124103',
  );

  /// value441761000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value441761000124103 =
      TextureModifierCodes._(
    '441761000124103',
  );

  /// value441751000124100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value441751000124100 =
      TextureModifierCodes._(
    '441751000124100',
  );

  /// value228059003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228059003 = TextureModifierCodes._(
    '228059003',
  );

  /// value441791000124106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value441791000124106 =
      TextureModifierCodes._(
    '441791000124106',
  );

  /// value228055009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228055009 = TextureModifierCodes._(
    '228055009',
  );

  /// value228056005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228056005 = TextureModifierCodes._(
    '228056005',
  );

  /// value441771000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value441771000124105 =
      TextureModifierCodes._(
    '441771000124105',
  );

  /// value228057001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228057001 = TextureModifierCodes._(
    '228057001',
  );

  /// value228058006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228058006 = TextureModifierCodes._(
    '228058006',
  );

  /// value228060008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifierCodes value228060008 = TextureModifierCodes._(
    '228060008',
  );

  /// For instances where an Element is present but not value

  static final TextureModifierCodes elementOnly = TextureModifierCodes._('');

  /// List of all enum-like values
  static final List<TextureModifierCodes> values = [
    value228053002,
    value439091000124107,
    value228049004,
    value441881000124103,
    value441761000124103,
    value441751000124100,
    value228059003,
    value441791000124106,
    value228055009,
    value228056005,
    value441771000124105,
    value228057001,
    value228058006,
    value228060008,
  ];

  /// Returns the enum value with an element attached
  TextureModifierCodes withElement(Element? newElement) {
    return TextureModifierCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TextureModifierCodes] from JSON.
  static TextureModifierCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifierCodes.elementOnly.withElement(element);
    }
    return TextureModifierCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
