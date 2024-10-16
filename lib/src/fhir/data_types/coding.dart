import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coding]
/// A reference to a code defined by a terminology system.
class Coding extends DataType {
  /// Primary constructor for [Coding]

  Coding({
    super.id,
    this.extension_,
    this.system,
    this.version,
    this.code,
    this.display,
    this.userSelected,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Coding.fromJson(Map<String, dynamic> json) {
    return Coding(
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
      system: json['system'] != null
          ? FhirUri.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      code: json['code'] != null
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      userSelected: json['userSelected'] != null
          ? FhirBoolean.fromJson({
              'value': json['userSelected'],
              '_value': json['_userSelected'],
            })
          : null,
    );
  }

  /// Deserialize [Coding] from a [String]
  /// or [YamlMap] object
  factory Coding.fromYaml(dynamic yaml) => yaml is String
      ? Coding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Coding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Coding cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Coding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Coding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Coding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Coding';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [system]
  /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUri? system;

  /// [version]
  /// The version of the code system which was used when choosing this code.
  /// Note that a well-maintained code system does not need the version
  /// reported, because the meaning of codes is consistent across versions.
  /// However this cannot consistently be assured, and when the meaning is
  /// not guaranteed to be consistent, the version SHOULD be exchanged.
  final FhirString? version;

  /// [code]
  /// A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding
  /// system (e.g. post-coordination).
  final FhirCode? code;

  /// [display]
  /// A representation of the meaning of the code in the system, following
  /// the rules of the system.
  final FhirString? display;

  /// [userSelected]
  /// Indicates that this coding was chosen by a user directly - e.g. off a
  /// pick list of available items (codes or displays).
  final FhirBoolean? userSelected;
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

    if (system != null) {
      final fieldJson2 = system!.toJson();
      json['system'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_system'] = fieldJson2['_value'];
      }
    }

    if (version != null) {
      final fieldJson3 = version!.toJson();
      json['version'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_version'] = fieldJson3['_value'];
      }
    }

    if (code != null) {
      final fieldJson4 = code!.toJson();
      json['code'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_code'] = fieldJson4['_value'];
      }
    }

    if (display != null) {
      final fieldJson5 = display!.toJson();
      json['display'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_display'] = fieldJson5['_value'];
      }
    }

    if (userSelected != null) {
      final fieldJson6 = userSelected!.toJson();
      json['userSelected'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_userSelected'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  Coding clone() => throw UnimplementedError();
  @override
  Coding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? system,
    FhirString? version,
    FhirCode? code,
    FhirString? display,
    FhirBoolean? userSelected,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Coding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      version: version ?? this.version,
      code: code ?? this.code,
      display: display ?? this.display,
      userSelected: userSelected ?? this.userSelected,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
