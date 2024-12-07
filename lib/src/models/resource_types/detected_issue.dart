import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DetectedIssue]
/// Indicates an actual or potential clinical issue with or between one or
/// more active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition
/// conflict, etc.
class DetectedIssue extends DomainResource {
  /// Primary constructor for
  /// [DetectedIssue]

  const DetectedIssue({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.code,
    this.severity,
    this.patient,
    this.identifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.reference,
    this.mitigation,
  }) : super(
          resourceType: R4ResourceType.DetectedIssue,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    return DetectedIssue(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      status: ObservationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      severity: (json['severity'] != null || json['_severity'] != null)
          ? DetectedIssueSeverity.fromJson({
              'value': json['severity'],
              '_value': json['_severity'],
            })
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      identifiedDateTime: (json['identifiedDateTime'] != null ||
              json['_identifiedDateTime'] != null)
          ? FhirDateTime.fromJson({
              'value': json['identifiedDateTime'],
              '_value': json['_identifiedDateTime'],
            })
          : null,
      identifiedPeriod: json['identifiedPeriod'] != null
          ? Period.fromJson(
              json['identifiedPeriod'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      implicated: json['implicated'] != null
          ? (json['implicated'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      evidence: json['evidence'] != null
          ? (json['evidence'] as List<dynamic>)
              .map<DetectedIssueEvidence>(
                (v) => DetectedIssueEvidence.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: (json['detail'] != null || json['_detail'] != null)
          ? FhirString.fromJson({
              'value': json['detail'],
              '_value': json['_detail'],
            })
          : null,
      reference: (json['reference'] != null || json['_reference'] != null)
          ? FhirUri.fromJson({
              'value': json['reference'],
              '_value': json['_reference'],
            })
          : null,
      mitigation: json['mitigation'] != null
          ? (json['mitigation'] as List<dynamic>)
              .map<DetectedIssueMitigation>(
                (v) => DetectedIssueMitigation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DetectedIssue]
  /// from a [String] or [YamlMap] object
  factory DetectedIssue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssue';

  /// [identifier]
  /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the status of the detected issue.
  final ObservationStatus status;

  /// [code]
  /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// [severity]
  /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  final DetectedIssueSeverity? severity;

  /// [patient]
  /// Indicates the patient whose record the detected issue is associated
  /// with.
  final Reference? patient;

  /// [identifiedDateTime]
  /// The date or period when the detected issue was initially identified.
  final FhirDateTime? identifiedDateTime;

  /// [identifiedPeriod]
  /// The date or period when the detected issue was initially identified.
  final Period? identifiedPeriod;

  /// [author]
  /// Individual or device responsible for the issue being raised. For
  /// example, a decision support application or a pharmacist conducting a
  /// medication review.
  final Reference? author;

  /// [implicated]
  /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  final List<Reference>? implicated;

  /// [evidence]
  /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or
  /// MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// [detail]
  /// A textual explanation of the detected issue.
  final FhirString? detail;

  /// [reference]
  /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  final FhirUri? reference;

  /// [mitigation]
  /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue
  /// from manifesting. Can also reflect an observation of known mitigating
  /// factors that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('status', status);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    addField('severity', severity);
    if (patient != null) {
      json['patient'] = patient!.toJson();
    }

    addField('identifiedDateTime', identifiedDateTime);
    if (identifiedPeriod != null) {
      json['identifiedPeriod'] = identifiedPeriod!.toJson();
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (implicated != null && implicated!.isNotEmpty) {
      json['implicated'] = implicated!.map((e) => e.toJson()).toList();
    }

    if (evidence != null && evidence!.isNotEmpty) {
      json['evidence'] = evidence!.map((e) => e.toJson()).toList();
    }

    addField('detail', detail);
    addField('reference', reference);
    if (mitigation != null && mitigation!.isNotEmpty) {
      json['mitigation'] = mitigation!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  DetectedIssue clone() => throw UnimplementedError();
  @override
  DetectedIssue copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ObservationStatus? status,
    CodeableConcept? code,
    DetectedIssueSeverity? severity,
    Reference? patient,
    FhirDateTime? identifiedDateTime,
    Period? identifiedPeriod,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    FhirUri? reference,
    List<DetectedIssueMitigation>? mitigation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DetectedIssue(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      code: code ?? this.code,
      severity: severity ?? this.severity,
      patient: patient ?? this.patient,
      identifiedDateTime: identifiedDateTime ?? this.identifiedDateTime,
      identifiedPeriod: identifiedPeriod ?? this.identifiedPeriod,
      author: author ?? this.author,
      implicated: implicated ?? this.implicated,
      evidence: evidence ?? this.evidence,
      detail: detail ?? this.detail,
      reference: reference ?? this.reference,
      mitigation: mitigation ?? this.mitigation,
    );
  }
}

/// [DetectedIssueEvidence]
/// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or
/// MeasureReport.
class DetectedIssueEvidence extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueEvidence]

  const DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    return DetectedIssueEvidence(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DetectedIssueEvidence]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueEvidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueEvidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueEvidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueEvidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueEvidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssueEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueEvidence';

  /// [code]
  /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to resources that constitute evidence for the detected issue such
  /// as a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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
  DetectedIssueEvidence clone() => throw UnimplementedError();
  @override
  DetectedIssueEvidence copyWith({
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
    return DetectedIssueEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
    );
  }
}

/// [DetectedIssueMitigation]
/// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue
/// from manifesting. Can also reflect an observation of known mitigating
/// factors that may reduce/eliminate the need for any action.
class DetectedIssueMitigation extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueMitigation]

  const DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.author,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueMitigation.fromJson(
    Map<String, dynamic> json,
  ) {
    return DetectedIssueMitigation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      action: CodeableConcept.fromJson(
        json['action'] as Map<String, dynamic>,
      ),
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DetectedIssueMitigation]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueMitigation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueMitigation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueMitigation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueMitigation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueMitigation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueMitigation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssueMitigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueMitigation';

  /// [action]
  /// Describes the action that was taken or the observation that was made
  /// that reduces/eliminates the risk associated with the identified issue.
  final CodeableConcept action;

  /// [date]
  /// Indicates when the mitigating action was documented.
  final FhirDateTime? date;

  /// [author]
  /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  final Reference? author;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['action'] = action.toJson();

    addField('date', date);
    if (author != null) {
      json['author'] = author!.toJson();
    }

    return json;
  }

  @override
  DetectedIssueMitigation clone() => throw UnimplementedError();
  @override
  DetectedIssueMitigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Reference? author,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DetectedIssueMitigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      date: date ?? this.date,
      author: author ?? this.author,
    );
  }
}
