// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationKnowledge Characteristic Codes
@collection
class MedicationKnowledgeCharacteristicCodes {
  /// Constructor for internal use (like enum)
  MedicationKnowledgeCharacteristicCodes({this.fhirCode, this.element})
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

  /// MedicationKnowledgeCharacteristicCodes values
  /// imprintcd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes imprintcd =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'imprintcd',
  );

  /// size
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes size =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'size',
  );

  /// shape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes shape =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'shape',
  );

  /// color
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes color =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'color',
  );

  /// coating
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes coating =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'coating',
  );

  /// scoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes scoring =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'scoring',
  );

  /// logo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgeCharacteristicCodes logo =
      MedicationKnowledgeCharacteristicCodes(
    fhirCode: 'logo',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgeCharacteristicCodes elementOnly =
      MedicationKnowledgeCharacteristicCodes();

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
    return MedicationKnowledgeCharacteristicCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return MedicationKnowledgeCharacteristicCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationKnowledgeCharacteristicCodes.$fhirCode';
}
