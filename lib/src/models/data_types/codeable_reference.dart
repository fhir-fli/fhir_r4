import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeableReference]
/// A reference to a resource (by instance), or instead, a reference to a
/// concept defined in a terminology or ontology (by class).
class CodeableReference extends DataType {
  /// Primary constructor for
  /// [CodeableReference]

  CodeableReference({
    super.id,
    super.extension_,
    this.concept,
    this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableReference.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeableReference(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      concept: json['concept'] != null
          ? CodeableConcept.fromJson(
              json['concept'] as Map<String, dynamic>,
            )
          : null,
      reference: json['reference'] != null
          ? Reference.fromJson(
              json['reference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CodeableReference]
  /// from a [String] or [YamlMap] object
  factory CodeableReference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeableReference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeableReference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeableReference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeableReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableReference.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeableReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeableReference';

  /// [concept]
  /// A reference to a concept - e.g. the information is identified by its
  /// general class to the degree of precision found in the terminology.
  final CodeableConcept? concept;

  /// [reference]
  /// A reference to a resource the provides exact details about the
  /// information being referenced.
  final Reference? reference;
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

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (concept != null) {
      json['concept'] = concept!.toJson();
    }

    if (reference != null) {
      json['reference'] = reference!.toJson();
    }

    return json;
  }

  @override
  CodeableReference clone() => throw UnimplementedError();
  @override
  CodeableReference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? concept,
    Reference? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeableReference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      concept: concept ?? this.concept,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
