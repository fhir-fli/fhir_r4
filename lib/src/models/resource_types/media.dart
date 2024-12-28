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
          objectPath: 'Media',
          resourceType: R4ResourceType.Media,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Media.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Media';
    return Media(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      modality: JsonParser.parseObject<CodeableConcept>(
        json,
        'modality',
        CodeableConcept.fromJson,
        '$objectPath.modality',
      ),
      view: JsonParser.parseObject<CodeableConcept>(
        json,
        'view',
        CodeableConcept.fromJson,
        '$objectPath.view',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      createdX: JsonParser.parsePolymorphic<CreatedXMedia>(
        json,
        {
          'createdDateTime': FhirDateTime.fromJson,
          'createdPeriod': Period.fromJson,
        },
        objectPath,
      ),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
        '$objectPath.issued',
      ),
      operator_: JsonParser.parseObject<Reference>(
        json,
        'operator',
        Reference.fromJson,
        '$objectPath.operator',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      deviceName: JsonParser.parsePrimitive<FhirString>(
        json,
        'deviceName',
        FhirString.fromJson,
        '$objectPath.deviceName',
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
        '$objectPath.device',
      ),
      height: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'height',
        FhirPositiveInt.fromJson,
        '$objectPath.height',
      ),
      width: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'width',
        FhirPositiveInt.fromJson,
        '$objectPath.width',
      ),
      frames: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'frames',
        FhirPositiveInt.fromJson,
        '$objectPath.frames',
      ),
      duration: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'duration',
        FhirDecimal.fromJson,
        '$objectPath.duration',
      ),
      content: JsonParser.parseObject<Attachment>(
        json,
        'content',
        Attachment.fromJson,
        '$objectPath.content',
      )!,
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
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
    if (json is Map<String, dynamic>) {
      return Media.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'basedOn',
      'partOf',
      'status',
      'type',
      'modality',
      'view',
      'subject',
      'encounter',
      'createdX',
      'issued',
      'operator',
      'reasonCode',
      'bodySite',
      'deviceName',
      'device',
      'height',
      'width',
      'frames',
      'duration',
      'content',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'modality':
        if (modality != null) {
          fields.add(modality!);
        }
      case 'view':
        if (view != null) {
          fields.add(view!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'createdDateTime':
        if (createdX is FhirDateTime) {
          fields.add(createdX!);
        }
      case 'createdPeriod':
        if (createdX is Period) {
          fields.add(createdX!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'operator':
        if (operator_ != null) {
          fields.add(operator_!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'deviceName':
        if (deviceName != null) {
          fields.add(deviceName!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'height':
        if (height != null) {
          fields.add(height!);
        }
      case 'width':
        if (width != null) {
          fields.add(width!);
        }
      case 'frames':
        if (frames != null) {
          fields.add(frames!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'content':
        fields.add(content);
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Media(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      modality: modality?.copyWith(
            objectPath: '$newObjectPath.modality',
          ) ??
          this.modality,
      view: view?.copyWith(
            objectPath: '$newObjectPath.view',
          ) ??
          this.view,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      createdX: createdX?.copyWith(
            objectPath: '$newObjectPath.createdX',
          ) as CreatedXMedia? ??
          this.createdX,
      issued: issued?.copyWith(
            objectPath: '$newObjectPath.issued',
          ) ??
          this.issued,
      operator_: operator_?.copyWith(
            objectPath: '$newObjectPath.operator',
          ) ??
          this.operator_,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      deviceName: deviceName?.copyWith(
            objectPath: '$newObjectPath.deviceName',
          ) ??
          this.deviceName,
      device: device?.copyWith(
            objectPath: '$newObjectPath.device',
          ) ??
          this.device,
      height: height?.copyWith(
            objectPath: '$newObjectPath.height',
          ) ??
          this.height,
      width: width?.copyWith(
            objectPath: '$newObjectPath.width',
          ) ??
          this.width,
      frames: frames?.copyWith(
            objectPath: '$newObjectPath.frames',
          ) ??
          this.frames,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
      content: content?.copyWith(
            objectPath: '$newObjectPath.content',
          ) ??
          this.content,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Media) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(modality, o.modality)) {
      return false;
    }
    if (!equalsDeepWithNull(view, o.view)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(createdX, o.createdX)) {
      return false;
    }
    if (!equalsDeepWithNull(issued, o.issued)) {
      return false;
    }
    if (!equalsDeepWithNull(operator_, o.operator_)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(bodySite, o.bodySite)) {
      return false;
    }
    if (!equalsDeepWithNull(deviceName, o.deviceName)) {
      return false;
    }
    if (!equalsDeepWithNull(device, o.device)) {
      return false;
    }
    if (!equalsDeepWithNull(height, o.height)) {
      return false;
    }
    if (!equalsDeepWithNull(width, o.width)) {
      return false;
    }
    if (!equalsDeepWithNull(frames, o.frames)) {
      return false;
    }
    if (!equalsDeepWithNull(duration, o.duration)) {
      return false;
    }
    if (!equalsDeepWithNull(content, o.content)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}
