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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      use: JsonParser.parsePrimitive<NameUse>(
        json,
        'use',
        NameUse.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      family: JsonParser.parsePrimitive<FhirString>(
        json,
        'family',
        FhirString.fromJson,
      ),
      given: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'given',
        FhirString.fromJson,
      ),
      prefix: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
      ),
      suffix: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'suffix',
        FhirString.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
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
    addField('use', use);
    addField('text', text);
    addField('family', family);
    addField('given', given);
    addField('prefix', prefix);
    addField('suffix', suffix);
    addField('period', period);
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
