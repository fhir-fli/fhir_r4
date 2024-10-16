import 'package:fhir_r4/fhir_r4.dart';

/// The method used to elucidate the structure or characterization of the drug substance.
enum StructureTechnique {
  /// Display: X-ray
  /// Definition:
  X_Ray('X-Ray'),

  /// Display: HPLC
  /// Definition:
  HPLC('HPLC'),

  /// Display: NMR
  /// Definition:
  NMR('NMR'),

  /// Display: Peptide mapping
  /// Definition:
  PeptideMapping('PeptideMapping'),

  /// Display: Ligand binding assay
  /// Definition:
  LigandBindingAssay('LigandBindingAssay'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureTechnique(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureTechnique fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureTechnique.elementOnly.withElement(element);
    }
    return StructureTechnique.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureTechnique withElement(Element? newElement) {
    return StructureTechnique.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
