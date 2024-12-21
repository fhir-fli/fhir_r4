import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coding]
/// A reference to a code defined by a terminology system.
class Coding extends DataType
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        EventXMessageDefinition,
        EventXMessageHeader,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Coding]

  const Coding({
    super.id,
    super.extension_,
    this.system,
    this.version,
    this.code,
    this.display,
    this.userSelected,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Coding.fromJson(
    Map<String, dynamic> json,
  ) {
    return Coding(
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
      system: (json['system'] != null || json['_system'] != null)
          ? FhirUri.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      code: (json['code'] != null || json['_code'] != null)
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      display: (json['display'] != null || json['_display'] != null)
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      userSelected:
          (json['userSelected'] != null || json['_userSelected'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['userSelected'],
                  '_value': json['_userSelected'],
                })
              : null,
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

    if (system != null) {
      addField('system', system);
    }

    if (version != null) {
      addField('version', version);
    }

    if (code != null) {
      addField('code', code);
    }

    if (display != null) {
      addField('display', display);
    }

    if (userSelected != null) {
      addField('userSelected', userSelected);
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
  }) {
    return Coding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      version: version ?? this.version,
      code: code ?? this.code,
      display: display ?? this.display,
      userSelected: userSelected ?? this.userSelected,
    );
  }
}
