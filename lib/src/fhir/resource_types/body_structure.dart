import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'body_structure.g.dart';

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
  }) : super(
            resourceType: R4ResourceType.BodyStructure,
            fhirType: 'BodyStructure');
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
  factory BodyStructure.fromJson(Map<String, dynamic> json) =>
      _$BodyStructureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BodyStructureToJson(this);

  @override
  BodyStructure clone() => throw UnimplementedError();
  @override
  BodyStructure copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
