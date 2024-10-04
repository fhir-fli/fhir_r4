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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept dataAbsentReason;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept relationship;
  final CodeableConcept sex;
  final Period bornPeriod;
  final String bornDate;
  final PrimitiveElement bornDateElement;
  final String bornString;
  final PrimitiveElement bornStringElement;
  final Age ageAge;
  final Range ageRange;
  final String ageString;
  final PrimitiveElement ageStringElement;
  final FhirBoolean estimatedAge;
  final PrimitiveElement estimatedAgeElement;
  final bool deceasedBoolean;
  final PrimitiveElement deceasedBooleanElement;
  final Age deceasedAge;
  final Range deceasedRange;
  final String deceasedDate;
  final PrimitiveElement deceasedDateElement;
  final String deceasedString;
  final PrimitiveElement deceasedStringElement;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<FamilyMemberHistoryCondition> condition;
}

@Data()
@JsonCodable()
class FamilyMemberHistoryCondition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept outcome;
  final FhirBoolean contributedToDeath;
  final PrimitiveElement contributedToDeathElement;
  final Age onsetAge;
  final Range onsetRange;
  final Period onsetPeriod;
  final String onsetString;
  final PrimitiveElement onsetStringElement;
  final List<Annotation> note;
}


