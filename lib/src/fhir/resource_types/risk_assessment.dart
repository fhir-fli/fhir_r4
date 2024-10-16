import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RiskAssessment]
/// An assessment of the likely outcome(s) for a patient or other subject
/// as well as the likelihood of each outcome.
class RiskAssessment extends DomainResource {
  /// Primary constructor for [RiskAssessment]

  RiskAssessment({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.parent,
    required this.status,
    this.method,
    this.code,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.RiskAssessment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessment.fromJson(Map<String, dynamic> json) {
    return RiskAssessment(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? Reference.fromJson(
              json['basedOn'] as Map<String, dynamic>,
            )
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(
              json['parent'] as Map<String, dynamic>,
            )
          : null,
      status: ObservationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              json['occurrencePeriod'] as Map<String, dynamic>,
            )
          : null,
      condition: json['condition'] != null
          ? Reference.fromJson(
              json['condition'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basis: json['basis'] != null
          ? (json['basis'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prediction: json['prediction'] != null
          ? (json['prediction'] as List<dynamic>)
              .map<RiskAssessmentPrediction>(
                (v) => RiskAssessmentPrediction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mitigation: json['mitigation'] != null
          ? FhirString.fromJson({
              'value': json['mitigation'],
              '_value': json['_mitigation'],
            })
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [RiskAssessment] from a [String]
  /// or [YamlMap] object
  factory RiskAssessment.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RiskAssessment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('RiskAssessment cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RiskAssessment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RiskAssessment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RiskAssessment';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifier assigned to the risk assessment.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A reference to the request that is fulfilled by this risk assessment.
  final Reference? basedOn;

  /// [parent]
  /// A reference to a resource that this risk assessment is part of, such as
  /// a Procedure.
  final Reference? parent;

  /// [status]
  /// The status of the RiskAssessment, using the same statuses as an
  /// Observation.
  final ObservationStatus status;

  /// [method]
  /// The algorithm, process or mechanism used to evaluate the risk.
  final CodeableConcept? method;

  /// [code]
  /// The type of the risk assessment performed.
  final CodeableConcept? code;

  /// [subject]
  /// The patient or group the risk assessment applies to.
  final Reference subject;

  /// [encounter]
  /// The encounter where the assessment was performed.
  final Reference? encounter;

  /// [occurrenceDateTime]
  /// The date (and possibly time) the risk assessment was performed.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The date (and possibly time) the risk assessment was performed.
  final Period? occurrencePeriod;

  /// [condition]
  /// For assessments or prognosis specific to a particular condition,
  /// indicates the condition being assessed.
  final Reference? condition;

  /// [performer]
  /// The provider or software application that performed the assessment.
  final Reference? performer;

  /// [reasonCode]
  /// The reason the risk assessment was performed.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Resources supporting the reason the risk assessment was performed.
  final List<Reference>? reasonReference;

  /// [basis]
  /// Indicates the source data considered as part of the assessment (for
  /// example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  final List<Reference>? basis;

  /// [prediction]
  /// Describes the expected outcome for the subject.
  final List<RiskAssessmentPrediction>? prediction;

  /// [mitigation]
  /// A description of the steps that might be taken to reduce the identified
  /// risk(s).
  final FhirString? mitigation;

  /// [note]
  /// Additional comments about the risk assessment.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null) {
      final fieldJson9 = basedOn!.toJson();
      json['basedOn'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_basedOn'] = fieldJson9['_value'];
      }
    }

    if (parent != null) {
      final fieldJson10 = parent!.toJson();
      json['parent'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_parent'] = fieldJson10['_value'];
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (method != null) {
      final fieldJson12 = method!.toJson();
      json['method'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_method'] = fieldJson12['_value'];
      }
    }

    if (code != null) {
      final fieldJson13 = code!.toJson();
      json['code'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_code'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = subject.toJson();
    json['subject'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_subject'] = fieldJson14['_value'];
    }

    if (encounter != null) {
      final fieldJson15 = encounter!.toJson();
      json['encounter'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_encounter'] = fieldJson15['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson16 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson16['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson17 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson17['_value'];
      }
    }

    if (condition != null) {
      final fieldJson18 = condition!.toJson();
      json['condition'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_condition'] = fieldJson18['_value'];
      }
    }

    if (performer != null) {
      final fieldJson19 = performer!.toJson();
      json['performer'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_performer'] = fieldJson19['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson20 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson21 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (basis != null && basis!.isNotEmpty) {
      final fieldJson22 = basis!.map((e) => e.toJson()).toList();
      json['basis'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_basis'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (prediction != null && prediction!.isNotEmpty) {
      final fieldJson23 = prediction!.map((e) => e.toJson()).toList();
      json['prediction'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_prediction'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (mitigation != null) {
      final fieldJson24 = mitigation!.toJson();
      json['mitigation'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_mitigation'] = fieldJson24['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson25 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  RiskAssessment clone() => throw UnimplementedError();
  @override
  RiskAssessment copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? basedOn,
    Reference? parent,
    ObservationStatus? status,
    CodeableConcept? method,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Reference? condition,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? basis,
    List<RiskAssessmentPrediction>? prediction,
    FhirString? mitigation,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      parent: parent ?? this.parent,
      status: status ?? this.status,
      method: method ?? this.method,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      condition: condition ?? this.condition,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      basis: basis ?? this.basis,
      prediction: prediction ?? this.prediction,
      mitigation: mitigation ?? this.mitigation,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [RiskAssessmentPrediction]
/// Describes the expected outcome for the subject.
class RiskAssessmentPrediction extends BackboneElement {
  /// Primary constructor for [RiskAssessmentPrediction]

  RiskAssessmentPrediction({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentPrediction.fromJson(Map<String, dynamic> json) {
    return RiskAssessmentPrediction(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              json['outcome'] as Map<String, dynamic>,
            )
          : null,
      probabilityDecimal: json['probabilityDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['probabilityDecimal'],
              '_value': json['_probabilityDecimal'],
            })
          : null,
      probabilityRange: json['probabilityRange'] != null
          ? Range.fromJson(
              json['probabilityRange'] as Map<String, dynamic>,
            )
          : null,
      qualitativeRisk: json['qualitativeRisk'] != null
          ? CodeableConcept.fromJson(
              json['qualitativeRisk'] as Map<String, dynamic>,
            )
          : null,
      relativeRisk: json['relativeRisk'] != null
          ? FhirDecimal.fromJson({
              'value': json['relativeRisk'],
              '_value': json['_relativeRisk'],
            })
          : null,
      whenPeriod: json['whenPeriod'] != null
          ? Period.fromJson(
              json['whenPeriod'] as Map<String, dynamic>,
            )
          : null,
      whenRange: json['whenRange'] != null
          ? Range.fromJson(
              json['whenRange'] as Map<String, dynamic>,
            )
          : null,
      rationale: json['rationale'] != null
          ? FhirString.fromJson({
              'value': json['rationale'],
              '_value': json['_rationale'],
            })
          : null,
    );
  }

  /// Deserialize [RiskAssessmentPrediction] from a [String]
  /// or [YamlMap] object
  factory RiskAssessmentPrediction.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessmentPrediction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RiskAssessmentPrediction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'RiskAssessmentPrediction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RiskAssessmentPrediction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessmentPrediction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RiskAssessmentPrediction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RiskAssessmentPrediction';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [outcome]
  /// One of the potential outcomes for the patient (e.g. remission, death, a
  /// particular condition).
  final CodeableConcept? outcome;

  /// [probabilityDecimal]
  /// Indicates how likely the outcome is (in the specified timeframe).
  final FhirDecimal? probabilityDecimal;

  /// [probabilityRange]
  /// Indicates how likely the outcome is (in the specified timeframe).
  final Range? probabilityRange;

  /// [qualitativeRisk]
  /// Indicates how likely the outcome is (in the specified timeframe),
  /// expressed as a qualitative value (e.g. low, medium, or high).
  final CodeableConcept? qualitativeRisk;

  /// [relativeRisk]
  /// Indicates the risk for this particular subject (with their specific
  /// characteristics) divided by the risk of the population in general.
  /// (Numbers greater than 1 = higher risk than the population, numbers less
  /// than 1 = lower risk.).
  final FhirDecimal? relativeRisk;

  /// [whenPeriod]
  /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final Period? whenPeriod;

  /// [whenRange]
  /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final Range? whenRange;

  /// [rationale]
  /// Additional information explaining the basis for the prediction.
  final FhirString? rationale;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (outcome != null) {
      final fieldJson3 = outcome!.toJson();
      json['outcome'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_outcome'] = fieldJson3['_value'];
      }
    }

    if (probabilityDecimal != null) {
      final fieldJson4 = probabilityDecimal!.toJson();
      json['probabilityDecimal'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_probabilityDecimal'] = fieldJson4['_value'];
      }
    }

    if (probabilityRange != null) {
      final fieldJson5 = probabilityRange!.toJson();
      json['probabilityRange'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_probabilityRange'] = fieldJson5['_value'];
      }
    }

    if (qualitativeRisk != null) {
      final fieldJson6 = qualitativeRisk!.toJson();
      json['qualitativeRisk'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_qualitativeRisk'] = fieldJson6['_value'];
      }
    }

    if (relativeRisk != null) {
      final fieldJson7 = relativeRisk!.toJson();
      json['relativeRisk'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_relativeRisk'] = fieldJson7['_value'];
      }
    }

    if (whenPeriod != null) {
      final fieldJson8 = whenPeriod!.toJson();
      json['whenPeriod'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_whenPeriod'] = fieldJson8['_value'];
      }
    }

    if (whenRange != null) {
      final fieldJson9 = whenRange!.toJson();
      json['whenRange'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_whenRange'] = fieldJson9['_value'];
      }
    }

    if (rationale != null) {
      final fieldJson10 = rationale!.toJson();
      json['rationale'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_rationale'] = fieldJson10['_value'];
      }
    }

    return json;
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
    Range? probabilityRange,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    Period? whenPeriod,
    Range? whenRange,
    FhirString? rationale,
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
      probabilityRange: probabilityRange ?? this.probabilityRange,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      whenPeriod: whenPeriod ?? this.whenPeriod,
      whenRange: whenRange ?? this.whenRange,
      rationale: rationale ?? this.rationale,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
