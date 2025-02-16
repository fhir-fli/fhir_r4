import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [BodyStructure]
/// Record details about an anatomical structure. This resource may be used
/// when a coded concept does not provide the necessary detail needed for
/// the use case.
class BodyStructure extends DomainResource {
  /// Primary constructor for
  /// [BodyStructure]

  const BodyStructure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.morphology,
    this.location,
    this.locationQualifier,
    this.description,
    this.image,
    required this.patient,
  }) : super(
          objectPath: 'BodyStructure',
          resourceType: R4ResourceType.BodyStructure,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BodyStructure.empty() => BodyStructure(
        patient: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BodyStructure';
    return BodyStructure(
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
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
        '$objectPath.active',
      ),
      morphology: JsonParser.parseObject<CodeableConcept>(
        json,
        'morphology',
        CodeableConcept.fromJson,
        '$objectPath.morphology',
      ),
      location: JsonParser.parseObject<CodeableConcept>(
        json,
        'location',
        CodeableConcept.fromJson,
        '$objectPath.location',
      ),
      locationQualifier: (json['locationQualifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.locationQualifier',
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
      image: (json['image'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.image',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
    );
  }

  /// Deserialize [BodyStructure]
  /// from a [String] or [YamlMap] object
  factory BodyStructure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructure';

  /// [identifier]
  /// Identifier for this instance of the anatomical structure.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this body site is in active use.
  final FhirBoolean? active;

  /// [morphology]
  /// The kind of structure being represented by the body structure at
  /// `BodyStructure.location`. This can define both normal and abnormal
  /// morphologies.
  final CodeableConcept? morphology;

  /// [location]
  /// The anatomical location or region of the specimen, lesion, or body
  /// structure.
  final CodeableConcept? location;

  /// [locationQualifier]
  /// Qualifier to refine the anatomical location. These include qualifiers
  /// for laterality, relative location, directionality, number, and plane.
  final List<CodeableConcept>? locationQualifier;

  /// [description]
  /// A summary, characterization or explanation of the body structure.
  final FhirString? description;

  /// [image]
  /// Image or images used to identify a location.
  final List<Attachment>? image;

  /// [patient]
  /// The person to which the body site belongs.
  final Reference patient;
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
    addField('active', active);
    addField('morphology', morphology);
    addField('location', location);
    addField('locationQualifier', locationQualifier);
    addField('description', description);
    addField('image', image);
    addField('patient', patient);
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
      'active',
      'morphology',
      'location',
      'locationQualifier',
      'description',
      'image',
      'patient',
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
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'morphology':
        if (morphology != null) {
          fields.add(morphology!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'locationQualifier':
        if (locationQualifier != null) {
          fields.addAll(locationQualifier!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'image':
        if (image != null) {
          fields.addAll(image!);
        }
      case 'patient':
        fields.add(patient);
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
  BodyStructure clone() => throw UnimplementedError();
  @override
  BodyStructure copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    CodeableConcept? morphology,
    CodeableConcept? location,
    List<CodeableConcept>? locationQualifier,
    FhirString? description,
    List<Attachment>? image,
    Reference? patient,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return BodyStructure(
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
      active: active?.copyWith(
            objectPath: '$newObjectPath.active',
          ) ??
          this.active,
      morphology: morphology?.copyWith(
            objectPath: '$newObjectPath.morphology',
          ) ??
          this.morphology,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      locationQualifier: locationQualifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.locationQualifier',
                ),
              )
              .toList() ??
          this.locationQualifier,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      image: image
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.image',
                ),
              )
              .toList() ??
          this.image,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BodyStructure) {
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
    if (!equalsDeepWithNull(active, o.active)) {
      return false;
    }
    if (!equalsDeepWithNull(morphology, o.morphology)) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      locationQualifier,
      o.locationQualifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<Attachment>(
      image,
      o.image,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    return true;
  }
}
