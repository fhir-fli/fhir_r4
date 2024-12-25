import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RatioRange]
/// A range of ratios expressed as a low and high numerator and a
/// denominator.
class RatioRange extends DataType
    implements
        PresentationXIngredientStrength,
        ConcentrationXIngredientStrength,
        StrengthXIngredientReferenceStrength,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [RatioRange]

  const RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
    super.disallowExtensions,
    super.objectPath = 'RatioRange',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RatioRange';
    return RatioRange(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      lowNumerator: JsonParser.parseObject<Quantity>(
        json,
        'lowNumerator',
        Quantity.fromJson,
        '$objectPath.lowNumerator',
      ),
      highNumerator: JsonParser.parseObject<Quantity>(
        json,
        'highNumerator',
        Quantity.fromJson,
        '$objectPath.highNumerator',
      ),
      denominator: JsonParser.parseObject<Quantity>(
        json,
        'denominator',
        Quantity.fromJson,
        '$objectPath.denominator',
      ),
    );
  }

  /// Deserialize [RatioRange]
  /// from a [String] or [YamlMap] object
  factory RatioRange.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RatioRange.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RatioRange.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RatioRange '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RatioRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioRange.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RatioRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RatioRange';

  /// [lowNumerator]
  /// The value of the low limit numerator.
  final Quantity? lowNumerator;

  /// [highNumerator]
  /// The value of the high limit numerator.
  final Quantity? highNumerator;

  /// [denominator]
  /// The value of the denominator.
  final Quantity? denominator;
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
    addField('lowNumerator', lowNumerator);
    addField('highNumerator', highNumerator);
    addField('denominator', denominator);
    return json;
  }

  @override
  RatioRange clone() => throw UnimplementedError();
  @override
  RatioRange copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? lowNumerator,
    Quantity? highNumerator,
    Quantity? denominator,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return RatioRange(
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
      lowNumerator: lowNumerator?.copyWith(
            objectPath: '$newObjectPath.lowNumerator',
          ) ??
          this.lowNumerator,
      highNumerator: highNumerator?.copyWith(
            objectPath: '$newObjectPath.highNumerator',
          ) ??
          this.highNumerator,
      denominator: denominator?.copyWith(
            objectPath: '$newObjectPath.denominator',
          ) ??
          this.denominator,
    );
  }
}
