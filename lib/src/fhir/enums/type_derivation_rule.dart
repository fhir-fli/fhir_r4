import 'package:json_annotation/json_annotation.dart';

/// How a type relates to its baseDefinition.
enum TypeDerivationRule {
  /// Display: Specialization
  /// Definition: This definition defines a new type that adds additional elements to the base type.
  @JsonValue('specialization')
  specialization,
  /// Display: Constraint
  /// Definition: This definition adds additional rules to an existing concrete type.
  @JsonValue('constraint')
  constraint,
;

@override
  String toString() {
      switch(this) {
        case specialization: return 'specialization';
        case constraint: return 'constraint';
      }
      }
String toJson() => toString();
  TypeDerivationRule fromString(String str) {
    switch(str) {
      case 'specialization': return TypeDerivationRule.specialization;
      case 'constraint': return TypeDerivationRule.constraint;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TypeDerivationRule fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
