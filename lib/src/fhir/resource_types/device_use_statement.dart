import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'device_use_statement.g.dart';

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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
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
  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) =>
      _$DeviceUseStatementFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceUseStatementToJson(this);

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
