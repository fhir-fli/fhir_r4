import 'package:json_annotation/json_annotation.dart';

/// Identifies the style of unique identifier used to identify a namespace.
enum NamingSystemIdentifierType {
  /// Display: OID
  /// Definition: An ISO object identifier; e.g. 1.2.3.4.5.
  @JsonValue('oid')
  oid,
  /// Display: UUID
  /// Definition: A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
  @JsonValue('uuid')
  uuid,
  /// Display: URI
  /// Definition: A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
  @JsonValue('uri')
  uri,
  /// Display: Other
  /// Definition: Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
  @JsonValue('other')
  other,
;

@override
  String toString() {
      switch(this) {
        case oid: return 'oid';
        case uuid: return 'uuid';
        case uri: return 'uri';
        case other: return 'other';
      }
      }
String toJson() => toString();
  NamingSystemIdentifierType fromString(String str) {
    switch(str) {
      case 'oid': return NamingSystemIdentifierType.oid;
      case 'uuid': return NamingSystemIdentifierType.uuid;
      case 'uri': return NamingSystemIdentifierType.uri;
      case 'other': return NamingSystemIdentifierType.other;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 NamingSystemIdentifierType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
