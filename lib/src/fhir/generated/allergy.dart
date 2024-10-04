import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class AllergyIntolerance {
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
  final CodeableConcept clinicalStatus;
  final CodeableConcept verificationStatus;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final List<FhirCode> category;
  final List<PrimitiveElement> categoryElement;
  final FhirCode criticality;
  final PrimitiveElement criticalityElement;
  final CodeableConcept code;
  final Reference patient;
  final Reference encounter;
  final String onsetDateTime;
  final PrimitiveElement onsetDateTimeElement;
  final Age onsetAge;
  final Period onsetPeriod;
  final Range onsetRange;
  final String onsetString;
  final PrimitiveElement onsetStringElement;
  final FhirDateTime recordedDate;
  final PrimitiveElement recordedDateElement;
  final Reference recorder;
  final Reference asserter;
  final FhirDateTime lastOccurrence;
  final PrimitiveElement lastOccurrenceElement;
  final List<Annotation> note;
  final List<AllergyIntoleranceReaction> reaction;
}

@Data()
@JsonCodable()
class AllergyIntoleranceReaction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept substance;
  final List<CodeableConcept> manifestation;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirDateTime onset;
  final PrimitiveElement onsetElement;
  final FhirCode severity;
  final PrimitiveElement severityElement;
  final CodeableConcept exposureRoute;
  final List<Annotation> note;
}


