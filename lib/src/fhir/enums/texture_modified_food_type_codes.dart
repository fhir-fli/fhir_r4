// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// TextureModifiedFoodType: Codes for types of foods that are texture-modified. This value set is composed SNOMED CT Concepts from SCTID 255620007 Foods (substance) and is provided as a suggestive example.
@Entity()
class TextureModifiedFoodTypeCodes extends FhirCode {
  /// Factory constructor to create [TextureModifiedFoodTypeCodes] from JSON.
  factory TextureModifiedFoodTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifiedFoodTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return TextureModifiedFoodTypeCodes._(value, element);
    }
    throw ArgumentError(
      'TextureModifiedFoodTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value255620007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value255620007([this.element])
      : dbValue = '255620007',
        super('255620007', element);

  /// value28647000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value28647000([this.element])
      : dbValue = '28647000',
        super('28647000', element);

  /// value22836000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value22836000([this.element])
      : dbValue = '22836000',
        super('22836000', element);

  /// value72511004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value72511004([this.element])
      : dbValue = '72511004',
        super('72511004', element);

  /// value226760005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value226760005([this.element])
      : dbValue = '226760005',
        super('226760005', element);

  /// value226887002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value226887002([this.element])
      : dbValue = '226887002',
        super('226887002', element);

  /// value102263004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value102263004([this.element])
      : dbValue = '102263004',
        super('102263004', element);

  /// value74242007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value74242007([this.element])
      : dbValue = '74242007',
        super('74242007', element);

  /// value227415002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value227415002([this.element])
      : dbValue = '227415002',
        super('227415002', element);

  /// value264331002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value264331002([this.element])
      : dbValue = '264331002',
        super('264331002', element);

  /// value227518002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value227518002([this.element])
      : dbValue = '227518002',
        super('227518002', element);

  /// value44027008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value44027008([this.element])
      : dbValue = '44027008',
        super('44027008', element);

  /// value226529007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value226529007([this.element])
      : dbValue = '226529007',
        super('226529007', element);

  /// value227210005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TextureModifiedFoodTypeCodes.value227210005([this.element])
      : dbValue = '227210005',
        super('227210005', element);

  /// For instances where an Element is present but not value

  TextureModifiedFoodTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TextureModifiedFoodTypeCodes._(super.input, [super.element])
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
    '255620007',
    '28647000',
    '22836000',
    '72511004',
    '226760005',
    '226887002',
    '102263004',
    '74242007',
    '227415002',
    '264331002',
    '227518002',
    '44027008',
    '226529007',
    '227210005',
  ];

  /// Returns the enum value with an element attached
  TextureModifiedFoodTypeCodes withElement(Element? newElement) {
    return TextureModifiedFoodTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TextureModifiedFoodTypeCodes.$value';
}
