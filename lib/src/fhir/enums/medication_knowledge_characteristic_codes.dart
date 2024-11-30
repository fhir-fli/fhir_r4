// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Characteristic Codes
class MedicationKnowledgeCharacteristicCodes {
  // Private constructor for internal use (like enum)
  MedicationKnowledgeCharacteristicCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationKnowledgeCharacteristicCodes values
  /// imprintcd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes imprintcd =
      MedicationKnowledgeCharacteristicCodes._(
    'imprintcd',
  );

  /// size
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes size =
      MedicationKnowledgeCharacteristicCodes._(
    'size',
  );

  /// shape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes shape =
      MedicationKnowledgeCharacteristicCodes._(
    'shape',
  );

  /// color
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes color =
      MedicationKnowledgeCharacteristicCodes._(
    'color',
  );

  /// coating
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes coating =
      MedicationKnowledgeCharacteristicCodes._(
    'coating',
  );

  /// scoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes scoring =
      MedicationKnowledgeCharacteristicCodes._(
    'scoring',
  );

  /// logo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes logo =
      MedicationKnowledgeCharacteristicCodes._(
    'logo',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgeCharacteristicCodes elementOnly =
      MedicationKnowledgeCharacteristicCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgeCharacteristicCodes> values = [
    imprintcd,
    size,
    shape,
    color,
    coating,
    scoring,
    logo,
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgeCharacteristicCodes withElement(Element? newElement) {
    return MedicationKnowledgeCharacteristicCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationKnowledgeCharacteristicCodes] from JSON.
  static MedicationKnowledgeCharacteristicCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeCharacteristicCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgeCharacteristicCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
