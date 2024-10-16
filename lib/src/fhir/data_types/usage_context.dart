import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [UsageContext]
/// Specifies clinical/business/etc. metadata that can be used to retrieve,
/// index and/or categorize an artifact. This metadata can either be
/// specific to the applicable population (e.g., age category, DRG) or the
/// specific context of care (e.g., venue, care setting, provider of care).
class UsageContext extends DataType {
  /// Primary constructor for [UsageContext]

  UsageContext({
    super.id,
    this.extension_,
    required this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory UsageContext.fromJson(Map<String, dynamic> json) {
    return UsageContext(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [UsageContext] from a [String]
  /// or [YamlMap] object
  factory UsageContext.fromYaml(dynamic yaml) => yaml is String
      ? UsageContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? UsageContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('UsageContext cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [UsageContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory UsageContext.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// A code that identifies the type of context being specified by this
  /// usage context.
  final Coding code;

  /// [valueCodeableConcept]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Range? valueRange;

  /// [valueReference]
  /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Reference? valueReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = code.toJson();
    json['code'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_code'] = fieldJson2['_value'];
    }

    if (valueCodeableConcept != null) {
      final fieldJson3 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson3['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson4 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueQuantity'] = fieldJson4['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson5 = valueRange!.toJson();
      json['valueRange'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueRange'] = fieldJson5['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson6 = valueReference!.toJson();
      json['valueReference'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueReference'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  UsageContext clone() => throw UnimplementedError();
  @override
  UsageContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return UsageContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
