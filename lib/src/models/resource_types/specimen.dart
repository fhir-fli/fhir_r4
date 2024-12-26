import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Specimen]
/// A sample to be used for analysis.
class Specimen extends DomainResource {
  /// Primary constructor for
  /// [Specimen]

  const Specimen({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.type,
    this.subject,
    this.receivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  }) : super(
          objectPath: 'Specimen',
          resourceType: R4ResourceType.Specimen,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Specimen.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen';
    return Specimen(
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
      accessionIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'accessionIdentifier',
        Identifier.fromJson,
        '$objectPath.accessionIdentifier',
      ),
      status: JsonParser.parsePrimitive<SpecimenStatus>(
        json,
        'status',
        SpecimenStatus.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      receivedTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'receivedTime',
        FhirDateTime.fromJson,
        '$objectPath.receivedTime',
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parent',
              },
            ),
          )
          .toList(),
      request: (json['request'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
              },
            ),
          )
          .toList(),
      collection: JsonParser.parseObject<SpecimenCollection>(
        json,
        'collection',
        SpecimenCollection.fromJson,
        '$objectPath.collection',
      ),
      processing: (json['processing'] as List<dynamic>?)
          ?.map<SpecimenProcessing>(
            (v) => SpecimenProcessing.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processing',
              },
            ),
          )
          .toList(),
      container: (json['container'] as List<dynamic>?)
          ?.map<SpecimenContainer>(
            (v) => SpecimenContainer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.container',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
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

  /// Deserialize [Specimen]
  /// from a [String] or [YamlMap] object
  factory Specimen.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Specimen.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Specimen.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Specimen '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Specimen]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Specimen.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Specimen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Specimen';

  /// [identifier]
  /// Id for specimen.
  final List<Identifier>? identifier;

  /// [accessionIdentifier]
  /// The identifier assigned by the lab when accessioning specimen(s). This
  /// is not necessarily the same as the specimen identifier, depending on
  /// local lab procedures.
  final Identifier? accessionIdentifier;

  /// [status]
  /// The availability of the specimen.
  final SpecimenStatus? status;

  /// [type]
  /// The kind of material that forms the specimen.
  final CodeableConcept? type;

  /// [subject]
  /// Where the specimen came from. This may be from patient(s), from a
  /// location (e.g., the source of an environmental sample), or a sampling
  /// of a substance or a device.
  final Reference? subject;

  /// [receivedTime]
  /// Time when specimen was received for processing or testing.
  final FhirDateTime? receivedTime;

  /// [parent]
  /// Reference to the parent (source) specimen which is used when the
  /// specimen was either derived from or a component of another specimen.
  final List<Reference>? parent;

  /// [request]
  /// Details concerning a service request that required a specimen to be
  /// collected.
  final List<Reference>? request;

  /// [collection]
  /// Details concerning the specimen collection.
  final SpecimenCollection? collection;

  /// [processing]
  /// Details concerning processing and processing steps for the specimen.
  final List<SpecimenProcessing>? processing;

  /// [container]
  /// The container holding the specimen. The recursive nature of containers;
  /// i.e. blood in tube in tray in rack is not addressed here.
  final List<SpecimenContainer>? container;

  /// [condition]
  /// A mode or state of being that describes the nature of the specimen.
  final List<CodeableConcept>? condition;

  /// [note]
  /// To communicate any details or issues about the specimen or during the
  /// specimen collection. (for example: broken vial, sent with patient,
  /// frozen).
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
    addField('accessionIdentifier', accessionIdentifier);
    addField('status', status);
    addField('type', type);
    addField('subject', subject);
    addField('receivedTime', receivedTime);
    addField('parent', parent);
    addField('request', request);
    addField('collection', collection);
    addField('processing', processing);
    addField('container', container);
    addField('condition', condition);
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
      'accessionIdentifier',
      'status',
      'type',
      'subject',
      'receivedTime',
      'parent',
      'request',
      'collection',
      'processing',
      'container',
      'condition',
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
      case 'accessionIdentifier':
        if (accessionIdentifier != null) {
          fields.add(accessionIdentifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'receivedTime':
        if (receivedTime != null) {
          fields.add(receivedTime!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'collection':
        if (collection != null) {
          fields.add(collection!);
        }
      case 'processing':
        if (processing != null) {
          fields.addAll(processing!);
        }
      case 'container':
        if (container != null) {
          fields.addAll(container!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
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
  Specimen clone() => throw UnimplementedError();
  @override
  Specimen copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Identifier? accessionIdentifier,
    SpecimenStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? receivedTime,
    List<Reference>? parent,
    List<Reference>? request,
    SpecimenCollection? collection,
    List<SpecimenProcessing>? processing,
    List<SpecimenContainer>? container,
    List<CodeableConcept>? condition,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Specimen(
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
      accessionIdentifier: accessionIdentifier?.copyWith(
            objectPath: '$newObjectPath.accessionIdentifier',
          ) ??
          this.accessionIdentifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      receivedTime: receivedTime?.copyWith(
            objectPath: '$newObjectPath.receivedTime',
          ) ??
          this.receivedTime,
      parent: parent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parent',
                ),
              )
              .toList() ??
          this.parent,
      request: request
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.request',
                ),
              )
              .toList() ??
          this.request,
      collection: collection?.copyWith(
            objectPath: '$newObjectPath.collection',
          ) ??
          this.collection,
      processing: processing
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.processing',
                ),
              )
              .toList() ??
          this.processing,
      container: container
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.container',
                ),
              )
              .toList() ??
          this.container,
      condition: condition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.condition',
                ),
              )
              .toList() ??
          this.condition,
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
}

/// [SpecimenCollection]
/// Details concerning the specimen collection.
class SpecimenCollection extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenCollection]

  const SpecimenCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedX,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.collection',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenCollection.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.collection';
    return SpecimenCollection(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      collector: JsonParser.parseObject<Reference>(
        json,
        'collector',
        Reference.fromJson,
        '$objectPath.collector',
      ),
      collectedX: JsonParser.parsePolymorphic<CollectedXSpecimenCollection>(
        json,
        {
          'collectedDateTime': FhirDateTime.fromJson,
          'collectedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      duration: JsonParser.parseObject<FhirDuration>(
        json,
        'duration',
        FhirDuration.fromJson,
        '$objectPath.duration',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      fastingStatusX:
          JsonParser.parsePolymorphic<FastingStatusXSpecimenCollection>(
        json,
        {
          'fastingStatusCodeableConcept': CodeableConcept.fromJson,
          'fastingStatusDuration': FhirDuration.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenCollection]
  /// from a [String] or [YamlMap] object
  factory SpecimenCollection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenCollection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenCollection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenCollection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenCollection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenCollection';

  /// [collector]
  /// Person who collected the specimen.
  final Reference? collector;

  /// [collectedX]
  /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  final CollectedXSpecimenCollection? collectedX;

  /// [duration]
  /// The span of time over which the collection of a specimen occurred.
  final FhirDuration? duration;

  /// [quantity]
  /// The quantity of specimen collected; for instance the volume of a blood
  /// sample, or the physical measurement of an anatomic pathology sample.
  final Quantity? quantity;

  /// [method]
  /// A coded value specifying the technique that is used to perform the
  /// procedure.
  final CodeableConcept? method;

  /// [bodySite]
  /// Anatomical location from which the specimen was collected (if subject
  /// is a patient). This is the target site. This element is not used for
  /// environmental specimens.
  final CodeableConcept? bodySite;

  /// [fastingStatusX]
  /// Abstinence or reduction from some or all food, drink, or both, for a
  /// period of time prior to sample collection.
  final FastingStatusXSpecimenCollection? fastingStatusX;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('collector', collector);
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField('collected${fhirType.capitalize()}', collectedX);
    }

    addField('duration', duration);
    addField('quantity', quantity);
    addField('method', method);
    addField('bodySite', bodySite);
    if (fastingStatusX != null) {
      final fhirType = fastingStatusX!.fhirType;
      addField('fastingStatus${fhirType.capitalize()}', fastingStatusX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'collector',
      'collectedX',
      'duration',
      'quantity',
      'method',
      'bodySite',
      'fastingStatusX',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'collectedDateTime':
        if (collectedX is FhirDateTime) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is Period) {
          fields.add(collectedX!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'fastingStatusCodeableConcept':
        if (fastingStatusX is CodeableConcept) {
          fields.add(fastingStatusX!);
        }
      case 'fastingStatusDuration':
        if (fastingStatusX is FhirDuration) {
          fields.add(fastingStatusX!);
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
  SpecimenCollection clone() => throw UnimplementedError();
  @override
  SpecimenCollection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    CollectedXSpecimenCollection? collectedX,
    FhirDuration? duration,
    Quantity? quantity,
    CodeableConcept? method,
    CodeableConcept? bodySite,
    FastingStatusXSpecimenCollection? fastingStatusX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenCollection(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      collector: collector?.copyWith(
            objectPath: '$newObjectPath.collector',
          ) ??
          this.collector,
      collectedX: collectedX?.copyWith(
            objectPath: '$newObjectPath.collectedX',
          ) as CollectedXSpecimenCollection? ??
          this.collectedX,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      fastingStatusX: fastingStatusX?.copyWith(
            objectPath: '$newObjectPath.fastingStatusX',
          ) as FastingStatusXSpecimenCollection? ??
          this.fastingStatusX,
    );
  }
}

/// [SpecimenProcessing]
/// Details concerning processing and processing steps for the specimen.
class SpecimenProcessing extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenProcessing]

  const SpecimenProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.processing',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenProcessing.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.processing';
    return SpecimenProcessing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      procedure: JsonParser.parseObject<CodeableConcept>(
        json,
        'procedure',
        CodeableConcept.fromJson,
        '$objectPath.procedure',
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      timeX: JsonParser.parsePolymorphic<TimeXSpecimenProcessing>(
        json,
        {
          'timeDateTime': FhirDateTime.fromJson,
          'timePeriod': Period.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenProcessing]
  /// from a [String] or [YamlMap] object
  factory SpecimenProcessing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenProcessing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenProcessing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenProcessing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenProcessing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenProcessing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenProcessing';

  /// [description]
  /// Textual description of procedure.
  final FhirString? description;

  /// [procedure]
  /// A coded value specifying the procedure used to process the specimen.
  final CodeableConcept? procedure;

  /// [additive]
  /// Material used in the processing step.
  final List<Reference>? additive;

  /// [timeX]
  /// A record of the time or period when the specimen processing occurred.
  /// For example the time of sample fixation or the period of time the
  /// sample was in formalin.
  final TimeXSpecimenProcessing? timeX;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    addField('procedure', procedure);
    addField('additive', additive);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalize()}', timeX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'procedure',
      'additive',
      'timeX',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.add(procedure!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'timeDateTime':
        if (timeX is FhirDateTime) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is Period) {
          fields.add(timeX!);
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
  SpecimenProcessing clone() => throw UnimplementedError();
  @override
  SpecimenProcessing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    CodeableConcept? procedure,
    List<Reference>? additive,
    TimeXSpecimenProcessing? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenProcessing(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      procedure: procedure?.copyWith(
            objectPath: '$newObjectPath.procedure',
          ) ??
          this.procedure,
      additive: additive
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additive',
                ),
              )
              .toList() ??
          this.additive,
      timeX: timeX?.copyWith(
            objectPath: '$newObjectPath.timeX',
          ) as TimeXSpecimenProcessing? ??
          this.timeX,
    );
  }
}

/// [SpecimenContainer]
/// The container holding the specimen. The recursive nature of containers;
/// i.e. blood in tube in tray in rack is not addressed here.
class SpecimenContainer extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenContainer]

  const SpecimenContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.container',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenContainer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.container';
    return SpecimenContainer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      capacity: JsonParser.parseObject<Quantity>(
        json,
        'capacity',
        Quantity.fromJson,
        '$objectPath.capacity',
      ),
      specimenQuantity: JsonParser.parseObject<Quantity>(
        json,
        'specimenQuantity',
        Quantity.fromJson,
        '$objectPath.specimenQuantity',
      ),
      additiveX: JsonParser.parsePolymorphic<AdditiveXSpecimenContainer>(
        json,
        {
          'additiveCodeableConcept': CodeableConcept.fromJson,
          'additiveReference': Reference.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenContainer]
  /// from a [String] or [YamlMap] object
  factory SpecimenContainer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenContainer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenContainer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenContainer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenContainer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenContainer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenContainer';

  /// [identifier]
  /// Id for container. There may be multiple; a manufacturer's bar code, lab
  /// assigned identifier, etc. The container ID may differ from the specimen
  /// id in some circumstances.
  final List<Identifier>? identifier;

  /// [description]
  /// Textual description of the container.
  final FhirString? description;

  /// [type]
  /// The type of container associated with the specimen (e.g. slide,
  /// aliquot, etc.).
  final CodeableConcept? type;

  /// [capacity]
  /// The capacity (volume or other measure) the container may contain.
  final Quantity? capacity;

  /// [specimenQuantity]
  /// The quantity of specimen in the container; may be volume, dimensions,
  /// or other appropriate measurements, depending on the specimen type.
  final Quantity? specimenQuantity;

  /// [additiveX]
  /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  final AdditiveXSpecimenContainer? additiveX;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('description', description);
    addField('type', type);
    addField('capacity', capacity);
    addField('specimenQuantity', specimenQuantity);
    if (additiveX != null) {
      final fhirType = additiveX!.fhirType;
      addField('additive${fhirType.capitalize()}', additiveX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'description',
      'type',
      'capacity',
      'specimenQuantity',
      'additiveX',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'capacity':
        if (capacity != null) {
          fields.add(capacity!);
        }
      case 'specimenQuantity':
        if (specimenQuantity != null) {
          fields.add(specimenQuantity!);
        }
      case 'additiveCodeableConcept':
        if (additiveX is CodeableConcept) {
          fields.add(additiveX!);
        }
      case 'additiveReference':
        if (additiveX is Reference) {
          fields.add(additiveX!);
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
  SpecimenContainer clone() => throw UnimplementedError();
  @override
  SpecimenContainer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? description,
    CodeableConcept? type,
    Quantity? capacity,
    Quantity? specimenQuantity,
    AdditiveXSpecimenContainer? additiveX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenContainer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      capacity: capacity?.copyWith(
            objectPath: '$newObjectPath.capacity',
          ) ??
          this.capacity,
      specimenQuantity: specimenQuantity?.copyWith(
            objectPath: '$newObjectPath.specimenQuantity',
          ) ??
          this.specimenQuantity,
      additiveX: additiveX?.copyWith(
            objectPath: '$newObjectPath.additiveX',
          ) as AdditiveXSpecimenContainer? ??
          this.additiveX,
    );
  }
}
