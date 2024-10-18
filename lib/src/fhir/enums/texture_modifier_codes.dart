// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifier: Codes for food consistency types or texture modifications to apply to foods. This value set is composed of SNOMED CT (US Extension and Core) Concepts from SCTID 229961002 Food consistency types (substance) hierarchy and is provided as a suggestive example.
enum TextureModifierCodes {
  /// Display: Cut-up food
  /// Definition:
  value228053002('228053002'),

  /// Display: Easy to chew food
  /// Definition:
  value439091000124107('439091000124107'),

  /// Display: Chopped food
  /// Definition:
  value228049004('228049004'),

  /// Display: Ground food
  /// Definition:
  value441881000124103('441881000124103'),

  /// Display: Minced food
  /// Definition:
  value441761000124103('441761000124103'),

  /// Display: Mashed food
  /// Definition:
  value441751000124100('441751000124100'),

  /// Display: Soft food
  /// Definition:
  value228059003('228059003'),

  /// Display: Strained food
  /// Definition:
  value441791000124106('441791000124106'),

  /// Display: Liquidized food
  /// Definition:
  value228055009('228055009'),

  /// Display: Lumpy food
  /// Definition:
  value228056005('228056005'),

  /// Display: Moist food
  /// Definition:
  value441771000124105('441771000124105'),

  /// Display: Semi-solid food
  /// Definition:
  value228057001('228057001'),

  /// Display: Single texture food
  /// Definition:
  value228058006('228058006'),

  /// Display: Solid food
  /// Definition:
  value228060008('228060008'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TextureModifierCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TextureModifierCodes] instances.
  static TextureModifierCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifierCodes.elementOnly.withElement(
        element,
      );
    }
    return TextureModifierCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TextureModifierCodes withElement(Element? newElement) {
    return TextureModifierCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
