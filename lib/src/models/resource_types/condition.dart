import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Condition]
/// A clinical condition, problem, diagnosis, or other event, situation,
/// issue, or clinical concept that has risen to a level of concern.
class Condition extends DomainResource {
  /// Primary constructor for
  /// [Condition]

  const Condition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetX,
    this.abatementX,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  }) : super(
          resourceType: R4ResourceType.Condition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Condition.fromJson(
    Map<String, dynamic> json,
  ) {
    return Condition(
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
      clinicalStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'clinicalStatus',
        CodeableConcept.fromJson,
      ),
      verificationStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'verificationStatus',
        CodeableConcept.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      severity: JsonParser.parseObject<CodeableConcept>(
        json,
        'severity',
        CodeableConcept.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
      onsetX: JsonParser.parsePolymorphic<OnsetXCondition>(json, {
        'onsetDateTime': FhirDateTime.fromJson,
        'onsetAge': Age.fromJson,
        'onsetPeriod': Period.fromJson,
        'onsetRange': Range.fromJson,
        'onsetString': FhirString.fromJson,
      }),
      abatementX: JsonParser.parsePolymorphic<AbatementXCondition>(json, {
        'abatementDateTime': FhirDateTime.fromJson,
        'abatementAge': Age.fromJson,
        'abatementPeriod': Period.fromJson,
        'abatementRange': Range.fromJson,
        'abatementString': FhirString.fromJson,
      }),
      recordedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recordedDate',
        FhirDateTime.fromJson,
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
      ),
      stage: (json['stage'] as List<dynamic>?)
          ?.map<ConditionStage>(
            (v) => ConditionStage.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<ConditionEvidence>(
            (v) => ConditionEvidence.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Condition]
  /// from a [String] or [YamlMap] object
  factory Condition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Condition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Condition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Condition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Condition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Condition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Condition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Condition';

  /// [identifier]
  /// Business identifiers assigned to this condition by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the condition.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus]
  /// The verification status to support the clinical status of the
  /// condition.
  final CodeableConcept? verificationStatus;

  /// [category]
  /// A category assigned to the condition.
  final List<CodeableConcept>? category;

  /// [severity]
  /// A subjective assessment of the severity of the condition as evaluated
  /// by the clinician.
  final CodeableConcept? severity;

  /// [code]
  /// Identification of the condition, problem or diagnosis.
  final CodeableConcept? code;

  /// [bodySite]
  /// The anatomical location where this condition manifests itself.
  final List<CodeableConcept>? bodySite;

  /// [subject]
  /// Indicates the patient or group who the condition record is associated
  /// with.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [onsetX]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final OnsetXCondition? onsetX;

  /// [abatementX]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final AbatementXCondition? abatementX;

  /// [recordedDate]
  /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  final FhirDateTime? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// Individual who is making the condition statement.
  final Reference? asserter;

  /// [stage]
  /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  final List<ConditionStage>? stage;

  /// [evidence]
  /// Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  /// refuted the condition.
  final List<ConditionEvidence>? evidence;

  /// [note]
  /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis
  /// and prognosis.
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

    if (clinicalStatus != null) {
      json['clinicalStatus'] = clinicalStatus!.toJson();
    }

    if (verificationStatus != null) {
      json['verificationStatus'] = verificationStatus!.toJson();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (severity != null) {
      json['severity'] = severity!.toJson();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (bodySite != null && bodySite!.isNotEmpty) {
      json['bodySite'] = bodySite!.map((e) => e.toJson()).toList();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (onsetX != null) {
      addField('onset${onsetX!.fhirType.capitalize()}', onsetX);
    }

    if (abatementX != null) {
      addField('abatement${abatementX!.fhirType.capitalize()}', abatementX);
    }

    if (recordedDate != null) {
      addField('recordedDate', recordedDate);
    }

    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (asserter != null) {
      json['asserter'] = asserter!.toJson();
    }

    if (stage != null && stage!.isNotEmpty) {
      json['stage'] = stage!.map((e) => e.toJson()).toList();
    }

    if (evidence != null && evidence!.isNotEmpty) {
      json['evidence'] = evidence!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Condition clone() => throw UnimplementedError();
  @override
  Condition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    List<CodeableConcept>? category,
    CodeableConcept? severity,
    CodeableConcept? code,
    List<CodeableConcept>? bodySite,
    Reference? subject,
    Reference? encounter,
    OnsetXCondition? onsetX,
    AbatementXCondition? abatementX,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    List<ConditionStage>? stage,
    List<ConditionEvidence>? evidence,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Condition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      category: category ?? this.category,
      severity: severity ?? this.severity,
      code: code ?? this.code,
      bodySite: bodySite ?? this.bodySite,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      onsetX: onsetX ?? this.onsetX,
      abatementX: abatementX ?? this.abatementX,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      stage: stage ?? this.stage,
      evidence: evidence ?? this.evidence,
      note: note ?? this.note,
    );
  }
}

/// [ConditionStage]
/// Clinical stage or grade of a condition. May include formal severity
/// assessments.
class ConditionStage extends BackboneElement {
  /// Primary constructor for
  /// [ConditionStage]

  const ConditionStage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionStage.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConditionStage(
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
      summary: JsonParser.parseObject<CodeableConcept>(
        json,
        'summary',
        CodeableConcept.fromJson,
      ),
      assessment: (json['assessment'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ConditionStage]
  /// from a [String] or [YamlMap] object
  factory ConditionStage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionStage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionStage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionStage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionStage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionStage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionStage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConditionStage';

  /// [summary]
  /// A simple summary of the stage such as "Stage 3". The determination of
  /// the stage is disease-specific.
  final CodeableConcept? summary;

  /// [assessment]
  /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  final List<Reference>? assessment;

  /// [type]
  /// The kind of staging, such as pathological or clinical staging.
  final CodeableConcept? type;
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

    if (summary != null) {
      json['summary'] = summary!.toJson();
    }

    if (assessment != null && assessment!.isNotEmpty) {
      json['assessment'] = assessment!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    return json;
  }

  @override
  ConditionStage clone() => throw UnimplementedError();
  @override
  ConditionStage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConditionStage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      assessment: assessment ?? this.assessment,
      type: type ?? this.type,
    );
  }
}

/// [ConditionEvidence]
/// Supporting evidence / manifestations that are the basis of the
/// Condition's verification status, such as evidence that confirmed or
/// refuted the condition.
class ConditionEvidence extends BackboneElement {
  /// Primary constructor for
  /// [ConditionEvidence]

  const ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConditionEvidence(
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
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConditionEvidence]
  /// from a [String] or [YamlMap] object
  factory ConditionEvidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionEvidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionEvidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionEvidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionEvidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConditionEvidence';

  /// [code]
  /// A manifestation or symptom that led to the recording of this condition.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to other relevant information, including pathology reports.
  final List<Reference>? detail;
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

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConditionEvidence clone() => throw UnimplementedError();
  @override
  ConditionEvidence copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConditionEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
    );
  }
}
