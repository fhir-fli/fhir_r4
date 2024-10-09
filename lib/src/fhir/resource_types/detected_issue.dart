import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'detected_issue.g.dart';

/// [DetectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
/// active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition conflict,
/// etc.
@JsonSerializable()
class DetectedIssue extends DomainResource {
  DetectedIssue({
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
    this.code,
    this.severity,
    this.severityElement,
    this.patient,
    this.identifiedDateTime,
    this.identifiedDateTimeElement,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.detailElement,
    this.reference,
    this.referenceElement,
    this.mitigation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.DetectedIssue);
  @override
  String get fhirType => 'DetectedIssue';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier associated with the detected issue record.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the status of the detected issue.
  @JsonKey(name: 'status')
  final ObservationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [code] /// Identifies the general type of issue identified.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [severity] /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  @JsonKey(name: 'severity')
  final DetectedIssueSeverity? severity;
  @JsonKey(name: '_severity')
  final Element? severityElement;

  /// [patient] /// Indicates the patient whose record the detected issue is associated with.
  @JsonKey(name: 'patient')
  final Reference? patient;

  /// [identifiedDateTime] /// The date or period when the detected issue was initially identified.
  @JsonKey(name: 'identifiedDateTime')
  final FhirDateTime? identifiedDateTime;
  @JsonKey(name: '_identifiedDateTime')
  final Element? identifiedDateTimeElement;

  /// [identifiedPeriod] /// The date or period when the detected issue was initially identified.
  @JsonKey(name: 'identifiedPeriod')
  final Period? identifiedPeriod;

  /// [author] /// Individual or device responsible for the issue being raised. For example, a
  /// decision support application or a pharmacist conducting a medication
  /// review.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [implicated] /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  @JsonKey(name: 'implicated')
  final List<Reference>? implicated;

  /// [evidence] /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or MeasureReport.
  @JsonKey(name: 'evidence')
  final List<DetectedIssueEvidence>? evidence;

  /// [detail] /// A textual explanation of the detected issue.
  @JsonKey(name: 'detail')
  final FhirString? detail;
  @JsonKey(name: '_detail')
  final Element? detailElement;

  /// [reference] /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  @JsonKey(name: 'reference')
  final FhirUri? reference;
  @JsonKey(name: '_reference')
  final Element? referenceElement;

  /// [mitigation] /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue from
  /// manifesting. Can also reflect an observation of known mitigating factors
  /// that may reduce/eliminate the need for any action.
  @JsonKey(name: 'mitigation')
  final List<DetectedIssueMitigation>? mitigation;
  factory DetectedIssue.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DetectedIssueToJson(this);

  @override
  DetectedIssue clone() => throw UnimplementedError();
  @override
  DetectedIssue copyWith({
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
    ObservationStatus? status,
    Element? statusElement,
    CodeableConcept? code,
    DetectedIssueSeverity? severity,
    Element? severityElement,
    Reference? patient,
    FhirDateTime? identifiedDateTime,
    Element? identifiedDateTimeElement,
    Period? identifiedPeriod,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    Element? detailElement,
    FhirUri? reference,
    Element? referenceElement,
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
      code: code ?? this.code,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      patient: patient ?? this.patient,
      identifiedDateTime: identifiedDateTime ?? this.identifiedDateTime,
      identifiedDateTimeElement:
          identifiedDateTimeElement ?? this.identifiedDateTimeElement,
      identifiedPeriod: identifiedPeriod ?? this.identifiedPeriod,
      author: author ?? this.author,
      implicated: implicated ?? this.implicated,
      evidence: evidence ?? this.evidence,
      detail: detail ?? this.detail,
      detailElement: detailElement ?? this.detailElement,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      mitigation: mitigation ?? this.mitigation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DetectedIssue.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DetectedIssue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DetectedIssue cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DetectedIssue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DetectedIssueEvidence] /// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or MeasureReport.
@JsonSerializable()
class DetectedIssueEvidence extends BackboneElement {
  DetectedIssueEvidence({
    super.id,
    super.extension_,
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
  @override
  String get fhirType => 'DetectedIssueEvidence';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A manifestation that led to the recording of this detected issue.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [detail] /// Links to resources that constitute evidence for the detected issue such as
  /// a GuidanceResponse or MeasureReport.
  @JsonKey(name: 'detail')
  final List<Reference>? detail;
  factory DetectedIssueEvidence.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueEvidenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DetectedIssueEvidenceToJson(this);

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

  factory DetectedIssueEvidence.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DetectedIssueEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DetectedIssueEvidence cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DetectedIssueEvidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssueEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DetectedIssueMitigation] /// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue from
/// manifesting. Can also reflect an observation of known mitigating factors
/// that may reduce/eliminate the need for any action.
@JsonSerializable()
class DetectedIssueMitigation extends BackboneElement {
  DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.dateElement,
    this.author,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DetectedIssueMitigation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Describes the action that was taken or the observation that was made that
  /// reduces/eliminates the risk associated with the identified issue.
  @JsonKey(name: 'action')
  final CodeableConcept action;

  /// [date] /// Indicates when the mitigating action was documented.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [author] /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  @JsonKey(name: 'author')
  final Reference? author;
  factory DetectedIssueMitigation.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueMitigationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DetectedIssueMitigationToJson(this);

  @override
  DetectedIssueMitigation clone() => throw UnimplementedError();
  @override
  DetectedIssueMitigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Element? dateElement,
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
      dateElement: dateElement ?? this.dateElement,
      author: author ?? this.author,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DetectedIssueMitigation.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueMitigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DetectedIssueMitigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DetectedIssueMitigation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DetectedIssueMitigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DetectedIssueMitigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
