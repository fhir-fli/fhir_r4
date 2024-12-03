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

  BodyStructure({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.BodyStructure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructure.fromJson(
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
    return BodyStructure(
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
      active: parseField<FhirBoolean>(
        json['active'],
        json['_active'],
        FhirBoolean.fromJson,
      ),
      morphology: json['morphology'] != null
          ? CodeableConcept.fromJson(
              json['morphology'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? CodeableConcept.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      locationQualifier: parseList<CodeableConcept>(
        json['locationQualifier'] as List<dynamic>?,
        json['_locationQualifier'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      image: parseList<Attachment>(
        json['image'] as List<dynamic>?,
        json['_image'] as List<dynamic>?,
        Attachment.fromJson,
      ),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return BodyStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

    addField('active', active);
    if (morphology != null) {
      json['morphology'] = morphology!.toJson();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (locationQualifier != null && locationQualifier!.isNotEmpty) {
      json['locationQualifier'] =
          locationQualifier!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (image != null && image!.isNotEmpty) {
      json['image'] = image!.map((e) => e.toJson()).toList();
    }

    json['patient'] = patient.toJson();

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BodyStructure(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      morphology: morphology ?? this.morphology,
      location: location ?? this.location,
      locationQualifier: locationQualifier ?? this.locationQualifier,
      description: description ?? this.description,
      image: image ?? this.image,
      patient: patient ?? this.patient,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
