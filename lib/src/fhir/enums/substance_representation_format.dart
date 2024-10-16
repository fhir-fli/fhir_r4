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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceRepresentationFormat(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceRepresentationFormat fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationFormat.elementOnly.withElement(element);
    }
    return SubstanceRepresentationFormat.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceRepresentationFormat withElement(Element? newElement) {
    return SubstanceRepresentationFormat.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
