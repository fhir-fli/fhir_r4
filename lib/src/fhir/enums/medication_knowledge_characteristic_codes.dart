// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Characteristic Codes
enum MedicationKnowledgeCharacteristicCodes {
  /// Display: Imprint Code
  /// Definition: Identyifying marks on product
  imprintcd('imprintcd'),

  /// Display: Size
  /// Definition: Description of size of the product
  size('size'),

  /// Display: Shape
  /// Definition: Description of the shape of the product
  shape('shape'),

  /// Display: Color
  /// Definition: Description of the color of the product
  color('color'),

  /// Display: Coating
  /// Definition: Description of the coating of the product
  coating('coating'),

  /// Display: Scoring
  /// Definition: Description of the scoring of the product
  scoring('scoring'),

  /// Display: Logo
  /// Definition: Description of the Logo of the product
  logo('logo'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationKnowledgeCharacteristicCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationKnowledgeCharacteristicCodes] instances.
  static MedicationKnowledgeCharacteristicCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeCharacteristicCodes.elementOnly.withElement(
        element,
      );
    }
    return MedicationKnowledgeCharacteristicCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationKnowledgeCharacteristicCodes withElement(Element? newElement) {
    return MedicationKnowledgeCharacteristicCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
