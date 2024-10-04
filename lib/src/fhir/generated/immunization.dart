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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final CodeableConcept vaccineCode;
  final Reference patient;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final String occurrenceString;
  final PrimitiveElement OccurrenceString;
  final FhirDateTime recorded;
  final PrimitiveElement Recorded;
  final FhirBoolean primarySource;
  final PrimitiveElement PrimarySource;
  final CodeableConcept reportOrigin;
  final Reference location;
  final Reference manufacturer;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final FhirDate expirationDate;
  final PrimitiveElement ExpirationDate;
  final CodeableConcept site;
  final CodeableConcept route;
  final Quantity doseQuantity;
  final List<ImmunizationPerformer> performer;
  final List<Annotation> note;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirBoolean isSubpotent;
  final PrimitiveElement IsSubpotent;
  final List<CodeableConcept> subpotentReason;
  final List<ImmunizationEducation> education;
  final List<CodeableConcept> programEligibility;
  final CodeableConcept fundingSource;
  final List<ImmunizationReaction> reaction;
  final List<ImmunizationProtocolApplied> protocolApplied;
}

@Data()
@JsonCodable()
class ImmunizationPerformer {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function;
  final Reference actor;
}

@Data()
@JsonCodable()
class ImmunizationEducation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String documentType;
  final PrimitiveElement DocumentType;
  final FhirUri reference;
  final PrimitiveElement Reference;
  final FhirDateTime publicationDate;
  final PrimitiveElement PublicationDate;
  final FhirDateTime presentationDate;
  final PrimitiveElement PresentationDate;
}

@Data()
@JsonCodable()
class ImmunizationReaction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference detail;
  final FhirBoolean reported;
  final PrimitiveElement Reported;
}

@Data()
@JsonCodable()
class ImmunizationProtocolApplied {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String series;
  final PrimitiveElement Series;
  final Reference authority;
  final List<CodeableConcept> targetDisease;
  final double doseNumberPositiveInt;
  final PrimitiveElement DoseNumberPositiveInt;
  final String doseNumberString;
  final PrimitiveElement DoseNumberString;
  final double seriesDosesPositiveInt;
  final PrimitiveElement SeriesDosesPositiveInt;
  final String seriesDosesString;
  final PrimitiveElement SeriesDosesString;
}

@Data()
@JsonCodable()
class ImmunizationEvaluation {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference authority;
  final CodeableConcept targetDisease;
  final Reference immunizationEvent;
  final CodeableConcept doseStatus;
  final List<CodeableConcept> doseStatusReason;
  final String description;
  final PrimitiveElement Description;
  final String series;
  final PrimitiveElement Series;
  final double doseNumberPositiveInt;
  final PrimitiveElement DoseNumberPositiveInt;
  final String doseNumberString;
  final PrimitiveElement DoseNumberString;
  final double seriesDosesPositiveInt;
  final PrimitiveElement SeriesDosesPositiveInt;
  final String seriesDosesString;
  final PrimitiveElement SeriesDosesString;
}

@Data()
@JsonCodable()
class ImmunizationRecommendation {
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
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference authority;
  final List<ImmunizationRecommendationRecommendation> recommendation;
}

@Data()
@JsonCodable()
class ImmunizationRecommendationRecommendation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> vaccineCode;
  final CodeableConcept targetDisease;
  final List<CodeableConcept> contraindicatedVaccineCode;
  final CodeableConcept forecastStatus;
  final List<CodeableConcept> forecastReason;
  final List<ImmunizationRecommendationDateCriterion> dateCriterion;
  final String description;
  final PrimitiveElement Description;
  final String series;
  final PrimitiveElement Series;
  final double doseNumberPositiveInt;
  final PrimitiveElement DoseNumberPositiveInt;
  final String doseNumberString;
  final PrimitiveElement DoseNumberString;
  final double seriesDosesPositiveInt;
  final PrimitiveElement SeriesDosesPositiveInt;
  final String seriesDosesString;
  final PrimitiveElement SeriesDosesString;
  final List<Reference> supportingImmunization;
  final List<Reference> supportingPatientInformation;
}

@Data()
@JsonCodable()
class ImmunizationRecommendationDateCriterion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirDateTime value;
  final PrimitiveElement Value;
}


