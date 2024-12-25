import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Narrative]
/// A human-readable summary of the resource conveying the essential
/// clinical and business information for the resource.
class Narrative extends DataType {
  /// Primary constructor for
  /// [Narrative]

  const Narrative({
    super.id,
    super.extension_,
    required this.status,
    required this.div,
    super.disallowExtensions,
    super.objectPath = 'Narrative',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Narrative.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Narrative';
    return Narrative(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<NarrativeStatus>(
        json,
        'status',
        NarrativeStatus.fromJson,
        '$objectPath.status',
      )!,
      div: JsonParser.parsePrimitive<FhirXhtml>(
        json,
        'div',
        FhirXhtml.fromJson,
        '$objectPath.div',
      )!,
    );
  }

  /// Deserialize [Narrative]
  /// from a [String] or [YamlMap] object
  factory Narrative.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Narrative.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Narrative.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Narrative '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Narrative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Narrative.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Narrative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Narrative';

  /// [status]
  /// The status of the narrative - whether it's entirely generated (from
  /// just the defined data or the extensions too), or whether a human
  /// authored it and it may contain additional data.
  final NarrativeStatus status;

  /// [div]
  /// The actual narrative content, a stripped down version of XHTML.
  final FhirXhtml div;
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
    addField('status', status);
    addField('div', div);
    return json;
  }

  @override
  Narrative clone() => throw UnimplementedError();
  @override
  Narrative copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    NarrativeStatus? status,
    FhirXhtml? div,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Narrative(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      status: status ?? this.status,
      div: div ?? this.div,
    );
  }
}
