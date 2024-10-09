import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Reference] /// A reference from one resource to another.
@JsonSerializable()
class Reference extends DataType {
  Reference({
    super.id,
    super.extension_,
    this.reference,
    this.referenceElement,
    this.type,
    this.typeElement,
    this.identifier,
    this.display,
    this.displayElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Reference';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// A reference to a location at which the other resource is found. The
  /// reference may be a relative reference, in which case it is relative to the
  /// service base URL, or an absolute URL that resolves to the location where
  /// the resource is found. The reference may be version specific or not. If the
  /// reference is not to a FHIR RESTful server, then it should be assumed to be
  /// version specific. Internal fragment references (start with '#') refer to
  /// contained resources.
  @JsonKey(name: 'reference')
  final FhirString? reference;
  @JsonKey(name: '_reference')
  final Element? referenceElement;

  /// [type] /// The expected type of the target of the reference. If both Reference.type
  /// and Reference.reference are populated and Reference.reference is a FHIR
  /// URL, both SHALL be consistent.
  ///
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  /// models, not resources).
  @JsonKey(name: 'type')
  final FhirUri? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [identifier] /// An identifier for the target resource. This is used when there is no way to
  /// reference the other resource directly, either because the entity it
  /// represents is not available through a FHIR server, or because there is no
  /// way for the author of the resource to convert a known identifier to an
  /// actual location. There is no requirement that a Reference.identifier point
  /// to something that is actually exposed as a FHIR instance, but it SHALL
  /// point to a business concept that would be expected to be exposed as a FHIR
  /// instance, and that instance would need to be of a FHIR resource type
  /// allowed by the reference.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [display] /// Plain text narrative that identifies the resource in addition to the
  /// resource reference.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (reference?.value != null) {
      json['reference'] = reference!.value;
    }
    if (referenceElement != null) {
      json['_reference'] = referenceElement!.toJson();
    }
    if (type?.value != null) {
      json['type'] = type!.value;
    }
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    return json;
  }

  factory Reference.fromJson(Map<String, dynamic> json) {
    return Reference(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reference:
          json['reference'] != null ? FhirString(json['reference']) : null,
      referenceElement: json['_reference'] != null
          ? Element.fromJson(json['_reference'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null ? FhirUri(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Reference clone() => throw UnimplementedError();
  @override
  Reference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? reference,
    Element? referenceElement,
    FhirUri? type,
    Element? typeElement,
    Identifier? identifier,
    FhirString? display,
    Element? displayElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Reference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      identifier: identifier ?? this.identifier,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Reference.fromYaml(dynamic yaml) => yaml is String
      ? Reference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Reference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Reference cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Reference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Reference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
