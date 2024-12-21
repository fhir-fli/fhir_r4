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

    if (value != null) {
      addField('value', value);
    }

    if (currency != null) {
      addField('currency', currency);
    }

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
