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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationKnowledgePackageTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationKnowledgePackageTypeCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgePackageTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
