import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [RiskAssessment] /// An assessment of the likely outcome(s) for a patient or other subject as
/// well as the likelihood of each outcome.
@JsonSerializable()
class RiskAssessment extends DomainResource {
  RiskAssessment({
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
    this.basedOn,
    this.parent,
    required this.status,
    this.statusElement,
    this.method,
    this.code,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.mitigationElement,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.RiskAssessment);
  @override
  String get fhirType => 'RiskAssessment';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier assigned to the risk assessment.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [basedOn] /// A reference to the request that is fulfilled by this risk assessment.
  @JsonKey(name: 'basedOn')
  final Reference? basedOn;

  /// [parent] /// A reference to a resource that this risk assessment is part of, such as a
  /// Procedure.
  @JsonKey(name: 'parent')
  final Reference? parent;

  /// [status] /// The status of the RiskAssessment, using the same statuses as an
  /// Observation.
  @JsonKey(name: 'status')
  final ObservationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [method] /// The algorithm, process or mechanism used to evaluate the risk.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [code] /// The type of the risk assessment performed.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [subject] /// The patient or group the risk assessment applies to.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The encounter where the assessment was performed.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [occurrenceDateTime] /// The date (and possibly time) the risk assessment was performed.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date (and possibly time) the risk assessment was performed.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [condition] /// For assessments or prognosis specific to a particular condition, indicates
  /// the condition being assessed.
  @JsonKey(name: 'condition')
  final Reference? condition;

  /// [performer] /// The provider or software application that performed the assessment.
  @JsonKey(name: 'performer')
  final Reference? performer;

  /// [reasonCode] /// The reason the risk assessment was performed.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Resources supporting the reason the risk assessment was performed.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [basis] /// Indicates the source data considered as part of the assessment (for
  /// example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  @JsonKey(name: 'basis')
  final List<Reference>? basis;

  /// [prediction] /// Describes the expected outcome for the subject.
  @JsonKey(name: 'prediction')
  final List<RiskAssessmentPrediction>? prediction;

  /// [mitigation] /// A description of the steps that might be taken to reduce the identified
  /// risk(s).
  @JsonKey(name: 'mitigation')
  final FhirString? mitigation;
  @JsonKey(name: '_mitigation')
  final Element? mitigationElement;

  /// [note] /// Additional comments about the risk assessment.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (basedOn != null) {
      json['basedOn'] = basedOn!.toJson();
    }
    if (parent != null) {
      json['parent'] = parent!.toJson();
    }
    json['status'] = status.toJson();
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.value;
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }
    if (condition != null) {
      json['condition'] = condition!.toJson();
    }
    if (performer != null) {
      json['performer'] = performer!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (basis != null && basis!.isNotEmpty) {
      json['basis'] = basis!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (prediction != null && prediction!.isNotEmpty) {
      json['prediction'] = prediction!
          .map<dynamic>((RiskAssessmentPrediction v) => v.toJson())
          .toList();
    }
    if (mitigation?.value != null) {
      json['mitigation'] = mitigation!.value;
    }
    if (mitigationElement != null) {
      json['_mitigation'] = mitigationElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory RiskAssessment.fromJson(Map<String, dynamic> json) {
    return RiskAssessment(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? Reference.fromJson(json['basedOn'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
      status:
          ObservationStatus.fromJson(json['status'] as Map<String, dynamic>),
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>)
          : null,
      condition: json['condition'] != null
          ? Reference.fromJson(json['condition'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basis: json['basis'] != null
          ? (json['basis'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prediction: json['prediction'] != null
          ? (json['prediction'] as List<dynamic>)
              .map<RiskAssessmentPrediction>((dynamic v) =>
                  RiskAssessmentPrediction.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      mitigation:
          json['mitigation'] != null ? FhirString(json['mitigation']) : null,
      mitigationElement: json['_mitigation'] != null
          ? Element.fromJson(json['_mitigation'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  RiskAssessment clone() => throw UnimplementedError();
  @override
  RiskAssessment copyWith({
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
    Reference? basedOn,
    Reference? parent,
    ObservationStatus? status,
    Element? statusElement,
    CodeableConcept? method,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Reference? condition,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? basis,
    List<RiskAssessmentPrediction>? prediction,
    FhirString? mitigation,
    Element? mitigationElement,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RiskAssessment(
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
      basedOn: basedOn ?? this.basedOn,
      parent: parent ?? this.parent,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      method: method ?? this.method,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      condition: condition ?? this.condition,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      basis: basis ?? this.basis,
      prediction: prediction ?? this.prediction,
      mitigation: mitigation ?? this.mitigation,
      mitigationElement: mitigationElement ?? this.mitigationElement,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RiskAssessment.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RiskAssessment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RiskAssessment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RiskAssessment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RiskAssessment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RiskAssessmentPrediction] /// Describes the expected outcome for the subject.
@JsonSerializable()
class RiskAssessmentPrediction extends BackboneElement {
  RiskAssessmentPrediction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.probabilityDecimalElement,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.relativeRiskElement,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.rationaleElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'RiskAssessmentPrediction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [outcome] /// One of the potential outcomes for the patient (e.g. remission, death, a
  /// particular condition).
  @JsonKey(name: 'outcome')
  final CodeableConcept? outcome;

  /// [probabilityDecimal] /// Indicates how likely the outcome is (in the specified timeframe).
  @JsonKey(name: 'probabilityDecimal')
  final FhirDecimal? probabilityDecimal;
  @JsonKey(name: '_probabilityDecimal')
  final Element? probabilityDecimalElement;

  /// [probabilityRange] /// Indicates how likely the outcome is (in the specified timeframe).
  @JsonKey(name: 'probabilityRange')
  final Range? probabilityRange;

  /// [qualitativeRisk] /// Indicates how likely the outcome is (in the specified timeframe), expressed
  /// as a qualitative value (e.g. low, medium, or high).
  @JsonKey(name: 'qualitativeRisk')
  final CodeableConcept? qualitativeRisk;

  /// [relativeRisk] /// Indicates the risk for this particular subject (with their specific
  /// characteristics) divided by the risk of the population in general. (Numbers
  /// greater than 1 = higher risk than the population, numbers less than 1 =
  /// lower risk.).
  @JsonKey(name: 'relativeRisk')
  final FhirDecimal? relativeRisk;
  @JsonKey(name: '_relativeRisk')
  final Element? relativeRiskElement;

  /// [whenPeriod] /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  @JsonKey(name: 'whenPeriod')
  final Period? whenPeriod;

  /// [whenRange] /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  @JsonKey(name: 'whenRange')
  final Range? whenRange;

  /// [rationale] /// Additional information explaining the basis for the prediction.
  @JsonKey(name: 'rationale')
  final FhirString? rationale;
  @JsonKey(name: '_rationale')
  final Element? rationaleElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    if (probabilityDecimal?.value != null) {
      json['probabilityDecimal'] = probabilityDecimal!.value;
    }
    if (probabilityDecimalElement != null) {
      json['_probabilityDecimal'] = probabilityDecimalElement!.toJson();
    }
    if (probabilityRange != null) {
      json['probabilityRange'] = probabilityRange!.toJson();
    }
    if (qualitativeRisk != null) {
      json['qualitativeRisk'] = qualitativeRisk!.toJson();
    }
    if (relativeRisk?.value != null) {
      json['relativeRisk'] = relativeRisk!.value;
    }
    if (relativeRiskElement != null) {
      json['_relativeRisk'] = relativeRiskElement!.toJson();
    }
    if (whenPeriod != null) {
      json['whenPeriod'] = whenPeriod!.toJson();
    }
    if (whenRange != null) {
      json['whenRange'] = whenRange!.toJson();
    }
    if (rationale?.value != null) {
      json['rationale'] = rationale!.value;
    }
    if (rationaleElement != null) {
      json['_rationale'] = rationaleElement!.toJson();
    }
    return json;
  }

  factory RiskAssessmentPrediction.fromJson(Map<String, dynamic> json) {
    return RiskAssessmentPrediction(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>)
          : null,
      probabilityDecimal: json['probabilityDecimal'] != null
          ? FhirDecimal(json['probabilityDecimal'])
          : null,
      probabilityDecimalElement: json['_probabilityDecimal'] != null
          ? Element.fromJson(
              json['_probabilityDecimal'] as Map<String, dynamic>)
          : null,
      probabilityRange: json['probabilityRange'] != null
          ? Range.fromJson(json['probabilityRange'] as Map<String, dynamic>)
          : null,
      qualitativeRisk: json['qualitativeRisk'] != null
          ? CodeableConcept.fromJson(
              json['qualitativeRisk'] as Map<String, dynamic>)
          : null,
      relativeRisk: json['relativeRisk'] != null
          ? FhirDecimal(json['relativeRisk'])
          : null,
      relativeRiskElement: json['_relativeRisk'] != null
          ? Element.fromJson(json['_relativeRisk'] as Map<String, dynamic>)
          : null,
      whenPeriod: json['whenPeriod'] != null
          ? Period.fromJson(json['whenPeriod'] as Map<String, dynamic>)
          : null,
      whenRange: json['whenRange'] != null
          ? Range.fromJson(json['whenRange'] as Map<String, dynamic>)
          : null,
      rationale:
          json['rationale'] != null ? FhirString(json['rationale']) : null,
      rationaleElement: json['_rationale'] != null
          ? Element.fromJson(json['_rationale'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  RiskAssessmentPrediction clone() => throw UnimplementedError();
  @override
  RiskAssessmentPrediction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? outcome,
    FhirDecimal? probabilityDecimal,
    Element? probabilityDecimalElement,
    Range? probabilityRange,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    Element? relativeRiskElement,
    Period? whenPeriod,
    Range? whenRange,
    FhirString? rationale,
    Element? rationaleElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RiskAssessmentPrediction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      probabilityDecimal: probabilityDecimal ?? this.probabilityDecimal,
      probabilityDecimalElement:
          probabilityDecimalElement ?? this.probabilityDecimalElement,
      probabilityRange: probabilityRange ?? this.probabilityRange,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      relativeRiskElement: relativeRiskElement ?? this.relativeRiskElement,
      whenPeriod: whenPeriod ?? this.whenPeriod,
      whenRange: whenRange ?? this.whenRange,
      rationale: rationale ?? this.rationale,
      rationaleElement: rationaleElement ?? this.rationaleElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RiskAssessmentPrediction.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessmentPrediction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RiskAssessmentPrediction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RiskAssessmentPrediction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RiskAssessmentPrediction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RiskAssessmentPrediction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
