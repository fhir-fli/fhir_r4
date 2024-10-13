/// Data types allowed to be used for search parameters.
enum SearchParamType {
  /// Display: Number
  /// Definition: Search parameter SHALL be a number (a whole number, or a decimal).
  number,

  /// Display: Date/DateTime
  /// Definition: Search parameter is on a date/time. The date format is the standard XML format, though other formats may be supported.
  date,

  /// Display: String
  /// Definition: Search parameter is a simple string, like a name part. Search is case-insensitive and accent-insensitive. May match just the start of a string. String parameters may contain spaces.
  string,

  /// Display: Token
  /// Definition: Search parameter on a coded element or identifier. May be used to search through the text, display, code and code/codesystem (for codes) and label, system and key (for identifier). Its value is either a string or a pair of namespace and value, separated by a "|", depending on the modifier used.
  token,

  /// Display: Reference
  /// Definition: A reference to another resource (Reference or canonical).
  reference,

  /// Display: Composite
  /// Definition: A composite search parameter that combines a search on two values together.
  composite,

  /// Display: Quantity
  /// Definition: A search parameter that searches on a quantity.
  quantity,

  /// Display: URI
  /// Definition: A search parameter that searches on a URI (RFC 3986).
  uri,

  /// Display: Special
  /// Definition: Special logic applies to this parameter per the description of the search parameter.
  special,
  ;

  @override
  String toString() {
    switch (this) {
      case number:
        return 'number';
      case date:
        return 'date';
      case string:
        return 'string';
      case token:
        return 'token';
      case reference:
        return 'reference';
      case composite:
        return 'composite';
      case quantity:
        return 'quantity';
      case uri:
        return 'uri';
      case special:
        return 'special';
    }
  }

  /// Returns a [String] from a [SearchParamType] enum.
  String toJson() => toString();

  /// Returns a [SearchParamType] from a [String] enum.
  static SearchParamType fromString(String str) {
    switch (str) {
      case 'number':
        return SearchParamType.number;
      case 'date':
        return SearchParamType.date;
      case 'string':
        return SearchParamType.string;
      case 'token':
        return SearchParamType.token;
      case 'reference':
        return SearchParamType.reference;
      case 'composite':
        return SearchParamType.composite;
      case 'quantity':
        return SearchParamType.quantity;
      case 'uri':
        return SearchParamType.uri;
      case 'special':
        return SearchParamType.special;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SearchParamType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SearchParamType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
