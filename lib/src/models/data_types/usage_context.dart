import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'usage_context.g.dart';

/// [UsageContext]
/// Specifies clinical/business/etc. metadata that can be used to retrieve,
/// index and/or categorize an artifact. This metadata can either be
/// specific to the applicable population (e.g., age category, DRG) or the
/// specific context of care (e.g., venue, care setting, provider of care).
class UsageContext extends DataType {
  /// Primary constructor for
  /// [UsageContext]

  const UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueXUsageContextUsageContext,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory UsageContext.fromJson(
    Map<String, dynamic> json,
  ) {
    return UsageContext(
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
      code: Coding.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      valueXUsageContextUsageContext: json['valueCodeableConcept'] != null ||
              json['_valueCodeableConcept'] != null
          ? CodeableConceptValueUsageContextUsageContext.fromJson({
              'value': json['valueCodeableConcept'],
              '_value': json['_valueCodeableConcept'],
            })
          : json['valueQuantity'] != null || json['_valueQuantity'] != null
              ? QuantityValueUsageContextUsageContext.fromJson({
                  'value': json['valueQuantity'],
                  '_value': json['_valueQuantity'],
                })
              : json['valueRange'] != null || json['_valueRange'] != null
                  ? RangeValueUsageContextUsageContext.fromJson({
                      'value': json['valueRange'],
                      '_value': json['_valueRange'],
                    })
                  : ReferenceValueUsageContextUsageContext.fromJson({
                      'value': json['valueReference'],
                      '_value': json['_valueReference'],
                    }),
    );
  }

  /// Deserialize [UsageContext]
  /// from a [String] or [YamlMap] object
  factory UsageContext.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return UsageContext.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return UsageContext.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'UsageContext '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [UsageContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory UsageContext.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return UsageContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'UsageContext';

  /// [code]
  /// A code that identifies the type of context being specified by this
  /// usage context.
  final Coding code;

  /// [valueXUsageContextUsageContext]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final ValueXUsageContextUsageContext valueXUsageContextUsageContext;
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

    json['code'] = code.toJson();

    json['valueXUsageContextUsageContext'] =
        valueXUsageContextUsageContext.toJson();

    return json;
  }

  @override
  UsageContext clone() => throw UnimplementedError();
  @override
  UsageContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? code,
    ValueXUsageContextUsageContext? valueXUsageContextUsageContext,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return UsageContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      valueXUsageContextUsageContext:
          valueXUsageContextUsageContext ?? this.valueXUsageContextUsageContext,
    );
  }
}
