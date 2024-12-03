import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceUseStatement]
/// A record of a device being used by a patient where the record is the
/// result of a report from the patient or another clinician.
class DeviceUseStatement extends DomainResource {
  /// Primary constructor for
  /// [DeviceUseStatement]

  DeviceUseStatement({
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
  factory DeviceUseStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return DeviceUseStatement(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      basedOn: parseList<Reference>(
        json['basedOn'] as List<dynamic>?,
        json['_basedOn'] as List<dynamic>?,
        Reference.fromJson,
      ),
      status: DeviceUseStatementStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      derivedFrom: parseList<Reference>(
        json['derivedFrom'] as List<dynamic>?,
        json['_derivedFrom'] as List<dynamic>?,
        Reference.fromJson,
      ),
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
      timingDateTime: parseField<FhirDateTime>(
        json['timingDateTime'],
        json['_timingDateTime'],
        FhirDateTime.fromJson,
      ),
      recordedOn: parseField<FhirDateTime>(
        json['recordedOn'],
        json['_recordedOn'],
        FhirDateTime.fromJson,
      ),
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      device: Reference.fromJson(
        json['device'] as Map<String, dynamic>,
      ),
      reasonCode: parseList<CodeableConcept>(
        json['reasonCode'] as List<dynamic>?,
        json['_reasonCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      reasonReference: parseList<Reference>(
        json['reasonReference'] as List<dynamic>?,
        json['_reasonReference'] as List<dynamic>?,
        Reference.fromJson,
      ),
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceUseStatement]
  /// from a [String] or [YamlMap] object
  factory DeviceUseStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUseStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUseStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUseStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUseStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUseStatement.fromJsonString(
    String source,
  ) {
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

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    json['subject'] = subject.toJson();

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] = derivedFrom!.map((e) => e.toJson()).toList();
    }

    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }

    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }

    addField('timingDateTime', timingDateTime);
    addField('recordedOn', recordedOn);
    if (source != null) {
      json['source'] = source!.toJson();
    }

    json['device'] = device.toJson();

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
