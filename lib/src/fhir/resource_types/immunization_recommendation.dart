import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ImmunizationRecommendation extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final Reference patient;
  final FhirDateTime date;
  final Element? dateElement;
  final Reference? authority;
  final List<ImmunizationRecommendationRecommendation> recommendation;
  @override
  ImmunizationRecommendation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationRecommendationRecommendation extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  ImmunizationRecommendationRecommendation clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  ImmunizationRecommendationDateCriterion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept code;
  final FhirDateTime value;
  final Element? valueElement;
  @override
  ImmunizationRecommendationDateCriterion clone() => throw UnimplementedError();
}
