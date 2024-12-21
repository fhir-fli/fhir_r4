import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [UsageContext]
/// Specifies clinical/business/etc. metadata that can be used to retrieve,
/// index and/or categorize an artifact. This metadata can either be
/// specific to the applicable population (e.g., age category, DRG) or the
/// specific context of care (e.g., venue, care setting, provider of care).
class UsageContext extends DataType
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
  /// [UsageContext]

  const UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueX,
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
      valueX: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : json['valueQuantity'] != null
              ? Quantity.fromJson(
                  json['valueQuantity'] as Map<String, dynamic>,
                )
              : json['valueRange'] != null
                  ? Range.fromJson(
                      json['valueRange'] as Map<String, dynamic>,
                    )
                  : Reference.fromJson(
                      json['valueReference'] as Map<String, dynamic>,
                    ),
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

  /// [valueX]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final ValueXUsageContext valueX;
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

    json['code'] = code.toJson();

    json['value${valueX.fhirType.capitalize()}'] = valueX.toJson();

    return json;
  }

  @override
  UsageContext clone() => throw UnimplementedError();
  @override
  UsageContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? code,
    ValueXUsageContext? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return UsageContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      valueX: valueX ?? this.valueX,
    );
  }
}
