/// How a type relates to its baseDefinition.
enum TypeDerivationRule {
  /// Display: Specialization
  /// Definition: This definition defines a new type that adds additional elements to the base type.
  specialization,

  /// Display: Constraint
  /// Definition: This definition adds additional rules to an existing concrete type.
  constraint,
  ;

  @override
  String toString() {
    switch (this) {
      case specialization:
        return 'specialization';
      case constraint:
        return 'constraint';
    }
  }

  /// Returns a [String] from a [TypeDerivationRule] enum.
  String toJson() => toString();

  /// Returns a [TypeDerivationRule] from a [String] enum.
  static TypeDerivationRule fromString(String str) {
    switch (str) {
      case 'specialization':
        return TypeDerivationRule.specialization;
      case 'constraint':
        return TypeDerivationRule.constraint;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [TypeDerivationRule] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TypeDerivationRule fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
