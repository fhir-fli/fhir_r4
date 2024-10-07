import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'contact_point.g.dart';

/// [ContactPoint] /// Details for all kinds of technology mediated contact points for a person or
/// organization, including telephone, email, etc.
@JsonSerializable()
class ContactPoint extends DataType {
  ContactPoint({
    super.id,
    super.extension_,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.use,
    this.useElement,
    this.rank,
    this.rankElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ContactPoint');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// Telecommunications form for contact point - what communications system is
  /// required to make use of the contact.
  @JsonKey(name: 'system')
  final FhirCode? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [value] /// The actual contact point details, in a form that is meaningful to the
  /// designated communication system (i.e. phone number or email address).
  @JsonKey(name: 'value')
  final FhirString? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [use] /// Identifies the purpose for the contact point.
  @JsonKey(name: 'use')
  final FhirCode? use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [rank] /// Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  /// higher rank values.
  @JsonKey(name: 'rank')
  final FhirPositiveInt? rank;
  @JsonKey(name: '_rank')
  final Element? rankElement;

  /// [period] /// Time period when the contact point was/is in use.
  @JsonKey(name: 'period')
  final Period? period;
  factory ContactPoint.fromJson(Map<String, dynamic> json) =>
      _$ContactPointFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);

  @override
  ContactPoint clone() => throw UnimplementedError();
  @override
  ContactPoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    FhirCode? use,
    Element? useElement,
    FhirPositiveInt? rank,
    Element? rankElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContactPoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContactPoint.fromYaml(dynamic yaml) => yaml is String
      ? ContactPoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContactPoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContactPoint cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContactPoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContactPoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
