// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A format of a substance representation.
enum SubstanceRepresentationFormat {
  /// Display: InChI
  /// Definition:
  InChI('InChI'),

  /// Display: SMILES
  /// Definition:
  SMILES('SMILES'),

  /// Display: MOLFILE
  /// Definition:
  MOLFILE('MOLFILE'),

  /// Display: CDX
  /// Definition:
  CDX('CDX'),

  /// Display: SDF
  /// Definition:
  SDF('SDF'),

  /// Display: PDB
  /// Definition:
  PDB('PDB'),

  /// Display: mmCIF
  /// Definition:
  mmCIF('mmCIF'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubstanceRepresentationFormat(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubstanceRepresentationFormat] instances.
  static SubstanceRepresentationFormat fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationFormat.elementOnly.withElement(element);
    }
    return SubstanceRepresentationFormat.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubstanceRepresentationFormat withElement(Element? newElement) {
    return SubstanceRepresentationFormat.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
