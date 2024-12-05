import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Contributor]
/// A contributor to the content of a knowledge asset, including authors,
/// editors, reviewers, and endorsers.
class Contributor extends DataType {
  /// Primary constructor for
  /// [Contributor]

  const Contributor({
    super.id,
    super.extension_,
    required this.type,
    required this.name,
    this.contact,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Contributor.fromJson(
    Map<String, dynamic> json,
  ) {
    return Contributor(
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
      type: ContributorType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Contributor]
  /// from a [String] or [YamlMap] object
  factory Contributor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Contributor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Contributor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Contributor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Contributor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Contributor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Contributor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Contributor';

  /// [type]
  /// The type of contributor.
  final ContributorType type;

  /// [name]
  /// The name of the individual or organization responsible for the
  /// contribution.
  final FhirString name;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// contributor.
  final List<ContactDetail>? contact;
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

    addField('type', type);
    addField('name', name);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Contributor clone() => throw UnimplementedError();
  @override
  Contributor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    ContributorType? type,
    FhirString? name,
    List<ContactDetail>? contact,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Contributor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      name: name ?? this.name,
      contact: contact ?? this.contact,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
