import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ContactDetail]
/// Specifies contact information for a person or organization.
class ContactDetail extends DataType {
  /// Primary constructor for
  /// [ContactDetail]

  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.telecom,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContactDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContactDetail(
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
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ContactDetail]
  /// from a [String] or [YamlMap] object
  factory ContactDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContactDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContactDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContactDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContactDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContactDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContactDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContactDetail';

  /// [name]
  /// The name of an individual to contact.
  final FhirString? name;

  /// [telecom]
  /// The contact details for the individual (if a name was provided) or the
  /// organization.
  final List<ContactPoint>? telecom;
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

    addField('name', name);
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ContactDetail clone() => throw UnimplementedError();
  @override
  ContactDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? name,
    List<ContactPoint>? telecom,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContactDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
