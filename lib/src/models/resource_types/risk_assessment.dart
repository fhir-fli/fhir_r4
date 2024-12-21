import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RiskAssessment]
/// An assessment of the likely outcome(s) for a patient or other subject
/// as well as the likelihood of each outcome.
class RiskAssessment extends DomainResource {
  /// Primary constructor for
  /// [RiskAssessment]

  const RiskAssessment({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.parent,
    required this.status,
    this.method,
    this.code,
    required this.subject,
    this.encounter,
    this.occurrenceX,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.note,
  }) : super(
          resourceType: R4ResourceType.RiskAssessment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessment.fromJson(
    Map<String, dynamic> json,
  ) {
    return RiskAssessment(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      basedOn: JsonParser.parseObject<Reference>(
        json,
        'basedOn',
        Reference.fromJson,
      ),
      parent: JsonParser.parseObject<Reference>(
        json,
        'parent',
        Reference.fromJson,
      ),
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
      )!,
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXRiskAssessment>(json, {
        'occurrenceDateTime': FhirDateTime.fromJson,
        'occurrencePeriod': Period.fromJson,
      }),
      condition: JsonParser.parseObject<Reference>(
        json,
        'condition',
        Reference.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      basis: (json['basis'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      prediction: (json['prediction'] as List<dynamic>?)
          ?.map<RiskAssessmentPrediction>(
            (v) => RiskAssessmentPrediction.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      mitigation: JsonParser.parsePrimitive<FhirString>(
        json,
        'mitigation',
        FhirString.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RiskAssessment]
  /// from a [String] or [YamlMap] object
  factory RiskAssessment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessment.fromJsonString(
    String source,
  ) {
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

  /// [occurrenceX]
  /// The date (and possibly time) the risk assessment was performed.
  final OccurrenceXRiskAssessment? occurrenceX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (basedOn != null) {
      json['basedOn'] = basedOn!.toJson();
    }

    if (parent != null) {
      json['parent'] = parent!.toJson();
    }

    addField('status', status);
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

    if (occurrenceX != null) {
      addField('occurrence${occurrenceX!.fhirType.capitalize()}', occurrenceX);
    }

    if (condition != null) {
      json['condition'] = condition!.toJson();
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (basis != null && basis!.isNotEmpty) {
      json['basis'] = basis!.map((e) => e.toJson()).toList();
    }

    if (prediction != null && prediction!.isNotEmpty) {
      json['prediction'] = prediction!.map((e) => e.toJson()).toList();
    }

    if (mitigation != null) {
      addField('mitigation', mitigation);
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    OccurrenceXRiskAssessment? occurrenceX,
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
      occurrenceX: occurrenceX ?? this.occurrenceX,
      condition: condition ?? this.condition,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      basis: basis ?? this.basis,
      prediction: prediction ?? this.prediction,
      mitigation: mitigation ?? this.mitigation,
      note: note ?? this.note,
    );
  }
}

/// [RiskAssessmentPrediction]
/// Describes the expected outcome for the subject.
class RiskAssessmentPrediction extends BackboneElement {
  /// Primary constructor for
  /// [RiskAssessmentPrediction]

  const RiskAssessmentPrediction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcome,
    this.probabilityX,
    this.qualitativeRisk,
    this.relativeRisk,
    this.whenX,
    this.rationale,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) {
    return RiskAssessmentPrediction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
      ),
      probabilityX:
          JsonParser.parsePolymorphic<ProbabilityXRiskAssessmentPrediction>(
              json, {
        'probabilityDecimal': FhirDecimal.fromJson,
        'probabilityRange': Range.fromJson,
      }),
      qualitativeRisk: JsonParser.parseObject<CodeableConcept>(
        json,
        'qualitativeRisk',
        CodeableConcept.fromJson,
      ),
      relativeRisk: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'relativeRisk',
        FhirDecimal.fromJson,
      ),
      whenX: JsonParser.parsePolymorphic<WhenXRiskAssessmentPrediction>(json, {
        'whenPeriod': Period.fromJson,
        'whenRange': Range.fromJson,
      }),
      rationale: JsonParser.parsePrimitive<FhirString>(
        json,
        'rationale',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [RiskAssessmentPrediction]
  /// from a [String] or [YamlMap] object
  factory RiskAssessmentPrediction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessmentPrediction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessmentPrediction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessmentPrediction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessmentPrediction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessmentPrediction.fromJsonString(
    String source,
  ) {
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

  /// [outcome]
  /// One of the potential outcomes for the patient (e.g. remission, death, a
  /// particular condition).
  final CodeableConcept? outcome;

  /// [probabilityX]
  /// Indicates how likely the outcome is (in the specified timeframe).
  final ProbabilityXRiskAssessmentPrediction? probabilityX;

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

  /// [whenX]
  /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final WhenXRiskAssessmentPrediction? whenX;

  /// [rationale]
  /// Additional information explaining the basis for the prediction.
  final FhirString? rationale;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }

    if (probabilityX != null) {
      addField(
          'probability${probabilityX!.fhirType.capitalize()}', probabilityX);
    }

    if (qualitativeRisk != null) {
      json['qualitativeRisk'] = qualitativeRisk!.toJson();
    }

    if (relativeRisk != null) {
      addField('relativeRisk', relativeRisk);
    }

    if (whenX != null) {
      json['when${whenX!.fhirType.capitalize()}'] = whenX!.toJson();
    }

    if (rationale != null) {
      addField('rationale', rationale);
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
    ProbabilityXRiskAssessmentPrediction? probabilityX,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    WhenXRiskAssessmentPrediction? whenX,
    FhirString? rationale,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RiskAssessmentPrediction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      probabilityX: probabilityX ?? this.probabilityX,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      whenX: whenX ?? this.whenX,
      rationale: rationale ?? this.rationale,
    );
  }
}
