import 'package:json_annotation/json_annotation.dart';

/// This value set includes the FHIR resource types, along with some other important content class codes
enum ConsentContentClass {
  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  @JsonValue('Resource')
  Resource,
  /// Display: Lipid Lab Report
  @JsonValue('http://hl7.org/fhir/StructureDefinition/lipidprofile')
  hl7_org_fhir_StructureDefinition_lipidprofile,
  /// Display: CDA Documents
  @JsonValue('application/hl7-cda+xml')
  application_hl7_cda_xml,
;

@override
  String toString() {
      switch(this) {
        case Resource: return 'Resource';
        case hl7_org_fhir_StructureDefinition_lipidprofile: return 'http://hl7.org/fhir/StructureDefinition/lipidprofile';
        case application_hl7_cda_xml: return 'application/hl7-cda+xml';
      }
      }
String toJson() => toString();
  ConsentContentClass fromString(String str) {
    switch(str) {
      case 'Resource': return ConsentContentClass.Resource;
      case 'http://hl7.org/fhir/StructureDefinition/lipidprofile': return ConsentContentClass.hl7_org_fhir_StructureDefinition_lipidprofile;
      case 'application/hl7-cda+xml': return ConsentContentClass.application_hl7_cda_xml;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ConsentContentClass fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

