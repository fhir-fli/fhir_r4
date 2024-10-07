import 'package:json_annotation/json_annotation.dart';

/// Possible types of subjects.
enum SubjectType {
  @JsonValue('Patient')
  Patient,
  @JsonValue('Practitioner')
  Practitioner,
  @JsonValue('Organization')
  Organization,
  @JsonValue('Location')
  Location,
  @JsonValue('Device')
  Device,
;

@override
  String toString() {
      switch(this) {
        case Patient: return 'Patient';
        case Practitioner: return 'Practitioner';
        case Organization: return 'Organization';
        case Location: return 'Location';
        case Device: return 'Device';
      }
      }
String toJson() => toString();
  SubjectType fromString(String str) {
    switch(str) {
      case 'Patient': return SubjectType.Patient;
      case 'Practitioner': return SubjectType.Practitioner;
      case 'Organization': return SubjectType.Organization;
      case 'Location': return SubjectType.Location;
      case 'Device': return SubjectType.Device;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubjectType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

