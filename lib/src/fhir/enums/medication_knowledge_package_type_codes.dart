// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationKnowledge Package Type Codes
@collection
class MedicationKnowledgePackageTypeCodes {
  /// Constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes({this.fhirCode, this.element})
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

  /// MedicationKnowledgePackageTypeCodes values
  /// amp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes amp =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'amp',
  );

  /// bag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes bag =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'bag',
  );

  /// blstrpk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes blstrpk =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'blstrpk',
  );

  /// bot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes bot =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'bot',
  );

  /// box
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes box =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'box',
  );

  /// can
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes can =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'can',
  );

  /// cart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes cart =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'cart',
  );

  /// disk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes disk =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'disk',
  );

  /// doset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes doset =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'doset',
  );

  /// jar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes jar =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'jar',
  );

  /// jug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes jug =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'jug',
  );

  /// minim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes minim =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'minim',
  );

  /// nebamp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes nebamp =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'nebamp',
  );

  /// ovul
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes ovul =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'ovul',
  );

  /// pch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes pch =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'pch',
  );

  /// pkt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes pkt =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'pkt',
  );

  /// sash
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes sash =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'sash',
  );

  /// strip
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes strip =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'strip',
  );

  /// tin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tin =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'tin',
  );

  /// tub
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tub =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'tub',
  );

  /// tube
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes tube =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'tube',
  );

  /// vial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationKnowledgePackageTypeCodes vial =
      MedicationKnowledgePackageTypeCodes(
    fhirCode: 'vial',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgePackageTypeCodes elementOnly =
      MedicationKnowledgePackageTypeCodes();

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
    return MedicationKnowledgePackageTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
