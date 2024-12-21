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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Narrative.fromJson(
    Map<String, dynamic> json,
  ) {
    return Narrative(
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
      status: NarrativeStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      div: FhirXhtml.fromJson({
        'value': json['div'],
        '_value': json['_div'],
      }),
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

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
