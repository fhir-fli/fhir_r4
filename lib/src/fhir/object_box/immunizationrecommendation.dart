import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ImmunizationRecommendation extends Resource {
  ImmunizationRecommendation({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.patient,
    required this.date,
    this.authority,
    required this.recommendation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<Reference> patient = ToOne<Reference>();
  String date;
  ToOne<Reference>? authority = ToOne<Reference>();
  ToMany<ImmunizationRecommendationRecommendation> recommendation =
      ToMany<ImmunizationRecommendationRecommendation>();
}

@Entity()
class ImmunizationRecommendationRecommendation {
  ImmunizationRecommendationRecommendation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    required this.forecastStatus,
    this.forecastReason,
    this.dateCriterion,
    this.description,
    this.series,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    this.supportingImmunization,
    this.supportingPatientInformation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? vaccineCode = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? targetDisease = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? contraindicatedVaccineCode =
      ToMany<CodeableConcept>();
  ToOne<CodeableConcept> forecastStatus = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? forecastReason = ToMany<CodeableConcept>();
  ToMany<ImmunizationRecommendationDateCriterion>? dateCriterion =
      ToMany<ImmunizationRecommendationDateCriterion>();
  String? description;
  String? series;
  int? doseNumberPositiveInt;
  String? doseNumberString;
  int? seriesDosesPositiveInt;
  String? seriesDosesString;
  ToMany<Reference>? supportingImmunization = ToMany<Reference>();
  ToMany<Reference>? supportingPatientInformation = ToMany<Reference>();
}

@Entity()
class ImmunizationRecommendationDateCriterion {
  ImmunizationRecommendationDateCriterion({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  String value;
}
