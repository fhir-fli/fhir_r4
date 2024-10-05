import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImmunizationRecommendation extends DomainResource {
  final List<Identifier>? identifier;
  final Reference patient;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? authority;
  final List<ImmunizationRecommendationRecommendation> recommendation;

  ImmunizationRecommendation({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.patient,
    this.date,
    this.dateElement,
    this.authority,
    required this.recommendation,
  }): super(resourceType: R4ResourceType.ImmunizationRecommendation);

@override
ImmunizationRecommendation clone() => this;

}


@Data()
@JsonCodable()
class ImmunizationRecommendationRecommendation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? vaccineCode;
  final CodeableConcept? targetDisease;
  final List<CodeableConcept>? contraindicatedVaccineCode;
  final CodeableConcept forecastStatus;
  final List<CodeableConcept>? forecastReason;
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? series;
  final Element? seriesElement;
  final double? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;
  final double? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;
  final List<Reference>? supportingImmunization;
  final List<Reference>? supportingPatientInformation;

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

}


@Data()
@JsonCodable()
class ImmunizationRecommendationDateCriterion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept code;
  final FhirDateTime? value;
  final Element? valueElement;

  ImmunizationRecommendationDateCriterion({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.value,
    this.valueElement,
  });

}



