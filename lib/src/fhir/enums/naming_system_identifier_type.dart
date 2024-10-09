/// Identifies the style of unique identifier used to identify a namespace.
enum NamingSystemIdentifierType {
  /// Display: OID
  /// Definition: An ISO object identifier; e.g. 1.2.3.4.5.
  oid,

  /// Display: UUID
  /// Definition: A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
  uuid,

  /// Display: URI
  /// Definition: A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
  uri,

  /// Display: Other
  /// Definition: Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case oid:
        return 'oid';
      case uuid:
        return 'uuid';
      case uri:
        return 'uri';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  static NamingSystemIdentifierType fromString(String str) {
    switch (str) {
      case 'oid':
        return NamingSystemIdentifierType.oid;
      case 'uuid':
        return NamingSystemIdentifierType.uuid;
      case 'uri':
        return NamingSystemIdentifierType.uri;
      case 'other':
        return NamingSystemIdentifierType.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static NamingSystemIdentifierType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
