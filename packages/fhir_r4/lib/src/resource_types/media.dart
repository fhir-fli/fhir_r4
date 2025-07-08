import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'media.g.dart';

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
    CreatedXMedia? createdX,
    FhirDateTime? createdDateTime,
    Period? createdPeriod,
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
  })  : createdX = createdX ?? createdDateTime ?? createdPeriod,
        super(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
      createdX: JsonParser.parsePolymorphic<CreatedXMedia>(
        json,
        {
          'createdDateTime': FhirDateTime.fromJson,
          'createdPeriod': Period.fromJson,
        },
      ),
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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

  /// Getter for [createdDateTime] as a FhirDateTime
  FhirDateTime? get createdDateTime => createdX?.isAs<FhirDateTime>();

  /// Getter for [createdPeriod] as a Period
  Period? get createdPeriod => createdX?.isAs<Period>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'type',
      type,
    );
    addField(
      'modality',
      modality,
    );
    addField(
      'view',
      view,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    if (createdX != null) {
      final fhirType = createdX!.fhirType;
      addField(
        'created${fhirType.capitalize()}',
        createdX,
      );
    }

    addField(
      'issued',
      issued,
    );
    addField(
      'operator',
      operator_,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'deviceName',
      deviceName,
    );
    addField(
      'device',
      device,
    );
    addField(
      'height',
      height,
    );
    addField(
      'width',
      width,
    );
    addField(
      'frames',
      frames,
    );
    addField(
      'duration',
      duration,
    );
    addField(
      'content',
      content,
    );
    addField(
      'note',
      note,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBase> getChildrenByName(
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
      case 'created':
        fields.add(createdX!);
      case 'createdX':
        fields.add(createdX!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Media clone() => copyWith();

  /// Copy function for [Media]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MediaCopyWith<Media> get copyWith => _$MediaCopyWithImpl<Media>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Media) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modality,
      o.modality,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      view,
      o.view,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      createdX,
      o.createdX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      deviceName,
      o.deviceName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      height,
      o.height,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      width,
      o.width,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frames,
      o.frames,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      content,
      o.content,
    )) {
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
