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
  const AllergyIntolerance({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.clinicalStatus,
    required this.verificationStatus,
    required this.type,
    required this.typeElement,
    required this.category,
    required this.categoryElement,
    required this.criticality,
    required this.criticalityElement,
    required this.code,
    required this.patient,
    required this.encounter,
    required this.onsetDateTime,
    required this.onsetDateTimeElement,
    required this.onsetAge,
    required this.onsetPeriod,
    required this.onsetRange,
    required this.onsetString,
    required this.onsetStringElement,
    required this.recordedDate,
    required this.recordedDateElement,
    required this.recorder,
    required this.asserter,
    required this.lastOccurrence,
    required this.lastOccurrenceElement,
    required this.note,
    required this.reaction,
  });
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
  const AllergyIntoleranceReaction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.substance,
    required this.manifestation,
    required this.description,
    required this.descriptionElement,
    required this.onset,
    required this.onsetElement,
    required this.severity,
    required this.severityElement,
    required this.exposureRoute,
    required this.note,
  });
}


