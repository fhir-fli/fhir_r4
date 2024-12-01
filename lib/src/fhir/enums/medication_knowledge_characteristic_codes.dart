// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Characteristic Codes
class MedicationKnowledgeCharacteristicCodes {
  // Private constructor for internal use (like enum)
  MedicationKnowledgeCharacteristicCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationKnowledgeCharacteristicCodes] from JSON.
  factory MedicationKnowledgeCharacteristicCodes.fromJson(
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

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationKnowledgeCharacteristicCodes values
  /// imprintcd
  static final MedicationKnowledgeCharacteristicCodes imprintcd =
      MedicationKnowledgeCharacteristicCodes._(
    'imprintcd',
  );

  /// size
  static final MedicationKnowledgeCharacteristicCodes size =
      MedicationKnowledgeCharacteristicCodes._(
    'size',
  );

  /// shape
  static final MedicationKnowledgeCharacteristicCodes shape =
      MedicationKnowledgeCharacteristicCodes._(
    'shape',
  );

  /// color
  static final MedicationKnowledgeCharacteristicCodes color =
      MedicationKnowledgeCharacteristicCodes._(
    'color',
  );

  /// coating
  static final MedicationKnowledgeCharacteristicCodes coating =
      MedicationKnowledgeCharacteristicCodes._(
    'coating',
  );

  /// scoring
  static final MedicationKnowledgeCharacteristicCodes scoring =
      MedicationKnowledgeCharacteristicCodes._(
    'scoring',
  );

  /// logo
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

  /// String representation
  @override
  String toString() => fhirCode;
}
