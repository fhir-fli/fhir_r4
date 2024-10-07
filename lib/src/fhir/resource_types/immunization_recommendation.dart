import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationRecommendation] /// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting justification.
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

  /// [identifier] /// A unique identifier assigned to this particular recommendation record.
  final List<Identifier>? identifier;

  /// [patient] /// The patient the recommendation(s) are for.
  final Reference patient;

  /// [date] /// The date the immunization recommendation(s) were created.
  final FhirDateTime date;
  final Element? dateElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [recommendation] /// Vaccine administration recommendations.
  final List<ImmunizationRecommendationRecommendation> recommendation;
  @override
  ImmunizationRecommendation clone() => throw UnimplementedError();
  ImmunizationRecommendation copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    Reference? authority,
    List<ImmunizationRecommendationRecommendation>? recommendation,
  }) {
    return ImmunizationRecommendation(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      authority: authority ?? this.authority,
      recommendation: recommendation ?? this.recommendation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationRecommendationRecommendation] /// Vaccine administration recommendations.
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

  /// [vaccineCode] /// Vaccine(s) or vaccine group that pertain to the recommendation.
  final List<CodeableConcept>? vaccineCode;

  /// [targetDisease] /// The targeted disease for the recommendation.
  final CodeableConcept? targetDisease;

  /// [contraindicatedVaccineCode] /// Vaccine(s) which should not be used to fulfill the recommendation.
  final List<CodeableConcept>? contraindicatedVaccineCode;

  /// [forecastStatus] /// Indicates the patient status with respect to the path to immunity for the
  /// target disease.
  final CodeableConcept forecastStatus;

  /// [forecastReason] /// The reason for the assigned forecast status.
  final List<CodeableConcept>? forecastReason;

  /// [dateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
  /// latest date to administer, etc.
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;

  /// [description] /// Contains the description about the protocol under which the vaccine was
  /// administered.
  final FhirString? description;
  final Element? descriptionElement;

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  final FhirString? series;
  final Element? seriesElement;

  /// [doseNumberPositiveInt] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;

  /// [supportingImmunization] /// Immunization event history and/or evaluation that supports the status and
  /// recommendation.
  final List<Reference>? supportingImmunization;

  /// [supportingPatientInformation] /// Patient Information that supports the status and recommendation. This
  /// includes patient observations, adverse reactions and allergy/intolerance
  /// information.
  final List<Reference>? supportingPatientInformation;
  @override
  ImmunizationRecommendationRecommendation clone() =>
      throw UnimplementedError();
  ImmunizationRecommendationRecommendation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? vaccineCode,
    CodeableConcept? targetDisease,
    List<CodeableConcept>? contraindicatedVaccineCode,
    CodeableConcept? forecastStatus,
    List<CodeableConcept>? forecastReason,
    List<ImmunizationRecommendationDateCriterion>? dateCriterion,
    FhirString? description,
    Element? descriptionElement,
    FhirString? series,
    Element? seriesElement,
    FhirPositiveInt? doseNumberPositiveInt,
    Element? doseNumberPositiveIntElement,
    FhirString? doseNumberString,
    Element? doseNumberStringElement,
    FhirPositiveInt? seriesDosesPositiveInt,
    Element? seriesDosesPositiveIntElement,
    FhirString? seriesDosesString,
    Element? seriesDosesStringElement,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
  }) {
    return ImmunizationRecommendationRecommendation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      targetDisease: targetDisease ?? this.targetDisease,
      contraindicatedVaccineCode:
          contraindicatedVaccineCode ?? this.contraindicatedVaccineCode,
      forecastStatus: forecastStatus ?? this.forecastStatus,
      forecastReason: forecastReason ?? this.forecastReason,
      dateCriterion: dateCriterion ?? this.dateCriterion,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      series: series ?? this.series,
      seriesElement: seriesElement ?? this.seriesElement,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberPositiveIntElement:
          doseNumberPositiveIntElement ?? this.doseNumberPositiveIntElement,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      doseNumberStringElement:
          doseNumberStringElement ?? this.doseNumberStringElement,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesPositiveIntElement:
          seriesDosesPositiveIntElement ?? this.seriesDosesPositiveIntElement,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      seriesDosesStringElement:
          seriesDosesStringElement ?? this.seriesDosesStringElement,
      supportingImmunization:
          supportingImmunization ?? this.supportingImmunization,
      supportingPatientInformation:
          supportingPatientInformation ?? this.supportingPatientInformation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationRecommendationDateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
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

  /// [code] /// Date classification of recommendation. For example, earliest date to give,
  /// latest date to give, etc.
  final CodeableConcept code;

  /// [value] /// The date whose meaning is specified by dateCriterion.code.
  final FhirDateTime value;
  final Element? valueElement;
  @override
  ImmunizationRecommendationDateCriterion clone() => throw UnimplementedError();
  ImmunizationRecommendationDateCriterion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirDateTime? value,
    Element? valueElement,
  }) {
    return ImmunizationRecommendationDateCriterion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}
