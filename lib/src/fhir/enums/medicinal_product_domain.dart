import 'package:json_annotation/json_annotation.dart';

/// Applicable domain for this product (e.g. human, veterinary)
enum MedicinalProductDomain {
  /// Display: Human use
  /// Definition: Product intended for use with humans
  @JsonValue('Human')
  Human,
  /// Display: Veterinary use
  /// Definition: Product intended for use with animals
  @JsonValue('Veterinary')
  Veterinary,
  /// Display: Human and Veterinary use
  /// Definition: Product intended for use with both humans and animals
  @JsonValue('HumanAndVeterinary')
  HumanAndVeterinary,
;

@override
  String toString() {
      switch(this) {
        case Human: return 'Human';
        case Veterinary: return 'Veterinary';
        case HumanAndVeterinary: return 'HumanAndVeterinary';
      }
      }
String toJson() => toString();
  MedicinalProductDomain fromString(String str) {
    switch(str) {
      case 'Human': return MedicinalProductDomain.Human;
      case 'Veterinary': return MedicinalProductDomain.Veterinary;
      case 'HumanAndVeterinary': return MedicinalProductDomain.HumanAndVeterinary;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicinalProductDomain fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

