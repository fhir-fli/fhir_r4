// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationKnowledge Package Type Codes
@Entity()
class MedicationKnowledgePackageTypeCodes extends FhirCode {
  /// Factory constructor to create [MedicationKnowledgePackageTypeCodes] from JSON.
  factory MedicationKnowledgePackageTypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationKnowledgePackageTypeCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationKnowledgePackageTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// amp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.amp([this.element])
      : dbValue = 'amp',
        super('amp', element);

  /// bag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.bag([this.element])
      : dbValue = 'bag',
        super('bag', element);

  /// blstrpk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.blstrpk([this.element])
      : dbValue = 'blstrpk',
        super('blstrpk', element);

  /// bot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.bot([this.element])
      : dbValue = 'bot',
        super('bot', element);

  /// box
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.box([this.element])
      : dbValue = 'box',
        super('box', element);

  /// can
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.can([this.element])
      : dbValue = 'can',
        super('can', element);

  /// cart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.cart([this.element])
      : dbValue = 'cart',
        super('cart', element);

  /// disk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.disk([this.element])
      : dbValue = 'disk',
        super('disk', element);

  /// doset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.doset([this.element])
      : dbValue = 'doset',
        super('doset', element);

  /// jar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.jar([this.element])
      : dbValue = 'jar',
        super('jar', element);

  /// jug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.jug([this.element])
      : dbValue = 'jug',
        super('jug', element);

  /// minim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.minim([this.element])
      : dbValue = 'minim',
        super('minim', element);

  /// nebamp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.nebamp([this.element])
      : dbValue = 'nebamp',
        super('nebamp', element);

  /// ovul
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.ovul([this.element])
      : dbValue = 'ovul',
        super('ovul', element);

  /// pch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.pch([this.element])
      : dbValue = 'pch',
        super('pch', element);

  /// pkt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.pkt([this.element])
      : dbValue = 'pkt',
        super('pkt', element);

  /// sash
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.sash([this.element])
      : dbValue = 'sash',
        super('sash', element);

  /// strip
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.strip([this.element])
      : dbValue = 'strip',
        super('strip', element);

  /// tin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.tin([this.element])
      : dbValue = 'tin',
        super('tin', element);

  /// tub
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.tub([this.element])
      : dbValue = 'tub',
        super('tub', element);

  /// tube
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.tube([this.element])
      : dbValue = 'tube',
        super('tube', element);

  /// vial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationKnowledgePackageTypeCodes.vial([this.element])
      : dbValue = 'vial',
        super('vial', element);

  /// For instances where an Element is present but not value

  MedicationKnowledgePackageTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'amp',
    'bag',
    'blstrpk',
    'bot',
    'box',
    'can',
    'cart',
    'disk',
    'doset',
    'jar',
    'jug',
    'minim',
    'nebamp',
    'ovul',
    'pch',
    'pkt',
    'sash',
    'strip',
    'tin',
    'tub',
    'tube',
    'vial',
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationKnowledgePackageTypeCodes.$value';
}
