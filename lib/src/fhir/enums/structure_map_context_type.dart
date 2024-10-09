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

  String toJson() => toString();
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

  static StructureMapContextType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
