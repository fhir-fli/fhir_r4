import 'package:json_annotation/json_annotation.dart';

/// The method used to elucidate the structure or characterization of the drug substance.
enum StructureTechnique {
  /// Display: X-ray
  @JsonValue('X-Ray')
  X_Ray,
  /// Display: HPLC
  @JsonValue('HPLC')
  HPLC,
  /// Display: NMR
  @JsonValue('NMR')
  NMR,
  /// Display: Peptide mapping
  @JsonValue('PeptideMapping')
  PeptideMapping,
  /// Display: Ligand binding assay
  @JsonValue('LigandBindingAssay')
  LigandBindingAssay,
;

@override
  String toString() {
      switch(this) {
        case X_Ray: return 'X-Ray';
        case HPLC: return 'HPLC';
        case NMR: return 'NMR';
        case PeptideMapping: return 'PeptideMapping';
        case LigandBindingAssay: return 'LigandBindingAssay';
      }
      }
String toJson() => toString();
  StructureTechnique fromString(String str) {
    switch(str) {
      case 'X-Ray': return StructureTechnique.X_Ray;
      case 'HPLC': return StructureTechnique.HPLC;
      case 'NMR': return StructureTechnique.NMR;
      case 'PeptideMapping': return StructureTechnique.PeptideMapping;
      case 'LigandBindingAssay': return StructureTechnique.LigandBindingAssay;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 StructureTechnique fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

