import 'package:json_annotation/json_annotation.dart';

/// Allowed types for FHIR elements
enum ElementTypes {
  /// Display: String
  @JsonValue('http://hl7.org/fhirpath/System.String')
  hl7_org_fhirpath_System_String,
  /// Display: Boolean
  @JsonValue('http://hl7.org/fhirpath/System.Boolean')
  hl7_org_fhirpath_System_Boolean,
  /// Display: Date
  @JsonValue('http://hl7.org/fhirpath/System.Date')
  hl7_org_fhirpath_System_Date,
  /// Display: DateTime
  @JsonValue('http://hl7.org/fhirpath/System.DateTime')
  hl7_org_fhirpath_System_DateTime,
  /// Display: Decimal
  @JsonValue('http://hl7.org/fhirpath/System.Decimal')
  hl7_org_fhirpath_System_Decimal,
  /// Display: Integer
  @JsonValue('http://hl7.org/fhirpath/System.Integer')
  hl7_org_fhirpath_System_Integer,
  /// Display: Time
  @JsonValue('http://hl7.org/fhirpath/System.Time')
  hl7_org_fhirpath_System_Time,
;

@override
  String toString() {
      switch(this) {
        case hl7_org_fhirpath_System_String: return 'http://hl7.org/fhirpath/System.String';
        case hl7_org_fhirpath_System_Boolean: return 'http://hl7.org/fhirpath/System.Boolean';
        case hl7_org_fhirpath_System_Date: return 'http://hl7.org/fhirpath/System.Date';
        case hl7_org_fhirpath_System_DateTime: return 'http://hl7.org/fhirpath/System.DateTime';
        case hl7_org_fhirpath_System_Decimal: return 'http://hl7.org/fhirpath/System.Decimal';
        case hl7_org_fhirpath_System_Integer: return 'http://hl7.org/fhirpath/System.Integer';
        case hl7_org_fhirpath_System_Time: return 'http://hl7.org/fhirpath/System.Time';
      }
      }
String toJson() => toString();
  ElementTypes fromString(String str) {
    switch(str) {
      case 'http://hl7.org/fhirpath/System.String': return ElementTypes.hl7_org_fhirpath_System_String;
      case 'http://hl7.org/fhirpath/System.Boolean': return ElementTypes.hl7_org_fhirpath_System_Boolean;
      case 'http://hl7.org/fhirpath/System.Date': return ElementTypes.hl7_org_fhirpath_System_Date;
      case 'http://hl7.org/fhirpath/System.DateTime': return ElementTypes.hl7_org_fhirpath_System_DateTime;
      case 'http://hl7.org/fhirpath/System.Decimal': return ElementTypes.hl7_org_fhirpath_System_Decimal;
      case 'http://hl7.org/fhirpath/System.Integer': return ElementTypes.hl7_org_fhirpath_System_Integer;
      case 'http://hl7.org/fhirpath/System.Time': return ElementTypes.hl7_org_fhirpath_System_Time;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ElementTypes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

