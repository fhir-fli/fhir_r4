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
    required this.date,
this.dateElement,
    this.authority,
    required this.recommendation,
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
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? series;
  final Element? seriesElement;
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;
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

