import 'package:json_annotation/json_annotation.dart';

/// A format of a substance representation.
enum SubstanceRepresentationFormat {
  /// Display: InChI
  @JsonValue('InChI')
  InChI,
  /// Display: SMILES
  @JsonValue('SMILES')
  SMILES,
  /// Display: MOLFILE
  @JsonValue('MOLFILE')
  MOLFILE,
  /// Display: CDX
  @JsonValue('CDX')
  CDX,
  /// Display: SDF
  @JsonValue('SDF')
  SDF,
  /// Display: PDB
  @JsonValue('PDB')
  PDB,
  /// Display: mmCIF
  @JsonValue('mmCIF')
  mmCIF,
;

@override
  String toString() {
      switch(this) {
        case InChI: return 'InChI';
        case SMILES: return 'SMILES';
        case MOLFILE: return 'MOLFILE';
        case CDX: return 'CDX';
        case SDF: return 'SDF';
        case PDB: return 'PDB';
        case mmCIF: return 'mmCIF';
      }
      }
String toJson() => toString();
  SubstanceRepresentationFormat fromString(String str) {
    switch(str) {
      case 'InChI': return SubstanceRepresentationFormat.InChI;
      case 'SMILES': return SubstanceRepresentationFormat.SMILES;
      case 'MOLFILE': return SubstanceRepresentationFormat.MOLFILE;
      case 'CDX': return SubstanceRepresentationFormat.CDX;
      case 'SDF': return SubstanceRepresentationFormat.SDF;
      case 'PDB': return SubstanceRepresentationFormat.PDB;
      case 'mmCIF': return SubstanceRepresentationFormat.mmCIF;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubstanceRepresentationFormat fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

