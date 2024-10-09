/// Identifies the purpose of the naming system.
enum NamingSystemType {
  /// Display: Code System
  /// Definition: The naming system is used to define concepts and symbols to represent those concepts; e.g. UCUM, LOINC, NDC code, local lab codes, etc.
  codesystem,

  /// Display: Identifier
  /// Definition: The naming system is used to manage identifiers (e.g. license numbers, order numbers, etc.).
  identifier,

  /// Display: Root
  /// Definition: The naming system is used as the root for other identifiers and naming systems.
  root,
  ;

  @override
  String toString() {
    switch (this) {
      case codesystem:
        return 'codesystem';
      case identifier:
        return 'identifier';
      case root:
        return 'root';
    }
  }

  String toJson() => toString();
  static NamingSystemType fromString(String str) {
    switch (str) {
      case 'codesystem':
        return NamingSystemType.codesystem;
      case 'identifier':
        return NamingSystemType.identifier;
      case 'root':
        return NamingSystemType.root;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static NamingSystemType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
