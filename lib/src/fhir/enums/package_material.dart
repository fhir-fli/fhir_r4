// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A material used in the construction of packages and their components.
enum PackageMaterial {
  /// Display: Aluminium
  /// Definition:
  value200000003200('200000003200'),

  /// Display: Cyclic Olefin Copolymer
  /// Definition:
  value200000003201('200000003201'),

  /// Display: Epoxyphenol
  /// Definition:
  value200000003202('200000003202'),

  /// Display: Glass
  /// Definition:
  value200000003203('200000003203'),

  /// Display: Glass type I
  /// Definition:
  value200000003204('200000003204'),

  /// Display: Glass type II
  /// Definition:
  value200000003205('200000003205'),

  /// Display: Glass type III
  /// Definition:
  value200000003206('200000003206'),

  /// Display: Paper
  /// Definition:
  value200000003207('200000003207'),

  /// Display: Plastic
  /// Definition:
  value200000003208('200000003208'),

  /// Display: PolyAmide
  /// Definition:
  value200000003209('200000003209'),

  /// Display: Orientated PolyAmide
  /// Definition:
  value200000003210('200000003210'),

  /// Display: PolyCarbonate
  /// Definition:
  value200000003211('200000003211'),

  /// Display: PolyChloroTriFluoroEthylene
  /// Definition:
  value200000003212('200000003212'),

  /// Display: Polyester
  /// Definition:
  value200000003213('200000003213'),

  /// Display: PolyEthylene
  /// Definition:
  value200000003214('200000003214'),

  /// Display: High Density PolyEthylene
  /// Definition:
  value200000003215('200000003215'),

  /// Display: Low Density PolyEthylene
  /// Definition:
  value200000003216('200000003216'),

  /// Display: PolyEthylene TerePhthalate
  /// Definition:
  value200000003217('200000003217'),

  /// Display: Polyolefin
  /// Definition:
  value200000003218('200000003218'),

  /// Display: PolyPropylene
  /// Definition:
  value200000003219('200000003219'),

  /// Display: PolyStyrene
  /// Definition:
  value200000003220('200000003220'),

  /// Display: PolyVinyl Acetate
  /// Definition:
  value200000003221('200000003221'),

  /// Display: PolyVinyl Chloride
  /// Definition:
  value200000003222('200000003222'),

  /// Display: Plasticised PolyVinyl Chloride
  /// Definition:
  value200000003223('200000003223'),

  /// Display: Non-plasticised PolyVinyl Chloride / Unplasticised PolyVinyl Chloride
  /// Definition:
  value200000003224('200000003224'),

  /// Display: PolyVinylidene Chloride
  /// Definition:
  value200000003225('200000003225'),

  /// Display: Rubber
  /// Definition:
  value200000003226('200000003226'),

  /// Display: Silicone oil
  /// Definition:
  value200000003227('200000003227'),

  /// Display: Silicone elastomer
  /// Definition:
  value200000003228('200000003228'),

  /// Display: Steel
  /// Definition:
  value200000003229('200000003229'),

  /// Display: Cardboard
  /// Definition:
  value200000003529('200000003529'),

  /// Display: PolyAcryloNitrile
  /// Definition:
  value200000012514('200000012514'),

  /// Display: Ethylene acrylic acid copolymer
  /// Definition:
  value200000012515('200000012515'),

  /// Display: Ethylene meta-acrylic acid
  /// Definition:
  value200000012521('200000012521'),

  /// Display: Ethylene-Vinyl Alcohol copolymer
  /// Definition:
  value200000012522('200000012522'),

  /// Display: PolyVinylidene Fluoride
  /// Definition:
  value200000012523('200000012523'),

  /// Display: Medium Density PolyEthylene
  /// Definition:
  value200000012524('200000012524'),

  /// Display: Syndiotactic Polypropylene
  /// Definition:
  value200000012538('200000012538'),

  /// Display: PolyEthylene copolymer
  /// Definition:
  value200000015521('200000015521'),

  /// Display: Expanded Polyethylene
  /// Definition:
  value200000023330('200000023330'),

  /// Display: Cyclic Olefin Polymer
  /// Definition:
  value200000023332('200000023332'),

  /// Display: Silica gel
  /// Definition:
  value200000025255('200000025255'),

  /// Display: Linear Low Density PolyEthylene
  /// Definition:
  value200000025257('200000025257'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PackageMaterial(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PackageMaterial] instances.
  static PackageMaterial fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageMaterial.elementOnly.withElement(
        element,
      );
    }
    return PackageMaterial.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PackageMaterial withElement(Element? newElement) {
    return PackageMaterial.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
