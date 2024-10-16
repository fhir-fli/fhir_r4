import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DetectedIssue]
/// Indicates an actual or potential clinical issue with or between one or
/// more active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition
/// conflict, etc.
class DetectedIssue extends DomainResource {
  /// Primary constructor for [DetectedIssue]

  DetectedIssue({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DetectedIssue,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssue.fromJson(Map<String, dynamic> json) {
    return DetectedIssue(
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
      status: ObservationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      severity: json['severity'] != null
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
      identifiedDateTime: json['identifiedDateTime'] != null
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
      detail: json['detail'] != null
          ? FhirString.fromJson({
              'value': json['detail'],
              '_value': json['_detail'],
            })
          : null,
      reference: json['reference'] != null
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

  /// Deserialize [DetectedIssue] from a [String]
  /// or [YamlMap] object
  factory DetectedIssue.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DetectedIssue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DetectedIssue cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DetectedIssue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssue.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (code != null) {
      final fieldJson10 = code!.toJson();
      json['code'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_code'] = fieldJson10['_value'];
      }
    }

    if (severity != null) {
      final fieldJson11 = severity!.toJson();
      json['severity'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_severity'] = fieldJson11['_value'];
      }
    }

    if (patient != null) {
      final fieldJson12 = patient!.toJson();
      json['patient'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_patient'] = fieldJson12['_value'];
      }
    }

    if (identifiedDateTime != null) {
      final fieldJson13 = identifiedDateTime!.toJson();
      json['identifiedDateTime'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_identifiedDateTime'] = fieldJson13['_value'];
      }
    }

    if (identifiedPeriod != null) {
      final fieldJson14 = identifiedPeriod!.toJson();
      json['identifiedPeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_identifiedPeriod'] = fieldJson14['_value'];
      }
    }

    if (author != null) {
      final fieldJson15 = author!.toJson();
      json['author'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_author'] = fieldJson15['_value'];
      }
    }

    if (implicated != null && implicated!.isNotEmpty) {
      final fieldJson16 = implicated!.map((e) => e.toJson()).toList();
      json['implicated'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_implicated'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (evidence != null && evidence!.isNotEmpty) {
      final fieldJson17 = evidence!.map((e) => e.toJson()).toList();
      json['evidence'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_evidence'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (detail != null) {
      final fieldJson18 = detail!.toJson();
      json['detail'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_detail'] = fieldJson18['_value'];
      }
    }

    if (reference != null) {
      final fieldJson19 = reference!.toJson();
      json['reference'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_reference'] = fieldJson19['_value'];
      }
    }

    if (mitigation != null && mitigation!.isNotEmpty) {
      final fieldJson20 = mitigation!.map((e) => e.toJson()).toList();
      json['mitigation'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_mitigation'] = fieldJson20.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DetectedIssueEvidence]
/// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or
/// MeasureReport.
class DetectedIssueEvidence extends BackboneElement {
  /// Primary constructor for [DetectedIssueEvidence]

  DetectedIssueEvidence({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueEvidence.fromJson(Map<String, dynamic> json) {
    return DetectedIssueEvidence(
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

  /// Deserialize [DetectedIssueEvidence] from a [String]
  /// or [YamlMap] object
  factory DetectedIssueEvidence.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DetectedIssueEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DetectedIssueEvidence cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DetectedIssueEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueEvidence.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (code != null && code!.isNotEmpty) {
      final fieldJson3 = code!.map((e) => e.toJson()).toList();
      json['code'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_code'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (detail != null && detail!.isNotEmpty) {
      final fieldJson4 = detail!.map((e) => e.toJson()).toList();
      json['detail'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_detail'] = fieldJson4.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DetectedIssueEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DetectedIssueMitigation]
/// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue
/// from manifesting. Can also reflect an observation of known mitigating
/// factors that may reduce/eliminate the need for any action.
class DetectedIssueMitigation extends BackboneElement {
  /// Primary constructor for [DetectedIssueMitigation]

  DetectedIssueMitigation({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.author,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueMitigation.fromJson(Map<String, dynamic> json) {
    return DetectedIssueMitigation(
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
      action: CodeableConcept.fromJson(
        json['action'] as Map<String, dynamic>,
      ),
      date: json['date'] != null
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

  /// Deserialize [DetectedIssueMitigation] from a [String]
  /// or [YamlMap] object
  factory DetectedIssueMitigation.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueMitigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DetectedIssueMitigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DetectedIssueMitigation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DetectedIssueMitigation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueMitigation.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = action.toJson();
    json['action'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_action'] = fieldJson3['_value'];
    }

    if (date != null) {
      final fieldJson4 = date!.toJson();
      json['date'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_date'] = fieldJson4['_value'];
      }
    }

    if (author != null) {
      final fieldJson5 = author!.toJson();
      json['author'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_author'] = fieldJson5['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DetectedIssueMitigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      date: date ?? this.date,
      author: author ?? this.author,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
