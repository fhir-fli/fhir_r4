import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Basic]
/// Basic is used for handling concepts not yet defined in FHIR,
/// narrative-only resources that don't map to an existing resource, and
/// custom resources not appropriate for inclusion in the FHIR
/// specification.
class Basic extends DomainResource {
  /// Primary constructor for
  /// [Basic]

  const Basic({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.subject,
    this.created,
    this.author,
  }) : super(
          resourceType: R4ResourceType.Basic,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Basic.fromJson(
    Map<String, dynamic> json,
  ) {
    return Basic(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      created: (json['created'] != null || json['_created'] != null)
          ? FhirDate.fromJson({
              'value': json['created'],
              '_value': json['_created'],
            })
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Basic]
  /// from a [String] or [YamlMap] object
  factory Basic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Basic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Basic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Basic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Basic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Basic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Basic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Basic';

  /// [identifier]
  /// Identifier assigned to the resource for business purposes, outside the
  /// context of FHIR.
  final List<Identifier>? identifier;

  /// [code]
  /// Identifies the 'type' of resource - equivalent to the resource name for
  /// other resources.
  final CodeableConcept code;

  /// [subject]
  /// Identifies the patient, practitioner, device or any other resource that
  /// is the "focus" of this resource.
  final Reference? subject;

  /// [created]
  /// Identifies when the resource was first created.
  final FhirDate? created;

  /// [author]
  /// Indicates who was responsible for creating the resource instance.
  final Reference? author;
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
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

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

    json['code'] = code.toJson();

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (created != null) {
      addField('created', created);
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    return json;
  }

  @override
  Basic clone() => throw UnimplementedError();
  @override
  Basic copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    Reference? subject,
    FhirDate? created,
    Reference? author,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Basic(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      author: author ?? this.author,
    );
  }
}
