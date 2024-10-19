// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Logical grouping of characteristics.
@collection
class CharacteristicCombination {
  /// Constructor for internal use (like enum)
  CharacteristicCombination({this.fhirCode, this.element})
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

  /// CharacteristicCombination values
  /// intersection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CharacteristicCombination intersection =
      CharacteristicCombination(
    fhirCode: 'intersection',
  );

  /// union
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CharacteristicCombination union = CharacteristicCombination(
    fhirCode: 'union',
  );

  /// For instances where an Element is present but not value

  static final CharacteristicCombination elementOnly =
      CharacteristicCombination();

  /// List of all enum-like values
  static final List<CharacteristicCombination> values = [
    intersection,
    union,
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombination withElement(Element? newElement) {
    return CharacteristicCombination(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CharacteristicCombination] from JSON.
  static CharacteristicCombination fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombination.elementOnly.withElement(element);
    }
    return CharacteristicCombination.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CharacteristicCombination.$fhirCode';
}
