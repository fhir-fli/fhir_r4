import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Distance]
/// A length - a value with a unit that is a physical distance.
class Distance extends Quantity
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
  /// [Distance]

  const Distance({
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
  factory Distance.fromJson(
    Map<String, dynamic> json,
  ) {
    return Distance(
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
      value: (json['value'] != null || json['_value'] != null)
          ? FhirDecimal.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      comparator: (json['comparator'] != null || json['_comparator'] != null)
          ? QuantityComparator.fromJson({
              'value': json['comparator'],
              '_value': json['_comparator'],
            })
          : null,
      unit: (json['unit'] != null || json['_unit'] != null)
          ? FhirString.fromJson({
              'value': json['unit'],
              '_value': json['_unit'],
            })
          : null,
      system: (json['system'] != null || json['_system'] != null)
          ? FhirUri.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      code: (json['code'] != null || json['_code'] != null)
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
    );
  }

  /// Deserialize [Distance]
  /// from a [String] or [YamlMap] object
  factory Distance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Distance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Distance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Distance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Distance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Distance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Distance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Distance';

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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (value != null) {
      addField('value', value);
    }

    if (comparator != null) {
      addField('comparator', comparator);
    }

    if (unit != null) {
      addField('unit', unit);
    }

    if (system != null) {
      addField('system', system);
    }

    if (code != null) {
      addField('code', code);
    }

    return json;
  }

  @override
  Distance clone() => throw UnimplementedError();
  @override
  Distance copyWith({
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
    return Distance(
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
