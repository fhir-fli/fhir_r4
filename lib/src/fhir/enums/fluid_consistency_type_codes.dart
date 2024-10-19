// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// FluidConsistencyType : Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103 (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
@collection
class FluidConsistencyTypeCodes {
  /// Constructor for internal use (like enum)
  FluidConsistencyTypeCodes({this.fhirCode, this.element})
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

  /// FluidConsistencyTypeCodes values
  /// value439031000124108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439031000124108 =
      FluidConsistencyTypeCodes(
    fhirCode: '439031000124108',
  );

  /// value439021000124105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439021000124105 =
      FluidConsistencyTypeCodes(
    fhirCode: '439021000124105',
  );

  /// value439041000124103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439041000124103 =
      FluidConsistencyTypeCodes(
    fhirCode: '439041000124103',
  );

  /// value439081000124109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FluidConsistencyTypeCodes value439081000124109 =
      FluidConsistencyTypeCodes(
    fhirCode: '439081000124109',
  );

  /// For instances where an Element is present but not value

  static final FluidConsistencyTypeCodes elementOnly =
      FluidConsistencyTypeCodes();

  /// List of all enum-like values
  static final List<FluidConsistencyTypeCodes> values = [
    value439031000124108,
    value439021000124105,
    value439041000124103,
    value439081000124109,
  ];

  /// Returns the enum value with an element attached
  FluidConsistencyTypeCodes withElement(Element? newElement) {
    return FluidConsistencyTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
