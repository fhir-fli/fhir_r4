// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Package Type Codes
class MedicationKnowledgePackageTypeCodes {
  // Private constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationKnowledgePackageTypeCodes values
  /// amp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes amp =
      MedicationKnowledgePackageTypeCodes._(
    'amp',
  );

  /// bag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes bag =
      MedicationKnowledgePackageTypeCodes._(
    'bag',
  );

  /// blstrpk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes blstrpk =
      MedicationKnowledgePackageTypeCodes._(
    'blstrpk',
  );

  /// bot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes bot =
      MedicationKnowledgePackageTypeCodes._(
    'bot',
  );

  /// box
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes box =
      MedicationKnowledgePackageTypeCodes._(
    'box',
  );

  /// can
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes can =
      MedicationKnowledgePackageTypeCodes._(
    'can',
  );

  /// cart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes cart =
      MedicationKnowledgePackageTypeCodes._(
    'cart',
  );

  /// disk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes disk =
      MedicationKnowledgePackageTypeCodes._(
    'disk',
  );

  /// doset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes doset =
      MedicationKnowledgePackageTypeCodes._(
    'doset',
  );

  /// jar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes jar =
      MedicationKnowledgePackageTypeCodes._(
    'jar',
  );

  /// jug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes jug =
      MedicationKnowledgePackageTypeCodes._(
    'jug',
  );

  /// minim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes minim =
      MedicationKnowledgePackageTypeCodes._(
    'minim',
  );

  /// nebamp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes nebamp =
      MedicationKnowledgePackageTypeCodes._(
    'nebamp',
  );

  /// ovul
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes ovul =
      MedicationKnowledgePackageTypeCodes._(
    'ovul',
  );

  /// pch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes pch =
      MedicationKnowledgePackageTypeCodes._(
    'pch',
  );

  /// pkt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes pkt =
      MedicationKnowledgePackageTypeCodes._(
    'pkt',
  );

  /// sash
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes sash =
      MedicationKnowledgePackageTypeCodes._(
    'sash',
  );

  /// strip
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes strip =
      MedicationKnowledgePackageTypeCodes._(
    'strip',
  );

  /// tin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tin =
      MedicationKnowledgePackageTypeCodes._(
    'tin',
  );

  /// tub
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tub =
      MedicationKnowledgePackageTypeCodes._(
    'tub',
  );

  /// tube
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tube =
      MedicationKnowledgePackageTypeCodes._(
    'tube',
  );

  /// vial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes vial =
      MedicationKnowledgePackageTypeCodes._(
    'vial',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgePackageTypeCodes elementOnly =
      MedicationKnowledgePackageTypeCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgePackageTypeCodes> values = [
    amp,
    bag,
    blstrpk,
    bot,
    box,
    can,
    cart,
    disk,
    doset,
    jar,
    jug,
    minim,
    nebamp,
    ovul,
    pch,
    pkt,
    sash,
    strip,
    tin,
    tub,
    tube,
    vial,
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationKnowledgePackageTypeCodes] from JSON.
  static MedicationKnowledgePackageTypeCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgePackageTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationKnowledgePackageTypeCodes.$fhirCode';
}
