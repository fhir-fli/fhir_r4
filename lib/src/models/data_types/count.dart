import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Count]
/// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely
/// quantified, including amounts involving arbitrary units and floating
/// currencies.
class Count extends Quantity
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
  /// [Count]

  const Count({
    super.id,
    super.extension_,
    super.value,
    super.comparator,
    super.unit,
    super.system,
    super.code,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Count.fromJson(
    Map<String, dynamic> json,
  ) {
    return Count(
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
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
      ),
      comparator: JsonParser.parsePrimitive<QuantityComparator>(
        json,
        'comparator',
        QuantityComparator.fromJson,
      ),
      unit: JsonParser.parsePrimitive<FhirString>(
        json,
        'unit',
        FhirString.fromJson,
      ),
      system: JsonParser.parsePrimitive<FhirUri>(
        json,
        'system',
        FhirUri.fromJson,
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      ),
    );
  }

  /// Deserialize [Count]
  /// from a [String] or [YamlMap] object
  factory Count.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Count.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Count.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Count '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Count]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Count.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Count.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Count';

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
    addField('value', value);
    addField('comparator', comparator);
    addField('unit', unit);
    addField('system', system);
    addField('code', code);
    return json;
  }

  @override
  Count clone() => throw UnimplementedError();
  @override
  Count copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    QuantityComparator? comparator,
    FhirString? unit,
    FhirUri? system,
    FhirCode? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Count(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      comparator: comparator ?? this.comparator,
      unit: unit ?? this.unit,
      system: system ?? this.system,
      code: code ?? this.code,
    );
  }
}
