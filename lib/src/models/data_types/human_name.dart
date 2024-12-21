import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [HumanName]
/// A human's name with the ability to identify parts and usage.
class HumanName extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [HumanName]

  const HumanName({
    super.id,
    super.extension_,
    this.use,
    this.text,
    this.family,
    this.given,
    this.prefix,
    this.suffix,
    this.period,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HumanName.fromJson(
    Map<String, dynamic> json,
  ) {
    return HumanName(
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
      use: (json['use'] != null || json['_use'] != null)
          ? NameUse.fromJson({
              'value': json['use'],
              '_value': json['_use'],
            })
          : null,
      text: (json['text'] != null || json['_text'] != null)
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      family: (json['family'] != null || json['_family'] != null)
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

  /// Deserialize [HumanName]
  /// from a [String] or [YamlMap] object
  factory HumanName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HumanName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HumanName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HumanName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HumanName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HumanName.fromJsonString(
    String source,
  ) {
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

    addField('use', use);
    addField('text', text);
    addField('family', family);
    if (given != null && given!.isNotEmpty) {
      final fieldJson0 = given!.map((e) => e.toJson()).toList();
      json['given'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_given'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (prefix != null && prefix!.isNotEmpty) {
      final fieldJson1 = prefix!.map((e) => e.toJson()).toList();
      json['prefix'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_prefix'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (suffix != null && suffix!.isNotEmpty) {
      final fieldJson2 = suffix!.map((e) => e.toJson()).toList();
      json['suffix'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_suffix'] = fieldJson2.map((e) => e['_value']).toList();
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
    );
  }
}
