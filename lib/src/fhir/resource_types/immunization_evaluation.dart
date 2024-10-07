import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'immunization_evaluation.g.dart';

/// [ImmunizationEvaluation] /// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in relation
/// to those recommendations.
@JsonSerializable()
class ImmunizationEvaluation extends DomainResource {
  ImmunizationEvaluation({
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
    required this.status,
    this.statusElement,
    required this.patient,
    this.date,
    this.dateElement,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.ImmunizationEvaluation,
            fhirType: 'ImmunizationEvaluation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this immunization evaluation record.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [patient] /// The individual for whom the evaluation is being done.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [date] /// The date the evaluation of the vaccine administration event was performed.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP).
  @JsonKey(name: 'authority')
  final Reference? authority;

  /// [targetDisease] /// The vaccine preventable disease the dose is being evaluated against.
  @JsonKey(name: 'targetDisease')
  final CodeableConcept targetDisease;

  /// [immunizationEvent] /// The vaccine administration event being evaluated.
  @JsonKey(name: 'immunizationEvent')
  final Reference immunizationEvent;

  /// [doseStatus] /// Indicates if the dose is valid or not valid with respect to the published
  /// recommendations.
  @JsonKey(name: 'doseStatus')
  final CodeableConcept doseStatus;

  /// [doseStatusReason] /// Provides an explanation as to why the vaccine administration event is valid
  /// or not relative to the published recommendations.
  @JsonKey(name: 'doseStatusReason')
  final List<CodeableConcept>? doseStatusReason;

  /// [description] /// Additional information about the evaluation.
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

  /// [doseNumberPositiveInt] /// Nominal position in a series.
  @JsonKey(name: 'doseNumberPositiveInt')
  final FhirPositiveInt? doseNumberPositiveInt;
  @JsonKey(name: '_doseNumberPositiveInt')
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position in a series.
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
  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationEvaluationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);

  @override
  ImmunizationEvaluation clone() => throw UnimplementedError();
  @override
  ImmunizationEvaluation copyWith({
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
    FhirCode? status,
    Element? statusElement,
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationEvaluation(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationEvaluation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEvaluation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationEvaluation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationEvaluation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationEvaluation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEvaluation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
