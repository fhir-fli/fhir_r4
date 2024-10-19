// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Modifier type codes.
@collection
class ModifierTypeCodes {
  /// Constructor for internal use (like enum)
  ModifierTypeCodes({this.fhirCode, this.element})
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

  /// ModifierTypeCodes values
  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes a = ModifierTypeCodes(
    fhirCode: 'a',
  );

  /// b
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes b = ModifierTypeCodes(
    fhirCode: 'b',
  );

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes c = ModifierTypeCodes(
    fhirCode: 'c',
  );

  /// e
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes e = ModifierTypeCodes(
    fhirCode: 'e',
  );

  /// rooh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes rooh = ModifierTypeCodes(
    fhirCode: 'rooh',
  );

  /// x
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes x = ModifierTypeCodes(
    fhirCode: 'x',
  );

  /// For instances where an Element is present but not value

  static final ModifierTypeCodes elementOnly = ModifierTypeCodes();

  /// List of all enum-like values
  static final List<ModifierTypeCodes> values = [
    a,
    b,
    c,
    e,
    rooh,
    x,
  ];

  /// Returns the enum value with an element attached
  ModifierTypeCodes withElement(Element? newElement) {
    return ModifierTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ModifierTypeCodes] from JSON.
  static ModifierTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ModifierTypeCodes.elementOnly.withElement(element);
    }
    return ModifierTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ModifierTypeCodes.$fhirCode';
}
