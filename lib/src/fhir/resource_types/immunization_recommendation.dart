import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'immunization_recommendation.g.dart';

/// [ImmunizationRecommendation] /// A patient's point-in-time set of recommendations (i.e. forecasting)
/// according to a published schedule with optional supporting justification.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ImmunizationRecommendation,
            fhirType: 'ImmunizationRecommendation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this particular recommendation record.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [patient] /// The patient the recommendation(s) are for.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [date] /// The date the immunization recommendation(s) were created.
  @JsonKey(name: 'date')
  final FhirDateTime date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP).
  @JsonKey(name: 'authority')
  final Reference? authority;

  /// [recommendation] /// Vaccine administration recommendations.
  @JsonKey(name: 'recommendation')
  final List<ImmunizationRecommendationRecommendation> recommendation;
  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationRecommendationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationRecommendationToJson(this);

  @override
  ImmunizationRecommendation clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationRecommendation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationRecommendationRecommendation] /// Vaccine administration recommendations.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationRecommendationRecommendation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [vaccineCode] /// Vaccine(s) or vaccine group that pertain to the recommendation.
  @JsonKey(name: 'vaccineCode')
  final List<CodeableConcept>? vaccineCode;

  /// [targetDisease] /// The targeted disease for the recommendation.
  @JsonKey(name: 'targetDisease')
  final ImmunizationRecommendationTargetDiseaseCodes? targetDisease;

  /// [contraindicatedVaccineCode] /// Vaccine(s) which should not be used to fulfill the recommendation.
  @JsonKey(name: 'contraindicatedVaccineCode')
  final List<CodeableConcept>? contraindicatedVaccineCode;

  /// [forecastStatus] /// Indicates the patient status with respect to the path to immunity for the
  /// target disease.
  @JsonKey(name: 'forecastStatus')
  final ImmunizationRecommendationStatusCodes forecastStatus;

  /// [forecastReason] /// The reason for the assigned forecast status.
  @JsonKey(name: 'forecastReason')
  final List<ImmunizationRecommendationReasonCodes>? forecastReason;

  /// [dateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
  /// latest date to administer, etc.
  @JsonKey(name: 'dateCriterion')
  final List<ImmunizationRecommendationDateCriterion>? dateCriterion;

  /// [description] /// Contains the description about the protocol under which the vaccine was
  /// administered.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  @JsonKey(name: 'series')
  final FhirString? series;
  @JsonKey(name: '_series')
  final Element? seriesElement;

  /// [doseNumberPositiveInt] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  @JsonKey(name: 'doseNumberPositiveInt')
  final FhirPositiveInt? doseNumberPositiveInt;
  @JsonKey(name: '_doseNumberPositiveInt')
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position of the recommended dose in a series (e.g. dose 2 is the
  /// next recommended dose).
  @JsonKey(name: 'doseNumberString')
  final FhirString? doseNumberString;
  @JsonKey(name: '_doseNumberString')
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  @JsonKey(name: 'seriesDosesPositiveInt')
  final FhirPositiveInt? seriesDosesPositiveInt;
  @JsonKey(name: '_seriesDosesPositiveInt')
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  @JsonKey(name: 'seriesDosesString')
  final FhirString? seriesDosesString;
  @JsonKey(name: '_seriesDosesString')
  final Element? seriesDosesStringElement;

  /// [supportingImmunization] /// Immunization event history and/or evaluation that supports the status and
  /// recommendation.
  @JsonKey(name: 'supportingImmunization')
  final List<Reference>? supportingImmunization;

  /// [supportingPatientInformation] /// Patient Information that supports the status and recommendation. This
  /// includes patient observations, adverse reactions and allergy/intolerance
  /// information.
  @JsonKey(name: 'supportingPatientInformation')
  final List<Reference>? supportingPatientInformation;
  factory ImmunizationRecommendationRecommendation.fromJson(
          Map<String, dynamic> json) =>
      _$ImmunizationRecommendationRecommendationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ImmunizationRecommendationRecommendationToJson(this);

  @override
  ImmunizationRecommendationRecommendation clone() =>
      throw UnimplementedError();
  @override
  ImmunizationRecommendationRecommendation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? vaccineCode,
    ImmunizationRecommendationTargetDiseaseCodes? targetDisease,
    List<CodeableConcept>? contraindicatedVaccineCode,
    ImmunizationRecommendationStatusCodes? forecastStatus,
    List<ImmunizationRecommendationReasonCodes>? forecastReason,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationRecommendationRecommendation.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationRecommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendationRecommendation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendationRecommendation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendationRecommendation.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendationRecommendation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationRecommendationDateCriterion] /// Vaccine date recommendations. For example, earliest date to administer,
/// latest date to administer, etc.
@JsonSerializable()
class ImmunizationRecommendationDateCriterion extends BackboneElement {
  ImmunizationRecommendationDateCriterion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationRecommendationDateCriterion');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Date classification of recommendation. For example, earliest date to give,
  /// latest date to give, etc.
  @JsonKey(name: 'code')
  final ImmunizationRecommendationDateCriterionCodes code;

  /// [value] /// The date whose meaning is specified by dateCriterion.code.
  @JsonKey(name: 'value')
  final FhirDateTime value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory ImmunizationRecommendationDateCriterion.fromJson(
          Map<String, dynamic> json) =>
      _$ImmunizationRecommendationDateCriterionFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ImmunizationRecommendationDateCriterionToJson(this);

  @override
  ImmunizationRecommendationDateCriterion clone() => throw UnimplementedError();
  @override
  ImmunizationRecommendationDateCriterion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ImmunizationRecommendationDateCriterionCodes? code,
    FhirDateTime? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationRecommendationDateCriterion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationRecommendationDateCriterion.fromYaml(dynamic yaml) => yaml
          is String
      ? ImmunizationRecommendationDateCriterion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationRecommendationDateCriterion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationRecommendationDateCriterion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendationDateCriterion.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationRecommendationDateCriterion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
