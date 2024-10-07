import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'usage_context.g.dart';

/// [UsageContext] /// Specifies clinical/business/etc. metadata that can be used to retrieve,
/// index and/or categorize an artifact. This metadata can either be specific
/// to the applicable population (e.g., age category, DRG) or the specific
/// context of care (e.g., venue, care setting, provider of care).
@JsonSerializable()
class UsageContext extends DataType {
  UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'UsageContext');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that identifies the type of context being specified by this usage
  /// context.
  @JsonKey(name: 'code')
  final Coding code;

  /// [valueCodeableConcept] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept valueCodeableConcept;

  /// [valueQuantity] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueRange] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  @JsonKey(name: 'valueRange')
  final Range valueRange;

  /// [valueReference] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  @JsonKey(name: 'valueReference')
  final Reference valueReference;
  factory UsageContext.fromJson(Map<String, dynamic> json) =>
      _$UsageContextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsageContextToJson(this);

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

  factory UsageContext.fromYaml(dynamic yaml) => yaml is String
      ? UsageContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? UsageContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'UsageContext cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory UsageContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return UsageContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
