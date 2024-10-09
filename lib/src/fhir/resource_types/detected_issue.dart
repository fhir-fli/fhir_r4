import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DetectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
/// active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition conflict,
/// etc.
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
  }) : super(resourceType: R4ResourceType.DetectedIssue);

  @override
  String get fhirType => 'DetectedIssue';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the status of the detected issue.
  final ObservationStatus status;
  final Element? statusElement;

  /// [code] /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// [severity] /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  final DetectedIssueSeverity? severity;
  final Element? severityElement;

  /// [patient] /// Indicates the patient whose record the detected issue is associated with.
  final Reference? patient;

  /// [identifiedDateTime] /// The date or period when the detected issue was initially identified.
  final FhirDateTime? identifiedDateTime;
  final Element? identifiedDateTimeElement;

  /// [identifiedPeriod] /// The date or period when the detected issue was initially identified.
  final Period? identifiedPeriod;

  /// [author] /// Individual or device responsible for the issue being raised. For example, a
  /// decision support application or a pharmacist conducting a medication
  /// review.
  final Reference? author;

  /// [implicated] /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  final List<Reference>? implicated;

  /// [evidence] /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// [detail] /// A textual explanation of the detected issue.
  final FhirString? detail;
  final Element? detailElement;

  /// [reference] /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  final FhirUri? reference;
  final Element? referenceElement;

  /// [mitigation] /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue from
  /// manifesting. Can also reflect an observation of known mitigating factors
  /// that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;
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
    json['status'] = status.toJson();
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (severity != null) {
      json['severity'] = severity!.toJson();
    }
    if (patient != null) {
      json['patient'] = patient!.toJson();
    }
    if (identifiedDateTime?.value != null) {
      json['identifiedDateTime'] = identifiedDateTime!.value;
    }
    if (identifiedDateTimeElement != null) {
      json['_identifiedDateTime'] = identifiedDateTimeElement!.toJson();
    }
    if (identifiedPeriod != null) {
      json['identifiedPeriod'] = identifiedPeriod!.toJson();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    if (implicated != null && implicated!.isNotEmpty) {
      json['implicated'] =
          implicated!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (evidence != null && evidence!.isNotEmpty) {
      json['evidence'] = evidence!
          .map<dynamic>((DetectedIssueEvidence v) => v.toJson())
          .toList();
    }
    if (detail?.value != null) {
      json['detail'] = detail!.value;
    }
    if (detailElement != null) {
      json['_detail'] = detailElement!.toJson();
    }
    if (reference?.value != null) {
      json['reference'] = reference!.value;
    }
    if (referenceElement != null) {
      json['_reference'] = referenceElement!.toJson();
    }
    if (mitigation != null && mitigation!.isNotEmpty) {
      json['mitigation'] = mitigation!
          .map<dynamic>((DetectedIssueMitigation v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory DetectedIssue.fromJson(Map<String, dynamic> json) {
    return DetectedIssue(
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
      status:
          ObservationStatus.fromJson(json['status'] as Map<String, dynamic>),
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      severity: json['severity'] != null
          ? DetectedIssueSeverity.fromJson(
              json['severity'] as Map<String, dynamic>)
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(json['patient'] as Map<String, dynamic>)
          : null,
      identifiedDateTime: json['identifiedDateTime'] != null
          ? FhirDateTime(json['identifiedDateTime'])
          : null,
      identifiedDateTimeElement: json['_identifiedDateTime'] != null
          ? Element.fromJson(
              json['_identifiedDateTime'] as Map<String, dynamic>)
          : null,
      identifiedPeriod: json['identifiedPeriod'] != null
          ? Period.fromJson(json['identifiedPeriod'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      implicated: json['implicated'] != null
          ? (json['implicated'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      evidence: json['evidence'] != null
          ? (json['evidence'] as List<dynamic>)
              .map<DetectedIssueEvidence>((dynamic v) =>
                  DetectedIssueEvidence.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      detail: json['detail'] != null ? FhirString(json['detail']) : null,
      detailElement: json['_detail'] != null
          ? Element.fromJson(json['_detail'] as Map<String, dynamic>)
          : null,
      reference: json['reference'] != null ? FhirUri(json['reference']) : null,
      referenceElement: json['_reference'] != null
          ? Element.fromJson(json['_reference'] as Map<String, dynamic>)
          : null,
      mitigation: json['mitigation'] != null
          ? (json['mitigation'] as List<dynamic>)
              .map<DetectedIssueMitigation>((dynamic v) =>
                  DetectedIssueMitigation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [code] /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// [detail] /// Links to resources that constitute evidence for the detected issue such as
  /// a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
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
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory DetectedIssueEvidence.fromJson(Map<String, dynamic> json) {
    return DetectedIssueEvidence(
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
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
  int dbId = 0;

  /// [action] /// Describes the action that was taken or the observation that was made that
  /// reduces/eliminates the risk associated with the identified issue.
  final CodeableConcept action;

  /// [date] /// Indicates when the mitigating action was documented.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [author] /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  final Reference? author;
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
    json['action'] = action.toJson();
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    return json;
  }

  factory DetectedIssueMitigation.fromJson(Map<String, dynamic> json) {
    return DetectedIssueMitigation(
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
      action: CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
    );
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
