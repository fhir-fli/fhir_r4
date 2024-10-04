import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FamilyMemberHistory {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept dataAbsentReason;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept relationship;
  final CodeableConcept sex;
  final Period bornPeriod;
  final String bornDate;
  final PrimitiveElement BornDate;
  final String bornString;
  final PrimitiveElement BornString;
  final Age ageAge;
  final Range ageRange;
  final String ageString;
  final PrimitiveElement AgeString;
  final FhirBoolean estimatedAge;
  final PrimitiveElement EstimatedAge;
  final bool deceasedBoolean;
  final PrimitiveElement DeceasedBoolean;
  final Age deceasedAge;
  final Range deceasedRange;
  final String deceasedDate;
  final PrimitiveElement DeceasedDate;
  final String deceasedString;
  final PrimitiveElement DeceasedString;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<FamilyMemberHistoryCondition> condition;
}

@Data()
@JsonCodable()
class FamilyMemberHistoryCondition {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept outcome;
  final FhirBoolean contributedToDeath;
  final PrimitiveElement ContributedToDeath;
  final Age onsetAge;
  final Range onsetRange;
  final Period onsetPeriod;
  final String onsetString;
  final PrimitiveElement OnsetString;
  final List<Annotation> note;
}


