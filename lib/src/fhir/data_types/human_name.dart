import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [HumanName]
/// A human's name with the ability to identify parts and usage.
class HumanName extends DataType {
  /// Primary constructor for [HumanName]

  HumanName({
    super.id,
    this.extension_,
    this.use,
    this.text,
    this.family,
    this.given,
    this.prefix,
    this.suffix,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HumanName.fromJson(
    Map<String, dynamic> json,
  ) {
    return HumanName(
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
      use: json['use'] != null
          ? NameUse.fromJson({
              'value': json['use'],
              '_value': json['_use'],
            })
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      family: json['family'] != null
          ? FhirString.fromJson({
              'value': json['family'],
              '_value': json['_family'],
            })
          : null,
      given: parsePrimitiveList<FhirString>(
        json['given'] as List<dynamic>?,
        json['_given'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      prefix: parsePrimitiveList<FhirString>(
        json['prefix'] as List<dynamic>?,
        json['_prefix'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      suffix: parsePrimitiveList<FhirString>(
        json['suffix'] as List<dynamic>?,
        json['_suffix'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [HumanName] from a [String]
  /// or [YamlMap] object
  factory HumanName.fromYaml(dynamic yaml) => yaml is String
      ? HumanName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HumanName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('HumanName cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HumanName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HumanName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HumanName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'HumanName';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [use]
  /// Identifies the purpose for this name.
  final NameUse? use;

  /// [text]
  /// Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the
  /// specific parts.
  final FhirString? text;

  /// [family]
  /// The part of a name that links to the genealogy. In some cultures (e.g.
  /// Eritrea) the family name of a son is the first name of his father.
  final FhirString? family;

  /// [given]
  /// Given name.
  final List<FhirString>? given;

  /// [prefix]
  /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the start of
  /// the name.
  final List<FhirString>? prefix;

  /// [suffix]
  /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the end of the
  /// name.
  final List<FhirString>? suffix;

  /// [period]
  /// Indicates the period of time when this name was valid for the named
  /// person.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (use != null) {
      json['use'] = use!.toJson();
    }

    if (text != null) {
      final fieldJson2 = text!.toJson();
      json['text'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_text'] = fieldJson2['_value'];
      }
    }

    if (family != null) {
      final fieldJson3 = family!.toJson();
      json['family'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_family'] = fieldJson3['_value'];
      }
    }

    if (given != null && given!.isNotEmpty) {
      final fieldJson4 = given!.map((e) => e.toJson()).toList();
      json['given'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_given'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (prefix != null && prefix!.isNotEmpty) {
      final fieldJson5 = prefix!.map((e) => e.toJson()).toList();
      json['prefix'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_prefix'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (suffix != null && suffix!.isNotEmpty) {
      final fieldJson6 = suffix!.map((e) => e.toJson()).toList();
      json['suffix'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_suffix'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  HumanName clone() => throw UnimplementedError();
  @override
  HumanName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    NameUse? use,
    FhirString? text,
    FhirString? family,
    List<FhirString>? given,
    List<FhirString>? prefix,
    List<FhirString>? suffix,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HumanName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      text: text ?? this.text,
      family: family ?? this.family,
      given: given ?? this.given,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
