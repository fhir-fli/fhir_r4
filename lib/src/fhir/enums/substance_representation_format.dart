/// A format of a substance representation.
enum SubstanceRepresentationFormat {
  /// Display: InChI
  InChI,

  /// Display: SMILES
  SMILES,

  /// Display: MOLFILE
  MOLFILE,

  /// Display: CDX
  CDX,

  /// Display: SDF
  SDF,

  /// Display: PDB
  PDB,

  /// Display: mmCIF
  mmCIF,
  ;

  @override
  String toString() {
    switch (this) {
      case InChI:
        return 'InChI';
      case SMILES:
        return 'SMILES';
      case MOLFILE:
        return 'MOLFILE';
      case CDX:
        return 'CDX';
      case SDF:
        return 'SDF';
      case PDB:
        return 'PDB';
      case mmCIF:
        return 'mmCIF';
    }
  }

  /// Returns a [String] from a [SubstanceRepresentationFormat] enum.
  String toJson() => toString();

  /// Returns a [SubstanceRepresentationFormat] from a [String] enum.
  static SubstanceRepresentationFormat fromString(String str) {
    switch (str) {
      case 'InChI':
        return SubstanceRepresentationFormat.InChI;
      case 'SMILES':
        return SubstanceRepresentationFormat.SMILES;
      case 'MOLFILE':
        return SubstanceRepresentationFormat.MOLFILE;
      case 'CDX':
        return SubstanceRepresentationFormat.CDX;
      case 'SDF':
        return SubstanceRepresentationFormat.SDF;
      case 'PDB':
        return SubstanceRepresentationFormat.PDB;
      case 'mmCIF':
        return SubstanceRepresentationFormat.mmCIF;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubstanceRepresentationFormat] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubstanceRepresentationFormat fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
