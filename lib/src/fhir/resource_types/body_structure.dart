import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [BodyStructure] /// Record details about an anatomical structure. This resource may be used
/// when a coded concept does not provide the necessary detail needed for the
/// use case.
@JsonSerializable()
class BodyStructure extends DomainResource {
  BodyStructure({
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
    this.active,
    this.activeElement,
    this.morphology,
    this.location,
    this.locationQualifier,
    this.description,
    this.descriptionElement,
    this.image,
    required this.patient,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.BodyStructure);
  @override
  String get fhirType => 'BodyStructure';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for this instance of the anatomical structure.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Whether this body site is in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [morphology] /// The kind of structure being represented by the body structure at
  /// `BodyStructure.location`. This can define both normal and abnormal
  /// morphologies.
  @JsonKey(name: 'morphology')
  final CodeableConcept? morphology;

  /// [location] /// The anatomical location or region of the specimen, lesion, or body
  /// structure.
  @JsonKey(name: 'location')
  final CodeableConcept? location;

  /// [locationQualifier] /// Qualifier to refine the anatomical location. These include qualifiers for
  /// laterality, relative location, directionality, number, and plane.
  @JsonKey(name: 'locationQualifier')
  final List<CodeableConcept>? locationQualifier;

  /// [description] /// A summary, characterization or explanation of the body structure.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [image] /// Image or images used to identify a location.
  @JsonKey(name: 'image')
  final List<Attachment>? image;

  /// [patient] /// The person to which the body site belongs.
  @JsonKey(name: 'patient')
  final Reference patient;
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
    if (active?.value != null) {
      json['active'] = active!.value;
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (morphology != null) {
      json['morphology'] = morphology!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (locationQualifier != null && locationQualifier!.isNotEmpty) {
      json['locationQualifier'] = locationQualifier!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (image != null && image!.isNotEmpty) {
      json['image'] =
          image!.map<dynamic>((Attachment v) => v.toJson()).toList();
    }
    json['patient'] = patient.toJson();
    return json;
  }

  factory BodyStructure.fromJson(Map<String, dynamic> json) {
    return BodyStructure(
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
      active: json['active'] != null ? FhirBoolean(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      morphology: json['morphology'] != null
          ? CodeableConcept.fromJson(json['morphology'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? CodeableConcept.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      locationQualifier: json['locationQualifier'] != null
          ? (json['locationQualifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      image: json['image'] != null
          ? (json['image'] as List<dynamic>)
              .map<Attachment>(
                  (dynamic v) => Attachment.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
    );
  }
  @override
  BodyStructure clone() => throw UnimplementedError();
  @override
  BodyStructure copyWith({
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
    FhirBoolean? active,
    Element? activeElement,
    CodeableConcept? morphology,
    CodeableConcept? location,
    List<CodeableConcept>? locationQualifier,
    FhirString? description,
    Element? descriptionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      morphology: morphology ?? this.morphology,
      location: location ?? this.location,
      locationQualifier: locationQualifier ?? this.locationQualifier,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

  factory BodyStructure.fromYaml(dynamic yaml) => yaml is String
      ? BodyStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BodyStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BodyStructure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BodyStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BodyStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
