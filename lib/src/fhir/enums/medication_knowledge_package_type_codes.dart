// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Package Type Codes
class MedicationKnowledgePackageTypeCodes {
  // Private constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationKnowledgePackageTypeCodes] from JSON.
  factory MedicationKnowledgePackageTypeCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgePackageTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationKnowledgePackageTypeCodes values
  /// amp
  static final MedicationKnowledgePackageTypeCodes amp =
      MedicationKnowledgePackageTypeCodes._(
    'amp',
  );

  /// bag
  static final MedicationKnowledgePackageTypeCodes bag =
      MedicationKnowledgePackageTypeCodes._(
    'bag',
  );

  /// blstrpk
  static final MedicationKnowledgePackageTypeCodes blstrpk =
      MedicationKnowledgePackageTypeCodes._(
    'blstrpk',
  );

  /// bot
  static final MedicationKnowledgePackageTypeCodes bot =
      MedicationKnowledgePackageTypeCodes._(
    'bot',
  );

  /// box
  static final MedicationKnowledgePackageTypeCodes box =
      MedicationKnowledgePackageTypeCodes._(
    'box',
  );

  /// can
  static final MedicationKnowledgePackageTypeCodes can =
      MedicationKnowledgePackageTypeCodes._(
    'can',
  );

  /// cart
  static final MedicationKnowledgePackageTypeCodes cart =
      MedicationKnowledgePackageTypeCodes._(
    'cart',
  );

  /// disk
  static final MedicationKnowledgePackageTypeCodes disk =
      MedicationKnowledgePackageTypeCodes._(
    'disk',
  );

  /// doset
  static final MedicationKnowledgePackageTypeCodes doset =
      MedicationKnowledgePackageTypeCodes._(
    'doset',
  );

  /// jar
  static final MedicationKnowledgePackageTypeCodes jar =
      MedicationKnowledgePackageTypeCodes._(
    'jar',
  );

  /// jug
  static final MedicationKnowledgePackageTypeCodes jug =
      MedicationKnowledgePackageTypeCodes._(
    'jug',
  );

  /// minim
  static final MedicationKnowledgePackageTypeCodes minim =
      MedicationKnowledgePackageTypeCodes._(
    'minim',
  );

  /// nebamp
  static final MedicationKnowledgePackageTypeCodes nebamp =
      MedicationKnowledgePackageTypeCodes._(
    'nebamp',
  );

  /// ovul
  static final MedicationKnowledgePackageTypeCodes ovul =
      MedicationKnowledgePackageTypeCodes._(
    'ovul',
  );

  /// pch
  static final MedicationKnowledgePackageTypeCodes pch =
      MedicationKnowledgePackageTypeCodes._(
    'pch',
  );

  /// pkt
  static final MedicationKnowledgePackageTypeCodes pkt =
      MedicationKnowledgePackageTypeCodes._(
    'pkt',
  );

  /// sash
  static final MedicationKnowledgePackageTypeCodes sash =
      MedicationKnowledgePackageTypeCodes._(
    'sash',
  );

  /// strip
  static final MedicationKnowledgePackageTypeCodes strip =
      MedicationKnowledgePackageTypeCodes._(
    'strip',
  );

  /// tin
  static final MedicationKnowledgePackageTypeCodes tin =
      MedicationKnowledgePackageTypeCodes._(
    'tin',
  );

  /// tub
  static final MedicationKnowledgePackageTypeCodes tub =
      MedicationKnowledgePackageTypeCodes._(
    'tub',
  );

  /// tube
  static final MedicationKnowledgePackageTypeCodes tube =
      MedicationKnowledgePackageTypeCodes._(
    'tube',
  );

  /// vial
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

  /// String representation
  @override
  String toString() => fhirCode;
}
