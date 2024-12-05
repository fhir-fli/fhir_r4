import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Quantity]
/// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely
/// quantified, including amounts involving arbitrary units and floating
/// currencies.
class Quantity extends DataType {
  /// Primary constructor for
  /// [Quantity]

  const Quantity({
    super.id,
    super.extension_,
    this.value,
    this.comparator,
    this.unit,
    this.system,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Quantity.fromJson(
    Map<String, dynamic> json,
  ) {
    return Quantity(
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

  /// Deserialize [Quantity]
  /// from a [String] or [YamlMap] object
  factory Quantity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Quantity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Quantity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Quantity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Quantity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Quantity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Quantity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Quantity';

  /// [value]
  /// The value of the measured amount. The value includes an implicit
  /// precision in the presentation of the value.
  final FhirDecimal? value;

  /// [comparator]
  /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement
  /// issues; e.g. if the comparator is "<" , then the real value is < stated
  /// value.
  final QuantityComparator? comparator;

  /// [unit]
  /// A human-readable form of the unit.
  final FhirString? unit;

  /// [system]
  /// The identification of the system that provides the coded form of the
  /// unit.
  final FhirUri? system;

  /// [code]
  /// A computer processable form of the unit in some unit representation
  /// system.
  final FhirCode? code;
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

    addField('value', value);
    addField('comparator', comparator);
    addField('unit', unit);
    addField('system', system);
    addField('code', code);
    return json;
  }

  @override
  Quantity clone() => throw UnimplementedError();
  @override
  Quantity copyWith({
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
    return Quantity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      comparator: comparator ?? this.comparator,
      unit: unit ?? this.unit,
      system: system ?? this.system,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
