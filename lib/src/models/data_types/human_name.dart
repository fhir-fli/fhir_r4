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
    super.objectPath = 'HumanName',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory HumanName.empty() => const HumanName();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HumanName.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'HumanName';
    return HumanName(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      use: JsonParser.parsePrimitive<NameUse>(
        json,
        'use',
        NameUse.fromJson,
        '$objectPath.use',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      family: JsonParser.parsePrimitive<FhirString>(
        json,
        'family',
        FhirString.fromJson,
        '$objectPath.family',
      ),
      given: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'given',
        FhirString.fromJson,
        '$objectPath.given',
      ),
      prefix: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
        '$objectPath.prefix',
      ),
      suffix: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'suffix',
        FhirString.fromJson,
        '$objectPath.suffix',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
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
    if (json is Map<String, dynamic>) {
      return HumanName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'use',
      'text',
      'family',
      'given',
      'prefix',
      'suffix',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'family':
        if (family != null) {
          fields.add(family!);
        }
      case 'given':
        if (given != null) {
          fields.addAll(given!);
        }
      case 'prefix':
        if (prefix != null) {
          fields.addAll(prefix!);
        }
      case 'suffix':
        if (suffix != null) {
          fields.addAll(suffix!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return HumanName(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      family: family?.copyWith(
            objectPath: '$newObjectPath.family',
          ) ??
          this.family,
      given: given
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.given',
                ),
              )
              .toList() ??
          this.given,
      prefix: prefix
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.prefix',
                ),
              )
              .toList() ??
          this.prefix,
      suffix: suffix
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.suffix',
                ),
              )
              .toList() ??
          this.suffix,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! HumanName) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!equalsDeepWithNull(family, o.family)) {
      return false;
    }
    if (!listEquals<FhirString>(
      given,
      o.given,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      prefix,
      o.prefix,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      suffix,
      o.suffix,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
  }
}
