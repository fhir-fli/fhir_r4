import 'package:json_annotation/json_annotation.dart';

/// The type of link between this patient resource and another patient resource.
enum LinkType {
  /// Display: Replaced-by
  /// Definition: The patient resource containing this link must no longer be used. The link points forward to another patient resource that must be used in lieu of the patient resource that contains this link.
  @JsonValue('replaced-by')
  replaced_by,
  /// Display: Replaces
  /// Definition: The patient resource containing this link is the current active patient record. The link points back to an inactive patient resource that has been merged into this resource, and should be consulted to retrieve additional referenced information.
  @JsonValue('replaces')
  replaces,
  /// Display: Refer
  /// Definition: The patient resource containing this link is in use and valid but not considered the main source of information about a patient. The link points forward to another patient resource that should be consulted to retrieve additional patient information.
  @JsonValue('refer')
  refer,
  /// Display: See also
  /// Definition: The patient resource containing this link is in use and valid, but points to another patient resource that is known to contain data about the same person. Data in this resource might overlap or contradict information found in the other patient resource. This link does not indicate any relative importance of the resources concerned, and both should be regarded as equally valid.
  @JsonValue('seealso')
  seealso,
;

@override
  String toString() {
      switch(this) {
        case replaced_by: return 'replaced-by';
        case replaces: return 'replaces';
        case refer: return 'refer';
        case seealso: return 'seealso';
      }
      }
String toJson() => toString();
  LinkType fromString(String str) {
    switch(str) {
      case 'replaced-by': return LinkType.replaced_by;
      case 'replaces': return LinkType.replaces;
      case 'refer': return LinkType.refer;
      case 'seealso': return LinkType.seealso;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 LinkType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
