import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Money]
/// An amount of economic utility in some recognized currency.
class Money extends DataType
    implements
        ValueXCoverageCostToBeneficiary,
        AllowedXCoverageEligibilityResponseBenefit,
        UsedXCoverageEligibilityResponseBenefit,
        AllowedXExplanationOfBenefitFinancial,
        UsedXExplanationOfBenefitFinancial,
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
  /// [Money]

  const Money({
    super.id,
    super.extension_,
    this.value,
    this.currency,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Money.fromJson(
    Map<String, dynamic> json,
  ) {
    return Money(
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
      currency: JsonParser.parsePrimitive<FhirCode>(
        json,
        'currency',
        FhirCode.fromJson,
      ),
    );
  }

  /// Deserialize [Money]
  /// from a [String] or [YamlMap] object
  factory Money.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Money.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Money.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Money '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Money]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Money.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Money.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Money';

  /// [value]
  /// Numerical value (with implicit precision).
  final FhirDecimal? value;

  /// [currency]
  /// ISO 4217 Currency Code.
  final FhirCode? currency;
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
    addField('currency', currency);
    return json;
  }

  @override
  Money clone() => throw UnimplementedError();
  @override
  Money copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    FhirCode? currency,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Money(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      currency: currency ?? this.currency,
    );
  }
}
