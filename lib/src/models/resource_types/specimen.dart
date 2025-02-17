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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Specimen.empty() => Specimen();

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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'accessionIdentifier':
        {
          if (child is Identifier) {
            return copyWith(accessionIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is SpecimenStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'receivedTime':
        {
          if (child is FhirDateTime) {
            return copyWith(receivedTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'parent':
        {
          if (child is List<Reference>) {
            return copyWith(parent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'request':
        {
          if (child is List<Reference>) {
            return copyWith(request: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collection':
        {
          if (child is SpecimenCollection) {
            return copyWith(collection: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'processing':
        {
          if (child is List<SpecimenProcessing>) {
            return copyWith(processing: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'container':
        {
          if (child is List<SpecimenContainer>) {
            return copyWith(container: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'condition':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(condition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Specimen) {
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
    if (!equalsDeepWithNull(accessionIdentifier, o.accessionIdentifier)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(receivedTime, o.receivedTime)) {
      return false;
    }
    if (!listEquals<Reference>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(collection, o.collection)) {
      return false;
    }
    if (!listEquals<SpecimenProcessing>(
      processing,
      o.processing,
    )) {
      return false;
    }
    if (!listEquals<SpecimenContainer>(
      container,
      o.container,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      condition,
      o.condition,
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenCollection.empty() => SpecimenCollection();

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

  /// Getter for [collectedDateTime] as a FhirDateTime
  FhirDateTime? get collectedDateTime => collectedX?.isAs<FhirDateTime>();

  /// Getter for [collectedPeriod] as a Period
  Period? get collectedPeriod => collectedX?.isAs<Period>();

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

  /// Getter for [fastingStatusCodeableConcept] as a CodeableConcept
  CodeableConcept? get fastingStatusCodeableConcept =>
      fastingStatusX?.isAs<CodeableConcept>();

  /// Getter for [fastingStatusDuration] as a FhirDuration
  FhirDuration? get fastingStatusDuration =>
      fastingStatusX?.isAs<FhirDuration>();
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
  List<String> listChildrenNames() {
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
      case 'collected':
        fields.add(collectedX!);
      case 'collectedX':
        fields.add(collectedX!);
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
      case 'fastingStatus':
        fields.add(fastingStatusX!);
      case 'fastingStatusX':
        fields.add(fastingStatusX!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collector':
        {
          if (child is Reference) {
            return copyWith(collector: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedX':
        {
          if (child is CollectedXSpecimenCollection) {
            // child is e.g. SubjectX union
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedPeriod':
        {
          if (child is Period) {
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'duration':
        {
          if (child is FhirDuration) {
            return copyWith(duration: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConcept) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fastingStatusX':
        {
          if (child is FastingStatusXSpecimenCollection) {
            // child is e.g. SubjectX union
            return copyWith(fastingStatusX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fastingStatusCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(fastingStatusX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fastingStatusFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(fastingStatusX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenCollection) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(collector, o.collector)) {
      return false;
    }
    if (!equalsDeepWithNull(collectedX, o.collectedX)) {
      return false;
    }
    if (!equalsDeepWithNull(duration, o.duration)) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(method, o.method)) {
      return false;
    }
    if (!equalsDeepWithNull(bodySite, o.bodySite)) {
      return false;
    }
    if (!equalsDeepWithNull(fastingStatusX, o.fastingStatusX)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenProcessing.empty() => SpecimenProcessing();

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

  /// Getter for [timeDateTime] as a FhirDateTime
  FhirDateTime? get timeDateTime => timeX?.isAs<FhirDateTime>();

  /// Getter for [timePeriod] as a Period
  Period? get timePeriod => timeX?.isAs<Period>();
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
  List<String> listChildrenNames() {
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
      case 'time':
        fields.add(timeX!);
      case 'timeX':
        fields.add(timeX!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'procedure':
        {
          if (child is CodeableConcept) {
            return copyWith(procedure: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additive':
        {
          if (child is List<Reference>) {
            return copyWith(additive: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeX':
        {
          if (child is TimeXSpecimenProcessing) {
            // child is e.g. SubjectX union
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timePeriod':
        {
          if (child is Period) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenProcessing) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(procedure, o.procedure)) {
      return false;
    }
    if (!listEquals<Reference>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(timeX, o.timeX)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenContainer.empty() => SpecimenContainer();

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

  /// Getter for [additiveCodeableConcept] as a CodeableConcept
  CodeableConcept? get additiveCodeableConcept =>
      additiveX?.isAs<CodeableConcept>();

  /// Getter for [additiveReference] as a Reference
  Reference? get additiveReference => additiveX?.isAs<Reference>();
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
  List<String> listChildrenNames() {
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
      case 'additive':
        fields.add(additiveX!);
      case 'additiveX':
        fields.add(additiveX!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'capacity':
        {
          if (child is Quantity) {
            return copyWith(capacity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specimenQuantity':
        {
          if (child is Quantity) {
            return copyWith(specimenQuantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additiveX':
        {
          if (child is AdditiveXSpecimenContainer) {
            // child is e.g. SubjectX union
            return copyWith(additiveX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additiveCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(additiveX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additiveReference':
        {
          if (child is Reference) {
            return copyWith(additiveX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenContainer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(capacity, o.capacity)) {
      return false;
    }
    if (!equalsDeepWithNull(specimenQuantity, o.specimenQuantity)) {
      return false;
    }
    if (!equalsDeepWithNull(additiveX, o.additiveX)) {
      return false;
    }
    return true;
  }
}
