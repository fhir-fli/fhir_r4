/// How to interpret the context.
enum StructureMapContextType {
  /// Display: Type
  /// Definition: The context specifies a type.
  type,

  /// Display: Variable
  /// Definition: The context specifies a variable.
  variable,
  ;

  @override
  String toString() {
    switch (this) {
      case type:
        return 'type';
      case variable:
        return 'variable';
    }
  }

  /// Returns a [String] from a [StructureMapContextType] enum.
  String toJson() => toString();

  /// Returns a [StructureMapContextType] from a [String] enum.
  static StructureMapContextType fromString(String str) {
    switch (str) {
      case 'type':
        return StructureMapContextType.type;
      case 'variable':
        return StructureMapContextType.variable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StructureMapContextType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StructureMapContextType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
