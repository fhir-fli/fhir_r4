import 'package:json_annotation/json_annotation.dart';

/// MedicationKnowledge Characteristic Codes
enum MedicationKnowledgeCharacteristicCodes {
  /// Display: Imprint Code
  /// Definition: Identyifying marks on product
  @JsonValue('imprintcd')
  imprintcd,
  /// Display: Size
  /// Definition: Description of size of the product
  @JsonValue('size')
  size,
  /// Display: Shape
  /// Definition: Description of the shape of the product
  @JsonValue('shape')
  shape,
  /// Display: Color
  /// Definition: Description of the color of the product
  @JsonValue('color')
  color,
  /// Display: Coating
  /// Definition: Description of the coating of the product
  @JsonValue('coating')
  coating,
  /// Display: Scoring
  /// Definition: Description of the scoring of the product
  @JsonValue('scoring')
  scoring,
  /// Display: Logo
  /// Definition: Description of the Logo of the product
  @JsonValue('logo')
  logo,
;

@override
  String toString() {
      switch(this) {
        case imprintcd: return 'imprintcd';
        case size: return 'size';
        case shape: return 'shape';
        case color: return 'color';
        case coating: return 'coating';
        case scoring: return 'scoring';
        case logo: return 'logo';
      }
      }
String toJson() => toString();
  MedicationKnowledgeCharacteristicCodes fromString(String str) {
    switch(str) {
      case 'imprintcd': return MedicationKnowledgeCharacteristicCodes.imprintcd;
      case 'size': return MedicationKnowledgeCharacteristicCodes.size;
      case 'shape': return MedicationKnowledgeCharacteristicCodes.shape;
      case 'color': return MedicationKnowledgeCharacteristicCodes.color;
      case 'coating': return MedicationKnowledgeCharacteristicCodes.coating;
      case 'scoring': return MedicationKnowledgeCharacteristicCodes.scoring;
      case 'logo': return MedicationKnowledgeCharacteristicCodes.logo;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationKnowledgeCharacteristicCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

