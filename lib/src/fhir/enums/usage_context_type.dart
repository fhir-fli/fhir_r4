import 'package:json_annotation/json_annotation.dart';

/// A code that specifies a type of context being specified by a usage context.
enum UsageContextType {
  /// Display: Gender
  /// Definition: The gender of the patient. For this context type, appropriate values can be found in the http://hl7.org/fhir/ValueSet/administrative-gender value set.
  @JsonValue('gender')
  gender,
  /// Display: Age Range
  /// Definition: The age of the patient. For this context type, the value could be a range that specifies the applicable ages or a code from an appropriate value set such as the MeSH value set http://terminology.hl7.org/ValueSet/v3-AgeGroupObservationValue.
  @JsonValue('age')
  age,
  /// Display: Clinical Focus
  /// Definition: The clinical concept(s) addressed by the artifact. For example, disease, diagnostic test interpretation, medication ordering as in http://hl7.org/fhir/ValueSet/condition-code.
  @JsonValue('focus')
  focus,
  /// Display: User Type
  /// Definition: The clinical specialty of the context in which the patient is being treated - For example, PCP, Patient, Cardiologist, Behavioral Professional, Oral Health Professional, Prescriber, etc... taken from a specialty value set such as the NUCC Health Care provider taxonomy value set http://hl7.org/fhir/ValueSet/provider-taxonomy.
  @JsonValue('user')
  user,
  /// Display: Workflow Setting
  /// Definition: The settings in which the artifact is intended for use. For example, admission, pre-op, etc. For example, the ActEncounterCode value set http://terminology.hl7.org/ValueSet/v3-ActEncounterCode.
  @JsonValue('workflow')
  workflow,
  /// Display: Workflow Task
  /// Definition: The context for the clinical task(s) represented by this artifact. For example, this could be any task context represented by the HL7 ActTaskCode value set http://terminology.hl7.org/ValueSet/v3-ActTaskCode. General categories include: order entry, patient documentation and patient information review.
  @JsonValue('task')
  task,
  /// Display: Clinical Venue
  /// Definition: The venue in which an artifact could be used. For example, Outpatient, Inpatient, Home, Nursing home. The code value may originate from the HL7 ServiceDeliveryLocationRoleType value set (http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType).
  @JsonValue('venue')
  venue,
  /// Display: Species
  /// Definition: The species to which an artifact applies. For example, SNOMED - 387961004 | Kingdom Animalia (organism).
  @JsonValue('species')
  species,
  /// Display: Program
  /// Definition: A program/project of work for which this artifact is applicable.
  @JsonValue('program')
  program,
;

@override
  String toString() {
      switch(this) {
        case gender: return 'gender';
        case age: return 'age';
        case focus: return 'focus';
        case user: return 'user';
        case workflow: return 'workflow';
        case task: return 'task';
        case venue: return 'venue';
        case species: return 'species';
        case program: return 'program';
      }
      }
String toJson() => toString();
  UsageContextType fromString(String str) {
    switch(str) {
      case 'gender': return UsageContextType.gender;
      case 'age': return UsageContextType.age;
      case 'focus': return UsageContextType.focus;
      case 'user': return UsageContextType.user;
      case 'workflow': return UsageContextType.workflow;
      case 'task': return UsageContextType.task;
      case 'venue': return UsageContextType.venue;
      case 'species': return UsageContextType.species;
      case 'program': return UsageContextType.program;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 UsageContextType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

