import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImmunizationRecommendation extends DomainResource {
  final List<Identifier>? identifier;
  final Reference patient;
  final FhirDateTime date;
  final Element? dateElement;
  final Reference? authority;
  final List<BackboneElement> recommendation;
  final List<BackboneElement>? dateCriterion;

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
    required this.date,
this.dateElement,
    this.authority,
    required this.recommendation,
    this.dateCriterion,
  }) : super(resourceType: R4ResourceType.ImmunizationRecommendation);

@override
ImmunizationRecommendation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationRecommendationRecommendation extends BackboneElement {
  final List<CodeableConcept>? vaccineCode;
  final CodeableConcept? targetDisease;
  final List<CodeableConcept>? contraindicatedVaccineCode;
  final CodeableConcept forecastStatus;
  final List<CodeableConcept>? forecastReason;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? series;
  final Element? seriesElement;
  final FhirPositiveInt? doseNumberFhirPositiveInt;
  final Element? doseNumberFhirPositiveIntElement;
  final FhirString? doseNumberFhirString;
  final Element? doseNumberFhirStringElement;
  final FhirPositiveInt? seriesDosesFhirPositiveInt;
  final Element? seriesDosesFhirPositiveIntElement;
  final FhirString? seriesDosesFhirString;
  final Element? seriesDosesFhirStringElement;
  final List<Reference>? supportingImmunization;
  final List<Reference>? supportingPatientInformation;

  ImmunizationRecommendationRecommendation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    required this.forecastStatus,
    this.forecastReason,
    this.description,
this.descriptionElement,
    this.series,
this.seriesElement,
    this.doseNumberFhirPositiveInt,
this.doseNumberFhirPositiveIntElement,
    this.doseNumberFhirString,
this.doseNumberFhirStringElement,
    this.seriesDosesFhirPositiveInt,
this.seriesDosesFhirPositiveIntElement,
    this.seriesDosesFhirString,
this.seriesDosesFhirStringElement,
    this.supportingImmunization,
    this.supportingPatientInformation,
  });

@override
ImmunizationRecommendationRecommendation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  final CodeableConcept code;
  final FhirDateTime value;
  final Element? valueElement;

  ImmunizationRecommendationDateCriterion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
this.valueElement,
  });

@override
ImmunizationRecommendationDateCriterion clone() => throw UnimplementedError();
}

