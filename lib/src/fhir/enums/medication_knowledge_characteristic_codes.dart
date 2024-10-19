// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationKnowledge Characteristic Codes
@Entity()
class MedicationKnowledgeCharacteristicCodes extends FhirCode {
  /// Factory constructor to create [MedicationKnowledgeCharacteristicCodes] from JSON.
  factory MedicationKnowledgeCharacteristicCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeCharacteristicCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationKnowledgeCharacteristicCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationKnowledgeCharacteristicCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// imprintcd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.imprintcd([this.element])
      : dbValue = 'imprintcd',
        super('imprintcd', element);

  /// size
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.size([this.element])
      : dbValue = 'size',
        super('size', element);

  /// shape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.shape([this.element])
      : dbValue = 'shape',
        super('shape', element);

  /// color
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.color([this.element])
      : dbValue = 'color',
        super('color', element);

  /// coating
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.coating([this.element])
      : dbValue = 'coating',
        super('coating', element);

  /// scoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.scoring([this.element])
      : dbValue = 'scoring',
        super('scoring', element);

  /// logo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgeCharacteristicCodes.logo([this.element])
      : dbValue = 'logo',
        super('logo', element);

  /// For instances where an Element is present but not value

  MedicationKnowledgeCharacteristicCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationKnowledgeCharacteristicCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'imprintcd',
    'size',
    'shape',
    'color',
    'coating',
    'scoring',
    'logo',
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgeCharacteristicCodes withElement(Element? newElement) {
    return MedicationKnowledgeCharacteristicCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationKnowledgeCharacteristicCodes.$value';
}
