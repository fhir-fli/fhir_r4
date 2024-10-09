import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DeviceUseStatement] /// A record of a device being used by a patient where the record is the result
/// of a report from the patient or another clinician.
@JsonSerializable()
class DeviceUseStatement extends DomainResource {
  DeviceUseStatement({
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
    required this.status,
    this.statusElement,
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.recordedOn,
    this.recordedOnElement,
    this.source,
    required this.device,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.DeviceUseStatement);
  @override
  String get fhirType => 'DeviceUseStatement';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An external identifier for this statement such as an IRI.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// DeviceUseStatement.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [status] /// A code representing the patient or other source's judgment about the state
  /// of the device used that this statement is about. Generally this will be
  /// active or completed.
  @JsonKey(name: 'status')
  final DeviceUseStatementStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [subject] /// The patient who used the device.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [derivedFrom] /// Allows linking the DeviceUseStatement to the underlying Request, or to
  /// other information that supports or is used to derive the
  /// DeviceUseStatement.
  @JsonKey(name: 'derivedFrom')
  final List<Reference>? derivedFrom;

  /// [timingTiming] /// How often the device was used.
  @JsonKey(name: 'timingTiming')
  final Timing? timingTiming;

  /// [timingPeriod] /// How often the device was used.
  @JsonKey(name: 'timingPeriod')
  final Period? timingPeriod;

  /// [timingDateTime] /// How often the device was used.
  @JsonKey(name: 'timingDateTime')
  final FhirDateTime? timingDateTime;
  @JsonKey(name: '_timingDateTime')
  final Element? timingDateTimeElement;

  /// [recordedOn] /// The time at which the statement was made/recorded.
  @JsonKey(name: 'recordedOn')
  final FhirDateTime? recordedOn;
  @JsonKey(name: '_recordedOn')
  final Element? recordedOnElement;

  /// [source] /// Who reported the device was being used by the patient.
  @JsonKey(name: 'source')
  final Reference? source;

  /// [device] /// The details of the device used.
  @JsonKey(name: 'device')
  final Reference device;

  /// [reasonCode] /// Reason or justification for the use of the device.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this
  /// DeviceUseStatement.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [bodySite] /// Indicates the anotomic location on the subject's body where the device was
  /// used ( i.e. the target).
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [note] /// Details about the device statement that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated with
  /// the statement.
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
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['subject'] = subject.toJson();
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] =
          derivedFrom!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }
    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }
    if (timingDateTime?.value != null) {
      json['timingDateTime'] = timingDateTime!.value;
    }
    if (timingDateTimeElement != null) {
      json['_timingDateTime'] = timingDateTimeElement!.toJson();
    }
    if (recordedOn?.value != null) {
      json['recordedOn'] = recordedOn!.value;
    }
    if (recordedOnElement != null) {
      json['_recordedOn'] = recordedOnElement!.toJson();
    }
    if (source != null) {
      json['source'] = source!.toJson();
    }
    json['device'] = device.toJson();
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) {
    return DeviceUseStatement(
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
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: DeviceUseStatementStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(json['timingTiming'] as Map<String, dynamic>)
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(json['timingPeriod'] as Map<String, dynamic>)
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime(json['timingDateTime'])
          : null,
      timingDateTimeElement: json['_timingDateTime'] != null
          ? Element.fromJson(json['_timingDateTime'] as Map<String, dynamic>)
          : null,
      recordedOn:
          json['recordedOn'] != null ? FhirDateTime(json['recordedOn']) : null,
      recordedOnElement: json['_recordedOn'] != null
          ? Element.fromJson(json['_recordedOn'] as Map<String, dynamic>)
          : null,
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      device: Reference.fromJson(json['device'] as Map<String, dynamic>),
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
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
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
  DeviceUseStatement clone() => throw UnimplementedError();
  @override
  DeviceUseStatement copyWith({
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
    List<Reference>? basedOn,
    DeviceUseStatementStatus? status,
    Element? statusElement,
    Reference? subject,
    List<Reference>? derivedFrom,
    Timing? timingTiming,
    Period? timingPeriod,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    FhirDateTime? recordedOn,
    Element? recordedOnElement,
    Reference? source,
    Reference? device,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    CodeableConcept? bodySite,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceUseStatement(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      subject: subject ?? this.subject,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      timingTiming: timingTiming ?? this.timingTiming,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      recordedOn: recordedOn ?? this.recordedOn,
      recordedOnElement: recordedOnElement ?? this.recordedOnElement,
      source: source ?? this.source,
      device: device ?? this.device,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      bodySite: bodySite ?? this.bodySite,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceUseStatement.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUseStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceUseStatement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceUseStatement cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceUseStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceUseStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
