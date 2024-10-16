import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Media]
/// A photo, video, or audio recording acquired or used in healthcare. The
/// actual content may be inline or provided by direct reference.
class Media extends DomainResource {
  /// Primary constructor for [Media]

  Media({
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
    this.partOf,
    required this.status,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdPeriod,
    this.issued,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.device,
    this.height,
    this.width,
    this.frames,
    this.duration,
    required this.content,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Media,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
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
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EventStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      modality: json['modality'] != null
          ? CodeableConcept.fromJson(
              json['modality'] as Map<String, dynamic>,
            )
          : null,
      view: json['view'] != null
          ? CodeableConcept.fromJson(
              json['view'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      createdDateTime: json['createdDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['createdDateTime'],
              '_value': json['_createdDateTime'],
            })
          : null,
      createdPeriod: json['createdPeriod'] != null
          ? Period.fromJson(
              json['createdPeriod'] as Map<String, dynamic>,
            )
          : null,
      issued: json['issued'] != null
          ? FhirInstant.fromJson({
              'value': json['issued'],
              '_value': json['_issued'],
            })
          : null,
      operator_: json['operator'] != null
          ? Reference.fromJson(
              json['operator'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      deviceName: json['deviceName'] != null
          ? FhirString.fromJson({
              'value': json['deviceName'],
              '_value': json['_deviceName'],
            })
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      height: json['height'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['height'],
              '_value': json['_height'],
            })
          : null,
      width: json['width'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['width'],
              '_value': json['_width'],
            })
          : null,
      frames: json['frames'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['frames'],
              '_value': json['_frames'],
            })
          : null,
      duration: json['duration'] != null
          ? FhirDecimal.fromJson({
              'value': json['duration'],
              '_value': json['_duration'],
            })
          : null,
      content: Attachment.fromJson(
        json['content'] as Map<String, dynamic>,
      ),
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

  /// Deserialize [Media] from a [String]
  /// or [YamlMap] object
  factory Media.fromYaml(dynamic yaml) => yaml is String
      ? Media.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Media.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Media cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Media]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Media.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Media.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Media';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers associated with the image - these may include identifiers
  /// for the image itself, identifiers for the context of its collection
  /// (e.g. series ids) and context ids such as accession numbers or other
  /// workflow identifiers.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A procedure that is fulfilled in whole or in part by the creation of
  /// this media.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// The current state of the {{title}}.
  final EventStatus status;

  /// [type]
  /// A code that classifies whether the media is an image, video or audio
  /// recording or some other media category.
  final CodeableConcept? type;

  /// [modality]
  /// Details of the type of the media - usually, how it was acquired (what
  /// type of device). If images sourced from a DICOM system, are wrapped in
  /// a Media resource, then this is the modality.
  final CodeableConcept? modality;

  /// [view]
  /// The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  final CodeableConcept? view;

  /// [subject]
  /// Who/What this Media is a record of.
  final Reference? subject;

  /// [encounter]
  /// The encounter that establishes the context for this media.
  final Reference? encounter;

  /// [createdDateTime]
  /// The date and time(s) at which the media was collected.
  final FhirDateTime? createdDateTime;

  /// [createdPeriod]
  /// The date and time(s) at which the media was collected.
  final Period? createdPeriod;

  /// [issued]
  /// The date and time this version of the media was made available to
  /// providers, typically after having been reviewed.
  final FhirInstant? issued;

  /// [operator_]
  /// The person who administered the collection of the image.
  final Reference? operator_;

  /// [reasonCode]
  /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [bodySite]
  /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  final CodeableConcept? bodySite;

  /// [deviceName]
  /// The name of the device / manufacturer of the device that was used to
  /// make the recording.
  final FhirString? deviceName;

  /// [device]
  /// The device used to collect the media.
  final Reference? device;

  /// [height]
  /// Height of the image in pixels (photo/video).
  final FhirPositiveInt? height;

  /// [width]
  /// Width of the image in pixels (photo/video).
  final FhirPositiveInt? width;

  /// [frames]
  /// The number of frames in a photo. This is used with a multi-page fax, or
  /// an imaging acquisition context that takes multiple slices in a single
  /// image, or an animated gif. If there is more than one frame, this SHALL
  /// have a value in order to alert interface software that a multi-frame
  /// capable rendering widget is required.
  final FhirPositiveInt? frames;

  /// [duration]
  /// The duration of the recording in seconds - for audio and video.
  final FhirDecimal? duration;

  /// [content]
  /// The actual content of the media - inline or by direct reference to the
  /// media source file.
  final Attachment content;

  /// [note]
  /// Comments made about the media by the performer, subject or other
  /// participants.
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

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson10 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (type != null) {
      final fieldJson12 = type!.toJson();
      json['type'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_type'] = fieldJson12['_value'];
      }
    }

    if (modality != null) {
      final fieldJson13 = modality!.toJson();
      json['modality'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_modality'] = fieldJson13['_value'];
      }
    }

    if (view != null) {
      final fieldJson14 = view!.toJson();
      json['view'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_view'] = fieldJson14['_value'];
      }
    }

    if (subject != null) {
      final fieldJson15 = subject!.toJson();
      json['subject'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_subject'] = fieldJson15['_value'];
      }
    }

    if (encounter != null) {
      final fieldJson16 = encounter!.toJson();
      json['encounter'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_encounter'] = fieldJson16['_value'];
      }
    }

    if (createdDateTime != null) {
      final fieldJson17 = createdDateTime!.toJson();
      json['createdDateTime'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_createdDateTime'] = fieldJson17['_value'];
      }
    }

    if (createdPeriod != null) {
      final fieldJson18 = createdPeriod!.toJson();
      json['createdPeriod'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_createdPeriod'] = fieldJson18['_value'];
      }
    }

    if (issued != null) {
      final fieldJson19 = issued!.toJson();
      json['issued'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_issued'] = fieldJson19['_value'];
      }
    }

    if (operator_ != null) {
      final fieldJson20 = operator_!.toJson();
      json['operator'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_operator'] = fieldJson20['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson21 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null) {
      final fieldJson22 = bodySite!.toJson();
      json['bodySite'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_bodySite'] = fieldJson22['_value'];
      }
    }

    if (deviceName != null) {
      final fieldJson23 = deviceName!.toJson();
      json['deviceName'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_deviceName'] = fieldJson23['_value'];
      }
    }

    if (device != null) {
      final fieldJson24 = device!.toJson();
      json['device'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_device'] = fieldJson24['_value'];
      }
    }

    if (height != null) {
      final fieldJson25 = height!.toJson();
      json['height'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_height'] = fieldJson25['_value'];
      }
    }

    if (width != null) {
      final fieldJson26 = width!.toJson();
      json['width'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_width'] = fieldJson26['_value'];
      }
    }

    if (frames != null) {
      final fieldJson27 = frames!.toJson();
      json['frames'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_frames'] = fieldJson27['_value'];
      }
    }

    if (duration != null) {
      final fieldJson28 = duration!.toJson();
      json['duration'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_duration'] = fieldJson28['_value'];
      }
    }

    final fieldJson29 = content.toJson();
    json['content'] = fieldJson29['value'];
    if (fieldJson29['_value'] != null) {
      json['_content'] = fieldJson29['_value'];
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson30 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Media clone() => throw UnimplementedError();
  @override
  Media copyWith({
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
    List<Reference>? partOf,
    EventStatus? status,
    CodeableConcept? type,
    CodeableConcept? modality,
    CodeableConcept? view,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? createdDateTime,
    Period? createdPeriod,
    FhirInstant? issued,
    Reference? operator_,
    List<CodeableConcept>? reasonCode,
    CodeableConcept? bodySite,
    FhirString? deviceName,
    Reference? device,
    FhirPositiveInt? height,
    FhirPositiveInt? width,
    FhirPositiveInt? frames,
    FhirDecimal? duration,
    Attachment? content,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Media(
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
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      type: type ?? this.type,
      modality: modality ?? this.modality,
      view: view ?? this.view,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      createdPeriod: createdPeriod ?? this.createdPeriod,
      issued: issued ?? this.issued,
      operator_: operator_ ?? this.operator_,
      reasonCode: reasonCode ?? this.reasonCode,
      bodySite: bodySite ?? this.bodySite,
      deviceName: deviceName ?? this.deviceName,
      device: device ?? this.device,
      height: height ?? this.height,
      width: width ?? this.width,
      frames: frames ?? this.frames,
      duration: duration ?? this.duration,
      content: content ?? this.content,
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
