// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FluidConsistencyType : Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103 (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
class FluidConsistencyTypeCodes {
  // Private constructor for internal use (like enum)
  FluidConsistencyTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FluidConsistencyTypeCodes values
  /// value439031000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439031000124108 =
      FluidConsistencyTypeCodes._(
    '439031000124108',
  );

  /// value439021000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439021000124105 =
      FluidConsistencyTypeCodes._(
    '439021000124105',
  );

  /// value439041000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439041000124103 =
      FluidConsistencyTypeCodes._(
    '439041000124103',
  );

  /// value439081000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439081000124109 =
      FluidConsistencyTypeCodes._(
    '439081000124109',
  );

  /// For instances where an Element is present but not value

  static final FluidConsistencyTypeCodes elementOnly =
      FluidConsistencyTypeCodes._('');

  /// List of all enum-like values
  static final List<FluidConsistencyTypeCodes> values = [
    value439031000124108,
    value439021000124105,
    value439041000124103,
    value439081000124109,
  ];

  /// Returns the enum value with an element attached
  FluidConsistencyTypeCodes withElement(Element? newElement) {
    return FluidConsistencyTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FluidConsistencyTypeCodes] from JSON.
  static FluidConsistencyTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FluidConsistencyTypeCodes.elementOnly.withElement(element);
    }
    return FluidConsistencyTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FluidConsistencyTypeCodes.$fhirCode';
}
