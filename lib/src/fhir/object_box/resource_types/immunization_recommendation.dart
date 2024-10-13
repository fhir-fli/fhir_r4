// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunizationRecommendation {
  ObjectBoxImmunizationRecommendation({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxReference? patient,
    required this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? authority,
    List<ObjectBoxImmunizationRecommendationRecommendation>? recommendation,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.patient.target = patient;
    this.dateElement.target = dateElement;
    this.authority.target = authority;
    this.recommendation.addAll(recommendation ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> authority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxImmunizationRecommendationRecommendation> recommendation =
      ToMany<ObjectBoxImmunizationRecommendationRecommendation>();
}

@Entity()
class ObjectBoxImmunizationRecommendationRecommendation {
  ObjectBoxImmunizationRecommendationRecommendation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? vaccineCode,
    ObjectBoxCodeableConcept? targetDisease,
    List<ObjectBoxCodeableConcept>? contraindicatedVaccineCode,
    ObjectBoxCodeableConcept? forecastStatus,
    List<ObjectBoxCodeableConcept>? forecastReason,
    List<ObjectBoxImmunizationRecommendationDateCriterion>? dateCriterion,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.series,
    ObjectBoxElement? seriesElement,
    this.doseNumberPositiveInt,
    ObjectBoxElement? doseNumberPositiveIntElement,
    this.doseNumberString,
    ObjectBoxElement? doseNumberStringElement,
    this.seriesDosesPositiveInt,
    ObjectBoxElement? seriesDosesPositiveIntElement,
    this.seriesDosesString,
    ObjectBoxElement? seriesDosesStringElement,
    List<ObjectBoxReference>? supportingImmunization,
    List<ObjectBoxReference>? supportingPatientInformation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.vaccineCode.addAll(vaccineCode ?? []);
    this.targetDisease.target = targetDisease;
    this.contraindicatedVaccineCode.addAll(contraindicatedVaccineCode ?? []);
    this.forecastStatus.target = forecastStatus;
    this.forecastReason.addAll(forecastReason ?? []);
    this.dateCriterion.addAll(dateCriterion ?? []);
    this.descriptionElement.target = descriptionElement;
    this.seriesElement.target = seriesElement;
    this.doseNumberPositiveIntElement.target = doseNumberPositiveIntElement;
    this.doseNumberStringElement.target = doseNumberStringElement;
    this.seriesDosesPositiveIntElement.target = seriesDosesPositiveIntElement;
    this.seriesDosesStringElement.target = seriesDosesStringElement;
    this.supportingImmunization.addAll(supportingImmunization ?? []);
    this
        .supportingPatientInformation
        .addAll(supportingPatientInformation ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> vaccineCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> targetDisease =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> contraindicatedVaccineCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> forecastStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> forecastReason =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationRecommendationDateCriterion> dateCriterion =
      ToMany<ObjectBoxImmunizationRecommendationDateCriterion>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? series;
  ToOne<ObjectBoxElement> seriesElement = ToOne<ObjectBoxElement>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement> doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement> doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement> seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement> seriesDosesStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> supportingImmunization =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingPatientInformation =
      ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxImmunizationRecommendationDateCriterion {
  ObjectBoxImmunizationRecommendationDateCriterion({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}
