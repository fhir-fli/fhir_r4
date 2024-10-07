import 'package:json_annotation/json_annotation.dart';

/// The relationship between two substance types.
enum SubstanceRelationshipType {
  /// Display: Salt to parent
  @JsonValue('Salt')
  Salt,
  /// Display: Active moiety
  @JsonValue('ActiveMoiety')
  ActiveMoiety,
  /// Display: Starting material for
  @JsonValue('StartingMaterial')
  StartingMaterial,
  /// Display: Polymorph of
  @JsonValue('Polymorph')
  Polymorph,
  /// Display: Impurity of
  @JsonValue('Impurity')
  Impurity,
;

@override
  String toString() {
      switch(this) {
        case Salt: return 'Salt';
        case ActiveMoiety: return 'ActiveMoiety';
        case StartingMaterial: return 'StartingMaterial';
        case Polymorph: return 'Polymorph';
        case Impurity: return 'Impurity';
      }
      }
String toJson() => toString();
  SubstanceRelationshipType fromString(String str) {
    switch(str) {
      case 'Salt': return SubstanceRelationshipType.Salt;
      case 'ActiveMoiety': return SubstanceRelationshipType.ActiveMoiety;
      case 'StartingMaterial': return SubstanceRelationshipType.StartingMaterial;
      case 'Polymorph': return SubstanceRelationshipType.Polymorph;
      case 'Impurity': return SubstanceRelationshipType.Impurity;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubstanceRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

