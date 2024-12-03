import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coding]
/// A reference to a code defined by a terminology system.
class Coding extends DataType {
  /// Primary constructor for
  /// [Coding]

  Coding({
    super.id,
    super.extension_,
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
  factory Coding.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Coding(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      system: parseField<FhirUri>(
        json['system'],
        json['_system'],
        FhirUri.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      code: parseField<FhirCode>(
        json['code'],
        json['_code'],
        FhirCode.fromJson,
      ),
      display: parseField<FhirString>(
        json['display'],
        json['_display'],
        FhirString.fromJson,
      ),
      userSelected: parseField<FhirBoolean>(
        json['userSelected'],
        json['_userSelected'],
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [Coding]
  /// from a [String] or [YamlMap] object
  factory Coding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Coding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Coding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Coding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Coding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Coding.fromJsonString(
    String source,
  ) {
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

    addField('system', system);
    addField('version', version);
    addField('code', code);
    addField('display', display);
    addField('userSelected', userSelected);
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
