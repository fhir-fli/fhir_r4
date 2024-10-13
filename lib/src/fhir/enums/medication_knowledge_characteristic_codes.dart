/// MedicationKnowledge Characteristic Codes
enum MedicationKnowledgeCharacteristicCodes {
  /// Display: Imprint Code
  /// Definition: Identyifying marks on product
  imprintcd,

  /// Display: Size
  /// Definition: Description of size of the product
  size,

  /// Display: Shape
  /// Definition: Description of the shape of the product
  shape,

  /// Display: Color
  /// Definition: Description of the color of the product
  color,

  /// Display: Coating
  /// Definition: Description of the coating of the product
  coating,

  /// Display: Scoring
  /// Definition: Description of the scoring of the product
  scoring,

  /// Display: Logo
  /// Definition: Description of the Logo of the product
  logo,
  ;

  @override
  String toString() {
    switch (this) {
      case imprintcd:
        return 'imprintcd';
      case size:
        return 'size';
      case shape:
        return 'shape';
      case color:
        return 'color';
      case coating:
        return 'coating';
      case scoring:
        return 'scoring';
      case logo:
        return 'logo';
    }
  }

  /// Returns a [String] from a [MedicationKnowledgeCharacteristicCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationKnowledgeCharacteristicCodes] from a [String] enum.
  static MedicationKnowledgeCharacteristicCodes fromString(String str) {
    switch (str) {
      case 'imprintcd':
        return MedicationKnowledgeCharacteristicCodes.imprintcd;
      case 'size':
        return MedicationKnowledgeCharacteristicCodes.size;
      case 'shape':
        return MedicationKnowledgeCharacteristicCodes.shape;
      case 'color':
        return MedicationKnowledgeCharacteristicCodes.color;
      case 'coating':
        return MedicationKnowledgeCharacteristicCodes.coating;
      case 'scoring':
        return MedicationKnowledgeCharacteristicCodes.scoring;
      case 'logo':
        return MedicationKnowledgeCharacteristicCodes.logo;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationKnowledgeCharacteristicCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationKnowledgeCharacteristicCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
