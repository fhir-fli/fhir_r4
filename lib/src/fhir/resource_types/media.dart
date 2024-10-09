import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Media] /// A photo, video, or audio recording acquired or used in healthcare. The
/// actual content may be inline or provided by direct reference.
@JsonSerializable()
class Media extends DomainResource {
  Media({
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
    this.partOf,
    required this.status,
    this.statusElement,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdDateTimeElement,
    this.createdPeriod,
    this.issued,
    this.issuedElement,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.deviceNameElement,
    this.device,
    this.height,
    this.heightElement,
    this.width,
    this.widthElement,
    this.frames,
    this.framesElement,
    this.duration,
    this.durationElement,
    required this.content,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Media);
  @override
  String get fhirType => 'Media';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with the image - these may include identifiers for
  /// the image itself, identifiers for the context of its collection (e.g.
  /// series ids) and context ids such as accession numbers or other workflow
  /// identifiers.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [basedOn] /// A procedure that is fulfilled in whole or in part by the creation of this
  /// media.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// The current state of the {{title}}.
  @JsonKey(name: 'status')
  final EventStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// A code that classifies whether the media is an image, video or audio
  /// recording or some other media category.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [modality] /// Details of the type of the media - usually, how it was acquired (what type
  /// of device). If images sourced from a DICOM system, are wrapped in a Media
  /// resource, then this is the modality.
  @JsonKey(name: 'modality')
  final CodeableConcept? modality;

  /// [view] /// The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  @JsonKey(name: 'view')
  final CodeableConcept? view;

  /// [subject] /// Who/What this Media is a record of.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// The encounter that establishes the context for this media.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [createdDateTime] /// The date and time(s) at which the media was collected.
  @JsonKey(name: 'createdDateTime')
  final FhirDateTime? createdDateTime;
  @JsonKey(name: '_createdDateTime')
  final Element? createdDateTimeElement;

  /// [createdPeriod] /// The date and time(s) at which the media was collected.
  @JsonKey(name: 'createdPeriod')
  final Period? createdPeriod;

  /// [issued] /// The date and time this version of the media was made available to
  /// providers, typically after having been reviewed.
  @JsonKey(name: 'issued')
  final FhirInstant? issued;
  @JsonKey(name: '_issued')
  final Element? issuedElement;

  /// [operator_] /// The person who administered the collection of the image.
  @JsonKey(name: 'operator')
  final Reference? operator_;

  /// [reasonCode] /// Describes why the event occurred in coded or textual form.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [bodySite] /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [deviceName] /// The name of the device / manufacturer of the device that was used to make
  /// the recording.
  @JsonKey(name: 'deviceName')
  final FhirString? deviceName;
  @JsonKey(name: '_deviceName')
  final Element? deviceNameElement;

  /// [device] /// The device used to collect the media.
  @JsonKey(name: 'device')
  final Reference? device;

  /// [height] /// Height of the image in pixels (photo/video).
  @JsonKey(name: 'height')
  final FhirPositiveInt? height;
  @JsonKey(name: '_height')
  final Element? heightElement;

  /// [width] /// Width of the image in pixels (photo/video).
  @JsonKey(name: 'width')
  final FhirPositiveInt? width;
  @JsonKey(name: '_width')
  final Element? widthElement;

  /// [frames] /// The number of frames in a photo. This is used with a multi-page fax, or an
  /// imaging acquisition context that takes multiple slices in a single image,
  /// or an animated gif. If there is more than one frame, this SHALL have a
  /// value in order to alert interface software that a multi-frame capable
  /// rendering widget is required.
  @JsonKey(name: 'frames')
  final FhirPositiveInt? frames;
  @JsonKey(name: '_frames')
  final Element? framesElement;

  /// [duration] /// The duration of the recording in seconds - for audio and video.
  @JsonKey(name: 'duration')
  final FhirDecimal? duration;
  @JsonKey(name: '_duration')
  final Element? durationElement;

  /// [content] /// The actual content of the media - inline or by direct reference to the
  /// media source file.
  @JsonKey(name: 'content')
  final Attachment content;

  /// [note] /// Comments made about the media by the performer, subject or other
  /// participants.
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
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] =
          partOf!.map<dynamic>((Reference v) => v.toJson()).toList();
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
      json['createdDateTime'] = createdDateTime!.value;
    }
    if (createdDateTimeElement != null) {
      json['_createdDateTime'] = createdDateTimeElement!.toJson();
    }
    if (createdPeriod != null) {
      json['createdPeriod'] = createdPeriod!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.value;
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (operator_ != null) {
      json['operator'] = operator_!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (deviceName?.value != null) {
      json['deviceName'] = deviceName!.value;
    }
    if (deviceNameElement != null) {
      json['_deviceName'] = deviceNameElement!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (height?.value != null) {
      json['height'] = height!.value;
    }
    if (heightElement != null) {
      json['_height'] = heightElement!.toJson();
    }
    if (width?.value != null) {
      json['width'] = width!.value;
    }
    if (widthElement != null) {
      json['_width'] = widthElement!.toJson();
    }
    if (frames?.value != null) {
      json['frames'] = frames!.value;
    }
    if (framesElement != null) {
      json['_frames'] = framesElement!.toJson();
    }
    if (duration?.value != null) {
      json['duration'] = duration!.value;
    }
    if (durationElement != null) {
      json['_duration'] = durationElement!.toJson();
    }
    json['content'] = content.toJson();
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
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
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: EventStatus.fromJson(json['status'] as Map<String, dynamic>),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      modality: json['modality'] != null
          ? CodeableConcept.fromJson(json['modality'] as Map<String, dynamic>)
          : null,
      view: json['view'] != null
          ? CodeableConcept.fromJson(json['view'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      createdDateTime: json['createdDateTime'] != null
          ? FhirDateTime(json['createdDateTime'])
          : null,
      createdDateTimeElement: json['_createdDateTime'] != null
          ? Element.fromJson(json['_createdDateTime'] as Map<String, dynamic>)
          : null,
      createdPeriod: json['createdPeriod'] != null
          ? Period.fromJson(json['createdPeriod'] as Map<String, dynamic>)
          : null,
      issued: json['issued'] != null ? FhirInstant(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      operator_: json['operator'] != null
          ? Reference.fromJson(json['operator'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      deviceName:
          json['deviceName'] != null ? FhirString(json['deviceName']) : null,
      deviceNameElement: json['_deviceName'] != null
          ? Element.fromJson(json['_deviceName'] as Map<String, dynamic>)
          : null,
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      height: json['height'] != null ? FhirPositiveInt(json['height']) : null,
      heightElement: json['_height'] != null
          ? Element.fromJson(json['_height'] as Map<String, dynamic>)
          : null,
      width: json['width'] != null ? FhirPositiveInt(json['width']) : null,
      widthElement: json['_width'] != null
          ? Element.fromJson(json['_width'] as Map<String, dynamic>)
          : null,
      frames: json['frames'] != null ? FhirPositiveInt(json['frames']) : null,
      framesElement: json['_frames'] != null
          ? Element.fromJson(json['_frames'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null ? FhirDecimal(json['duration']) : null,
      durationElement: json['_duration'] != null
          ? Element.fromJson(json['_duration'] as Map<String, dynamic>)
          : null,
      content: Attachment.fromJson(json['content'] as Map<String, dynamic>),
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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

  factory Media.fromYaml(dynamic yaml) => yaml is String
      ? Media.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Media.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Media cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Media.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Media.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
