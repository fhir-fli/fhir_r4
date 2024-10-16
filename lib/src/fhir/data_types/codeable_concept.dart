import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeableConcept]
/// A concept that may be defined by a formal reference to a terminology or
/// ontology or may be provided by text.
class CodeableConcept extends DataType {
  /// Primary constructor for [CodeableConcept]

  CodeableConcept({
    super.id,
    this.extension_,
    this.coding,
    this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableConcept.fromJson(Map<String, dynamic> json) {
    return CodeableConcept(
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
      coding: json['coding'] != null
          ? (json['coding'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
    );
  }

  /// Deserialize [CodeableConcept] from a [String]
  /// or [YamlMap] object
  factory CodeableConcept.fromYaml(dynamic yaml) => yaml is String
      ? CodeableConcept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CodeableConcept.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CodeableConcept cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CodeableConcept]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableConcept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeableConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeableConcept';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [coding]
  /// A reference to a code defined by a terminology system.
  final List<Coding>? coding;

  /// [text]
  /// A human language representation of the concept as seen/selected/uttered
  /// by the user who entered the data and/or which represents the intended
  /// meaning of the user.
  final FhirString? text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (coding != null && coding!.isNotEmpty) {
      json['coding'] = coding!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      final fieldJson2 = text!.toJson();
      json['text'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_text'] = fieldJson2['_value'];
      }
    }

    return json;
  }

  @override
  CodeableConcept clone() => throw UnimplementedError();
  @override
  CodeableConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? coding,
    FhirString? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeableConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      coding: coding ?? this.coding,
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
