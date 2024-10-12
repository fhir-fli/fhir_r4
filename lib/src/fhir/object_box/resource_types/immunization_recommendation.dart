// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunizationRecommendation {
  ObjectBoxImmunizationRecommendation({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.patient,
    required this.date,
    this.dateElement,
    this.authority,
    required this.recommendation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? authority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxImmunizationRecommendationRecommendation> recommendation =
      ToMany<ObjectBoxImmunizationRecommendationRecommendation>();
}

@Entity()
class ObjectBoxImmunizationRecommendationRecommendation {
  ObjectBoxImmunizationRecommendationRecommendation({
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
    this.descriptionElement,
    this.series,
    this.seriesElement,
    this.doseNumberPositiveInt,
    this.doseNumberPositiveIntElement,
    this.doseNumberString,
    this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
    this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
    this.seriesDosesStringElement,
    this.supportingImmunization,
    this.supportingPatientInformation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? vaccineCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? targetDisease =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? contraindicatedVaccineCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> forecastStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? forecastReason =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationRecommendationDateCriterion>? dateCriterion =
      ToMany<ObjectBoxImmunizationRecommendationDateCriterion>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? series;
  ToOne<ObjectBoxElement>? seriesElement = ToOne<ObjectBoxElement>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement>? doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement>? doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement>? seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement>? seriesDosesStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? supportingImmunization =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supportingPatientInformation =
      ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxImmunizationRecommendationDateCriterion {
  ObjectBoxImmunizationRecommendationDateCriterion({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}
