import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Reference]
/// A reference from one resource to another.
class Reference extends DataType {
  /// Primary constructor for [Reference]

  Reference({
    super.id,
    this.extension_,
    this.reference,
    this.type,
    this.identifier,
    this.display,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Reference.fromJson(Map<String, dynamic> json) {
    return Reference(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: json['reference'] != null
          ? FhirString.fromJson({
              'value': json['reference'],
              '_value': json['_reference'],
            })
          : null,
      type: json['type'] != null
          ? FhirUri.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
    );
  }

  /// Deserialize [Reference] from a [String]
  /// or [YamlMap] object
  factory Reference.fromYaml(dynamic yaml) => yaml is String
      ? Reference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Reference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Reference cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Reference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Reference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Reference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Reference';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [reference]
  /// A reference to a location at which the other resource is found. The
  /// reference may be a relative reference, in which case it is relative to
  /// the service base URL, or an absolute URL that resolves to the location
  /// where the resource is found. The reference may be version specific or
  /// not. If the reference is not to a FHIR RESTful server, then it should
  /// be assumed to be version specific. Internal fragment references (start
  /// with '#') refer to contained resources.
  final FhirString? reference;

  /// [type]
  /// The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  /// Reference.reference is a FHIR URL, both SHALL be consistent.
  ///
  /// The type is the Canonical URL of Resource Definition that is the type
  /// this reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference
  /// to http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are
  /// only allowed for logical models (and can only be used in references in
  /// logical models, not resources).
  final FhirUri? type;

  /// [identifier]
  /// An identifier for the target resource. This is used when there is no
  /// way to reference the other resource directly, either because the entity
  /// it represents is not available through a FHIR server, or because there
  /// is no way for the author of the resource to convert a known identifier
  /// to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a
  /// FHIR instance, but it SHALL point to a business concept that would be
  /// expected to be exposed as a FHIR instance, and that instance would need
  /// to be of a FHIR resource type allowed by the reference.
  final Identifier? identifier;

  /// [display]
  /// Plain text narrative that identifies the resource in addition to the
  /// resource reference.
  final FhirString? display;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (reference != null) {
      final fieldJson2 = reference!.toJson();
      json['reference'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_reference'] = fieldJson2['_value'];
      }
    }

    if (type != null) {
      final fieldJson3 = type!.toJson();
      json['type'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_type'] = fieldJson3['_value'];
      }
    }

    if (identifier != null) {
      final fieldJson4 = identifier!.toJson();
      json['identifier'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_identifier'] = fieldJson4['_value'];
      }
    }

    if (display != null) {
      final fieldJson5 = display!.toJson();
      json['display'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_display'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  Reference clone() => throw UnimplementedError();
  @override
  Reference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? reference,
    FhirUri? type,
    Identifier? identifier,
    FhirString? display,
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
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      display: display ?? this.display,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
