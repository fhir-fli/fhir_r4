// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifiedFoodType: Codes for types of foods that are texture-modified. This value set is composed SNOMED CT Concepts from SCTID 255620007 Foods (substance) and is provided as a suggestive example.
class TextureModifiedFoodTypeCodes {
  // Private constructor for internal use (like enum)
  TextureModifiedFoodTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TextureModifiedFoodTypeCodes values
  /// value255620007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value255620007 =
      TextureModifiedFoodTypeCodes._(
    '255620007',
  );

  /// value28647000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value28647000 =
      TextureModifiedFoodTypeCodes._(
    '28647000',
  );

  /// value22836000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value22836000 =
      TextureModifiedFoodTypeCodes._(
    '22836000',
  );

  /// value72511004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value72511004 =
      TextureModifiedFoodTypeCodes._(
    '72511004',
  );

  /// value226760005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value226760005 =
      TextureModifiedFoodTypeCodes._(
    '226760005',
  );

  /// value226887002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value226887002 =
      TextureModifiedFoodTypeCodes._(
    '226887002',
  );

  /// value102263004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value102263004 =
      TextureModifiedFoodTypeCodes._(
    '102263004',
  );

  /// value74242007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value74242007 =
      TextureModifiedFoodTypeCodes._(
    '74242007',
  );

  /// value227415002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value227415002 =
      TextureModifiedFoodTypeCodes._(
    '227415002',
  );

  /// value264331002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value264331002 =
      TextureModifiedFoodTypeCodes._(
    '264331002',
  );

  /// value227518002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value227518002 =
      TextureModifiedFoodTypeCodes._(
    '227518002',
  );

  /// value44027008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value44027008 =
      TextureModifiedFoodTypeCodes._(
    '44027008',
  );

  /// value226529007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value226529007 =
      TextureModifiedFoodTypeCodes._(
    '226529007',
  );

  /// value227210005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TextureModifiedFoodTypeCodes value227210005 =
      TextureModifiedFoodTypeCodes._(
    '227210005',
  );

  /// For instances where an Element is present but not value

  static final TextureModifiedFoodTypeCodes elementOnly =
      TextureModifiedFoodTypeCodes._('');

  /// List of all enum-like values
  static final List<TextureModifiedFoodTypeCodes> values = [
    value255620007,
    value28647000,
    value22836000,
    value72511004,
    value226760005,
    value226887002,
    value102263004,
    value74242007,
    value227415002,
    value264331002,
    value227518002,
    value44027008,
    value226529007,
    value227210005,
  ];

  /// Returns the enum value with an element attached
  TextureModifiedFoodTypeCodes withElement(Element? newElement) {
    return TextureModifiedFoodTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TextureModifiedFoodTypeCodes] from JSON.
  static TextureModifiedFoodTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifiedFoodTypeCodes.elementOnly.withElement(element);
    }
    return TextureModifiedFoodTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TextureModifiedFoodTypeCodes.$fhirCode';
}
