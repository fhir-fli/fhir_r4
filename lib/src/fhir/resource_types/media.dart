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

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,

    /// Extensions for [createdDateTime]
    this.createdDateTimeElement,
    this.createdPeriod,
    this.issued,

    /// Extensions for [issued]
    this.issuedElement,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,

    /// Extensions for [deviceName]
    this.deviceNameElement,
    this.device,
    this.height,

    /// Extensions for [height]
    this.heightElement,
    this.width,

    /// Extensions for [width]
    this.widthElement,
    this.frames,

    /// Extensions for [frames]
    this.framesElement,
    this.duration,

    /// Extensions for [duration]
    this.durationElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EventStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
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
          ? FhirDateTime.fromJson(json['createdDateTime'])
          : null,
      createdDateTimeElement: json['_createdDateTime'] != null
          ? Element.fromJson(
              json['_createdDateTime'] as Map<String, dynamic>,
            )
          : null,
      createdPeriod: json['createdPeriod'] != null
          ? Period.fromJson(
              json['createdPeriod'] as Map<String, dynamic>,
            )
          : null,
      issued:
          json['issued'] != null ? FhirInstant.fromJson(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(
              json['_issued'] as Map<String, dynamic>,
            )
          : null,
      operator_: json['operator'] != null
          ? Reference.fromJson(
              json['operator'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
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
          ? FhirString.fromJson(json['deviceName'])
          : null,
      deviceNameElement: json['_deviceName'] != null
          ? Element.fromJson(
              json['_deviceName'] as Map<String, dynamic>,
            )
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      height: json['height'] != null
          ? FhirPositiveInt.fromJson(json['height'])
          : null,
      heightElement: json['_height'] != null
          ? Element.fromJson(
              json['_height'] as Map<String, dynamic>,
            )
          : null,
      width: json['width'] != null
          ? FhirPositiveInt.fromJson(json['width'])
          : null,
      widthElement: json['_width'] != null
          ? Element.fromJson(
              json['_width'] as Map<String, dynamic>,
            )
          : null,
      frames: json['frames'] != null
          ? FhirPositiveInt.fromJson(json['frames'])
          : null,
      framesElement: json['_frames'] != null
          ? Element.fromJson(
              json['_frames'] as Map<String, dynamic>,
            )
          : null,
      duration: json['duration'] != null
          ? FhirDecimal.fromJson(json['duration'])
          : null,
      durationElement: json['_duration'] != null
          ? Element.fromJson(
              json['_duration'] as Map<String, dynamic>,
            )
          : null,
      content: Attachment.fromJson(
        json['content'] as Map<String, dynamic>,
      ),
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (dynamic v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Media] from a [String] or [YamlMap] object
  factory Media.fromYaml(dynamic yaml) => yaml is String
      ? Media.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Media.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Media cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Media] that takes in a [String]
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

  /// Extensions for [status]
  final Element? statusElement;

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

  /// Extensions for [createdDateTime]
  final Element? createdDateTimeElement;

  /// [createdPeriod]
  /// The date and time(s) at which the media was collected.
  final Period? createdPeriod;

  /// [issued]
  /// The date and time this version of the media was made available to
  /// providers, typically after having been reviewed.
  final FhirInstant? issued;

  /// Extensions for [issued]
  final Element? issuedElement;

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

  /// Extensions for [deviceName]
  final Element? deviceNameElement;

  /// [device]
  /// The device used to collect the media.
  final Reference? device;

  /// [height]
  /// Height of the image in pixels (photo/video).
  final FhirPositiveInt? height;

  /// Extensions for [height]
  final Element? heightElement;

  /// [width]
  /// Width of the image in pixels (photo/video).
  final FhirPositiveInt? width;

  /// Extensions for [width]
  final Element? widthElement;

  /// [frames]
  /// The number of frames in a photo. This is used with a multi-page fax, or
  /// an imaging acquisition context that takes multiple slices in a single
  /// image, or an animated gif. If there is more than one frame, this SHALL
  /// have a value in order to alert interface software that a multi-frame
  /// capable rendering widget is required.
  final FhirPositiveInt? frames;

  /// Extensions for [frames]
  final Element? framesElement;

  /// [duration]
  /// The duration of the recording in seconds - for audio and video.
  final FhirDecimal? duration;

  /// Extensions for [duration]
  final Element? durationElement;

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
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((Reference v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (modality != null) {
      json['modality'] = modality!.toJson();
    }
    if (view != null) {
      json['view'] = view!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (createdDateTime?.value != null) {
      json['createdDateTime'] = createdDateTime!.toJson();
    }
    if (createdDateTimeElement != null) {
      json['_createdDateTime'] = createdDateTimeElement!.toJson();
    }
    if (createdPeriod != null) {
      json['createdPeriod'] = createdPeriod!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.toJson();
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (operator_ != null) {
      json['operator'] = operator_!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (deviceName?.value != null) {
      json['deviceName'] = deviceName!.toJson();
    }
    if (deviceNameElement != null) {
      json['_deviceName'] = deviceNameElement!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (height?.value != null) {
      json['height'] = height!.toJson();
    }
    if (heightElement != null) {
      json['_height'] = heightElement!.toJson();
    }
    if (width?.value != null) {
      json['width'] = width!.toJson();
    }
    if (widthElement != null) {
      json['_width'] = widthElement!.toJson();
    }
    if (frames?.value != null) {
      json['frames'] = frames!.toJson();
    }
    if (framesElement != null) {
      json['_frames'] = framesElement!.toJson();
    }
    if (duration?.value != null) {
      json['duration'] = duration!.toJson();
    }
    if (durationElement != null) {
      json['_duration'] = durationElement!.toJson();
    }
    json['content'] = content.toJson();
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    EventStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? modality,
    CodeableConcept? view,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? createdDateTime,
    Element? createdDateTimeElement,
    Period? createdPeriod,
    FhirInstant? issued,
    Element? issuedElement,
    Reference? operator_,
    List<CodeableConcept>? reasonCode,
    CodeableConcept? bodySite,
    FhirString? deviceName,
    Element? deviceNameElement,
    Reference? device,
    FhirPositiveInt? height,
    Element? heightElement,
    FhirPositiveInt? width,
    Element? widthElement,
    FhirPositiveInt? frames,
    Element? framesElement,
    FhirDecimal? duration,
    Element? durationElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      modality: modality ?? this.modality,
      view: view ?? this.view,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      createdDateTimeElement:
          createdDateTimeElement ?? this.createdDateTimeElement,
      createdPeriod: createdPeriod ?? this.createdPeriod,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      operator_: operator_ ?? this.operator_,
      reasonCode: reasonCode ?? this.reasonCode,
      bodySite: bodySite ?? this.bodySite,
      deviceName: deviceName ?? this.deviceName,
      deviceNameElement: deviceNameElement ?? this.deviceNameElement,
      device: device ?? this.device,
      height: height ?? this.height,
      heightElement: heightElement ?? this.heightElement,
      width: width ?? this.width,
      widthElement: widthElement ?? this.widthElement,
      frames: frames ?? this.frames,
      framesElement: framesElement ?? this.framesElement,
      duration: duration ?? this.duration,
      durationElement: durationElement ?? this.durationElement,
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
