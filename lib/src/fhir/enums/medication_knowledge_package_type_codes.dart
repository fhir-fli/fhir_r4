// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Package Type Codes
enum MedicationKnowledgePackageTypeCodes {
  /// Display: Ampule
  /// Definition:
  amp('amp'),

  /// Display: Bag
  /// Definition:
  bag('bag'),

  /// Display: Blister Pack
  /// Definition:
  blstrpk('blstrpk'),

  /// Display: Bottle
  /// Definition:
  bot('bot'),

  /// Display: Box
  /// Definition:
  box('box'),

  /// Display: Can
  /// Definition:
  can('can'),

  /// Display: Cartridge
  /// Definition:
  cart('cart'),

  /// Display: Disk
  /// Definition:
  disk('disk'),

  /// Display: Dosette
  /// Definition:
  doset('doset'),

  /// Display: Jar
  /// Definition:
  jar('jar'),

  /// Display: Jug
  /// Definition:
  jug('jug'),

  /// Display: Minim
  /// Definition:
  minim('minim'),

  /// Display: Nebule Amp
  /// Definition:
  nebamp('nebamp'),

  /// Display: Ovule
  /// Definition:
  ovul('ovul'),

  /// Display: Pouch
  /// Definition:
  pch('pch'),

  /// Display: Packet
  /// Definition:
  pkt('pkt'),

  /// Display: Sashet
  /// Definition:
  sash('sash'),

  /// Display: Strip
  /// Definition:
  strip('strip'),

  /// Display: Tin
  /// Definition:
  tin('tin'),

  /// Display: Tub
  /// Definition:
  tub('tub'),

  /// Display: Tube
  /// Definition:
  tube('tube'),

  /// Display: Vial
  /// Definition:
  vial('vial'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationKnowledgePackageTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationKnowledgePackageTypeCodes] instances.
  static MedicationKnowledgePackageTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly.withElement(
        element,
      );
    }
    return MedicationKnowledgePackageTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
