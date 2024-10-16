import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceUseStatement]
/// A record of a device being used by a patient where the record is the
/// result of a report from the patient or another clinician.
class DeviceUseStatement extends DomainResource {
  /// Primary constructor for [DeviceUseStatement]

  DeviceUseStatement({
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
    required this.status,
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.recordedOn,
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
  }) : super(
          resourceType: R4ResourceType.DeviceUseStatement,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) {
    return DeviceUseStatement(
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
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: DeviceUseStatementStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              json['timingTiming'] as Map<String, dynamic>,
            )
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              json['timingPeriod'] as Map<String, dynamic>,
            )
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timingDateTime'],
              '_value': json['_timingDateTime'],
            })
          : null,
      recordedOn: json['recordedOn'] != null
          ? FhirDateTime.fromJson({
              'value': json['recordedOn'],
              '_value': json['_recordedOn'],
            })
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      device: Reference.fromJson(
        json['device'] as Map<String, dynamic>,
      ),
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
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
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

  /// Deserialize [DeviceUseStatement] from a [String]
  /// or [YamlMap] object
  factory DeviceUseStatement.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUseStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceUseStatement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DeviceUseStatement cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceUseStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUseStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceUseStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceUseStatement';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// An external identifier for this statement such as an IRI.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// DeviceUseStatement.
  final List<Reference>? basedOn;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the device used that this statement is about. Generally this
  /// will be active or completed.
  final DeviceUseStatementStatus status;

  /// [subject]
  /// The patient who used the device.
  final Reference subject;

  /// [derivedFrom]
  /// Allows linking the DeviceUseStatement to the underlying Request, or to
  /// other information that supports or is used to derive the
  /// DeviceUseStatement.
  final List<Reference>? derivedFrom;

  /// [timingTiming]
  /// How often the device was used.
  final Timing? timingTiming;

  /// [timingPeriod]
  /// How often the device was used.
  final Period? timingPeriod;

  /// [timingDateTime]
  /// How often the device was used.
  final FhirDateTime? timingDateTime;

  /// [recordedOn]
  /// The time at which the statement was made/recorded.
  final FhirDateTime? recordedOn;

  /// [source]
  /// Who reported the device was being used by the patient.
  final Reference? source;

  /// [device]
  /// The details of the device used.
  final Reference device;

  /// [reasonCode]
  /// Reason or justification for the use of the device.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies this
  /// DeviceUseStatement.
  final List<Reference>? reasonReference;

  /// [bodySite]
  /// Indicates the anotomic location on the subject's body where the device
  /// was used ( i.e. the target).
  final CodeableConcept? bodySite;

  /// [note]
  /// Details about the device statement that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated
  /// with the statement.
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

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson9 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    final fieldJson10 = status.toJson();
    json['status'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_status'] = fieldJson10['_value'];
    }

    final fieldJson11 = subject.toJson();
    json['subject'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_subject'] = fieldJson11['_value'];
    }

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      final fieldJson12 = derivedFrom!.map((e) => e.toJson()).toList();
      json['derivedFrom'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_derivedFrom'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (timingTiming != null) {
      final fieldJson13 = timingTiming!.toJson();
      json['timingTiming'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_timingTiming'] = fieldJson13['_value'];
      }
    }

    if (timingPeriod != null) {
      final fieldJson14 = timingPeriod!.toJson();
      json['timingPeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_timingPeriod'] = fieldJson14['_value'];
      }
    }

    if (timingDateTime != null) {
      final fieldJson15 = timingDateTime!.toJson();
      json['timingDateTime'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_timingDateTime'] = fieldJson15['_value'];
      }
    }

    if (recordedOn != null) {
      final fieldJson16 = recordedOn!.toJson();
      json['recordedOn'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_recordedOn'] = fieldJson16['_value'];
      }
    }

    if (source != null) {
      final fieldJson17 = source!.toJson();
      json['source'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_source'] = fieldJson17['_value'];
      }
    }

    final fieldJson18 = device.toJson();
    json['device'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_device'] = fieldJson18['_value'];
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson19 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson20 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null) {
      final fieldJson21 = bodySite!.toJson();
      json['bodySite'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_bodySite'] = fieldJson21['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson22 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  DeviceUseStatement clone() => throw UnimplementedError();
  @override
  DeviceUseStatement copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    DeviceUseStatementStatus? status,
    Reference? subject,
    List<Reference>? derivedFrom,
    Timing? timingTiming,
    Period? timingPeriod,
    FhirDateTime? timingDateTime,
    FhirDateTime? recordedOn,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      timingTiming: timingTiming ?? this.timingTiming,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      recordedOn: recordedOn ?? this.recordedOn,
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
}
