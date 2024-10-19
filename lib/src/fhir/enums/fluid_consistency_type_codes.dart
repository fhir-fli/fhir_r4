// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// FluidConsistencyType : Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103 (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
@Entity()
class FluidConsistencyTypeCodes extends FhirCode {
  /// Factory constructor to create [FluidConsistencyTypeCodes] from JSON.
  factory FluidConsistencyTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FluidConsistencyTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return FluidConsistencyTypeCodes._(value, element);
    }
    throw ArgumentError(
      'FluidConsistencyTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value439031000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FluidConsistencyTypeCodes.value439031000124108([this.element])
      : dbValue = '439031000124108',
        super('439031000124108', element);

  /// value439021000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FluidConsistencyTypeCodes.value439021000124105([this.element])
      : dbValue = '439021000124105',
        super('439021000124105', element);

  /// value439041000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FluidConsistencyTypeCodes.value439041000124103([this.element])
      : dbValue = '439041000124103',
        super('439041000124103', element);

  /// value439081000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FluidConsistencyTypeCodes.value439081000124109([this.element])
      : dbValue = '439081000124109',
        super('439081000124109', element);

  /// For instances where an Element is present but not value

  FluidConsistencyTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FluidConsistencyTypeCodes._(super.input, [super.element])
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
    '439031000124108',
    '439021000124105',
    '439041000124103',
    '439081000124109',
  ];

  /// Returns the enum value with an element attached
  FluidConsistencyTypeCodes withElement(Element? newElement) {
    return FluidConsistencyTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FluidConsistencyTypeCodes.$value';
}
