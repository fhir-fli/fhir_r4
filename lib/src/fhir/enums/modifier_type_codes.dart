// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Modifier type codes.
class ModifierTypeCodes {
  // Private constructor for internal use (like enum)
  ModifierTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ModifierTypeCodes values
  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes a = ModifierTypeCodes._(
    'a',
  );

  /// b
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes b = ModifierTypeCodes._(
    'b',
  );

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes c = ModifierTypeCodes._(
    'c',
  );

  /// e
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes e = ModifierTypeCodes._(
    'e',
  );

  /// rooh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes rooh = ModifierTypeCodes._(
    'rooh',
  );

  /// x
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ModifierTypeCodes x = ModifierTypeCodes._(
    'x',
  );

  /// For instances where an Element is present but not value

  static final ModifierTypeCodes elementOnly = ModifierTypeCodes._('');

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
    return ModifierTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
