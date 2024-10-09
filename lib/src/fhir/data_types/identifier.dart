import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'identifier.g.dart';

/// [Identifier] /// An identifier - identifies some entity uniquely and unambiguously.
/// Typically this is used for business identifiers.
@JsonSerializable()
class Identifier extends DataType {
  Identifier({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.period,
    this.assigner,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Identifier';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// The purpose of this identifier.
  @JsonKey(name: 'use')
  final IdentifierUse? use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [type] /// A coded type for the identifier that can be used to determine which
  /// identifier to use for a specific purpose.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [system] /// Establishes the namespace for the value - that is, a URL that describes a
  /// set values that are unique.
  @JsonKey(name: 'system')
  final FhirUri? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [value] /// The portion of the identifier typically relevant to the user and which is
  /// unique within the context of the system.
  @JsonKey(name: 'value')
  final FhirString? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [period] /// Time period during which identifier is/was valid for use.
  @JsonKey(name: 'period')
  final Period? period;

  /// [assigner] /// Organization that issued/manages the identifier.
  @JsonKey(name: 'assigner')
  final Reference? assigner;
  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);

  @override
  Identifier clone() => throw UnimplementedError();
  @override
  Identifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    IdentifierUse? use,
    Element? useElement,
    CodeableConcept? type,
    FhirUri? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    Period? period,
    Reference? assigner,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Identifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      type: type ?? this.type,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      period: period ?? this.period,
      assigner: assigner ?? this.assigner,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Identifier.fromYaml(dynamic yaml) => yaml is String
      ? Identifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Identifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Identifier cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Identifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Identifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
