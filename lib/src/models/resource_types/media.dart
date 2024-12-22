import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Media]
/// A photo, video, or audio recording acquired or used in healthcare. The
/// actual content may be inline or provided by direct reference.
class Media extends DomainResource {
  /// Primary constructor for
  /// [Media]

  const Media({
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
    this.partOf,
    required this.status,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdX,
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
  }) : super(
          resourceType: R4ResourceType.Media,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Media.fromJson(
    Map<String, dynamic> json,
  ) {
    return Media(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      modality: JsonParser.parseObject<CodeableConcept>(
        json,
        'modality',
        CodeableConcept.fromJson,
      ),
      view: JsonParser.parseObject<CodeableConcept>(
        json,
        'view',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      createdX: JsonParser.parsePolymorphic<CreatedXMedia>(json, {
        'createdDateTime': FhirDateTime.fromJson,
        'createdPeriod': Period.fromJson,
      }),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
      ),
      operator_: JsonParser.parseObject<Reference>(
        json,
        'operator',
        Reference.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
      ),
      deviceName: JsonParser.parsePrimitive<FhirString>(
        json,
        'deviceName',
        FhirString.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      height: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'height',
        FhirPositiveInt.fromJson,
      ),
      width: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'width',
        FhirPositiveInt.fromJson,
      ),
      frames: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frames',
        FhirPositiveInt.fromJson,
      ),
      duration: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'duration',
        FhirDecimal.fromJson,
      ),
      content: JsonParser.parseObject<Attachment>(
        json,
        'content',
        Attachment.fromJson,
      )!,
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Media]
  /// from a [String] or [YamlMap] object
  factory Media.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Media.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Media.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Media '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Media]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Media.fromJsonString(
    String source,
  ) {
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

  /// [createdX]
  /// The date and time(s) at which the media was collected.
  final CreatedXMedia? createdX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('type', type);
    addField('modality', modality);
    addField('view', view);
    addField('subject', subject);
    addField('encounter', encounter);
    if (createdX != null) {
      final fhirType = createdX!.fhirType;
      addField('created${fhirType.capitalize()}', createdX);
    }

    addField('issued', issued);
    addField('operator', operator_);
    addField('reasonCode', reasonCode);
    addField('bodySite', bodySite);
    addField('deviceName', deviceName);
    addField('device', device);
    addField('height', height);
    addField('width', width);
    addField('frames', frames);
    addField('duration', duration);
    addField('content', content);
    addField('note', note);
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
    CreatedXMedia? createdX,
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
      createdX: createdX ?? this.createdX,
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
    );
  }
}
