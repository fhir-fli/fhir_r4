import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Immunization {
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
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final CodeableConcept vaccineCode;
  final Reference patient;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final String occurrenceString;
  final PrimitiveElement occurrenceStringElement;
  final FhirDateTime recorded;
  final PrimitiveElement recordedElement;
  final FhirBoolean primarySource;
  final PrimitiveElement primarySourceElement;
  final CodeableConcept reportOrigin;
  final Reference location;
  final Reference manufacturer;
  final String lotNumber;
  final PrimitiveElement lotNumberElement;
  final FhirDate expirationDate;
  final PrimitiveElement expirationDateElement;
  final CodeableConcept site;
  final CodeableConcept route;
  final Quantity doseQuantity;
  final List<ImmunizationPerformer> performer;
  final List<Annotation> note;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirBoolean isSubpotent;
  final PrimitiveElement isSubpotentElement;
  final List<CodeableConcept> subpotentReason;
  final List<ImmunizationEducation> education;
  final List<CodeableConcept> programEligibility;
  final CodeableConcept fundingSource;
  final List<ImmunizationReaction> reaction;
  final List<ImmunizationProtocolApplied> protocolApplied;
  const Immunization({
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
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.vaccineCode,
    required this.patient,
    required this.encounter,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrenceString,
    required this.occurrenceStringElement,
    required this.recorded,
    required this.recordedElement,
    required this.primarySource,
    required this.primarySourceElement,
    required this.reportOrigin,
    required this.location,
    required this.manufacturer,
    required this.lotNumber,
    required this.lotNumberElement,
    required this.expirationDate,
    required this.expirationDateElement,
    required this.site,
    required this.route,
    required this.doseQuantity,
    required this.performer,
    required this.note,
    required this.reasonCode,
    required this.reasonReference,
    required this.isSubpotent,
    required this.isSubpotentElement,
    required this.subpotentReason,
    required this.education,
    required this.programEligibility,
    required this.fundingSource,
    required this.reaction,
    required this.protocolApplied,
  });
}

@Data()
@JsonCodable()
class ImmunizationPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  const ImmunizationPerformer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.function_,
    required this.actor,
  });
}

@Data()
@JsonCodable()
class ImmunizationEducation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String documentType;
  final PrimitiveElement documentTypeElement;
  final FhirUri reference;
  final PrimitiveElement referenceElement;
  final FhirDateTime publicationDate;
  final PrimitiveElement publicationDateElement;
  final FhirDateTime presentationDate;
  final PrimitiveElement presentationDateElement;
  const ImmunizationEducation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.documentType,
    required this.documentTypeElement,
    required this.reference,
    required this.referenceElement,
    required this.publicationDate,
    required this.publicationDateElement,
    required this.presentationDate,
    required this.presentationDateElement,
  });
}

@Data()
@JsonCodable()
class ImmunizationReaction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference detail;
  final FhirBoolean reported;
  final PrimitiveElement reportedElement;
  const ImmunizationReaction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.date,
    required this.dateElement,
    required this.detail,
    required this.reported,
    required this.reportedElement,
  });
}

@Data()
@JsonCodable()
class ImmunizationProtocolApplied {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String series;
  final PrimitiveElement seriesElement;
  final Reference authority;
  final List<CodeableConcept> targetDisease;
  final double doseNumberPositiveInt;
  final PrimitiveElement doseNumberPositiveIntElement;
  final String doseNumberString;
  final PrimitiveElement doseNumberStringElement;
  final double seriesDosesPositiveInt;
  final PrimitiveElement seriesDosesPositiveIntElement;
  final String seriesDosesString;
  final PrimitiveElement seriesDosesStringElement;
  const ImmunizationProtocolApplied({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.series,
    required this.seriesElement,
    required this.authority,
    required this.targetDisease,
    required this.doseNumberPositiveInt,
    required this.doseNumberPositiveIntElement,
    required this.doseNumberString,
    required this.doseNumberStringElement,
    required this.seriesDosesPositiveInt,
    required this.seriesDosesPositiveIntElement,
    required this.seriesDosesString,
    required this.seriesDosesStringElement,
  });
}

@Data()
@JsonCodable()
class ImmunizationEvaluation {
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
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference authority;
  final CodeableConcept targetDisease;
  final Reference immunizationEvent;
  final CodeableConcept doseStatus;
  final List<CodeableConcept> doseStatusReason;
  final String description;
  final PrimitiveElement descriptionElement;
  final String series;
  final PrimitiveElement seriesElement;
  final double doseNumberPositiveInt;
  final PrimitiveElement doseNumberPositiveIntElement;
  final String doseNumberString;
  final PrimitiveElement doseNumberStringElement;
  final double seriesDosesPositiveInt;
  final PrimitiveElement seriesDosesPositiveIntElement;
  final String seriesDosesString;
  final PrimitiveElement seriesDosesStringElement;
  const ImmunizationEvaluation({
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
    required this.status,
    required this.statusElement,
    required this.patient,
    required this.date,
    required this.dateElement,
    required this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    required this.doseStatusReason,
    required this.description,
    required this.descriptionElement,
    required this.series,
    required this.seriesElement,
    required this.doseNumberPositiveInt,
    required this.doseNumberPositiveIntElement,
    required this.doseNumberString,
    required this.doseNumberStringElement,
    required this.seriesDosesPositiveInt,
    required this.seriesDosesPositiveIntElement,
    required this.seriesDosesString,
    required this.seriesDosesStringElement,
  });
}

@Data()
@JsonCodable()
class ImmunizationRecommendation {
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
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference authority;
  final List<ImmunizationRecommendationRecommendation> recommendation;
  const ImmunizationRecommendation({
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
    required this.patient,
    required this.date,
    required this.dateElement,
    required this.authority,
    required this.recommendation,
  });
}

@Data()
@JsonCodable()
class ImmunizationRecommendationRecommendation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> vaccineCode;
  final CodeableConcept targetDisease;
  final List<CodeableConcept> contraindicatedVaccineCode;
  final CodeableConcept forecastStatus;
  final List<CodeableConcept> forecastReason;
  final List<ImmunizationRecommendationDateCriterion> dateCriterion;
  final String description;
  final PrimitiveElement descriptionElement;
  final String series;
  final PrimitiveElement seriesElement;
  final double doseNumberPositiveInt;
  final PrimitiveElement doseNumberPositiveIntElement;
  final String doseNumberString;
  final PrimitiveElement doseNumberStringElement;
  final double seriesDosesPositiveInt;
  final PrimitiveElement seriesDosesPositiveIntElement;
  final String seriesDosesString;
  final PrimitiveElement seriesDosesStringElement;
  final List<Reference> supportingImmunization;
  final List<Reference> supportingPatientInformation;
  const ImmunizationRecommendationRecommendation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.vaccineCode,
    required this.targetDisease,
    required this.contraindicatedVaccineCode,
    required this.forecastStatus,
    required this.forecastReason,
    required this.dateCriterion,
    required this.description,
    required this.descriptionElement,
    required this.series,
    required this.seriesElement,
    required this.doseNumberPositiveInt,
    required this.doseNumberPositiveIntElement,
    required this.doseNumberString,
    required this.doseNumberStringElement,
    required this.seriesDosesPositiveInt,
    required this.seriesDosesPositiveIntElement,
    required this.seriesDosesString,
    required this.seriesDosesStringElement,
    required this.supportingImmunization,
    required this.supportingPatientInformation,
  });
}

@Data()
@JsonCodable()
class ImmunizationRecommendationDateCriterion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirDateTime value;
  final PrimitiveElement valueElement;
  const ImmunizationRecommendationDateCriterion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.value,
    required this.valueElement,
  });
}


