import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'coding.g.dart';

/// [Coding] /// A reference to a code defined by a terminology system.
@JsonSerializable()
class Coding extends DataType {
  Coding({
    super.id,
    super.extension_,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.userSelected,
    this.userSelectedElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'Coding');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  @JsonKey(name: 'system')
  final FhirUri? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [version] /// The version of the code system which was used when choosing this code. Note
  /// that a well-maintained code system does not need the version reported,
  /// because the meaning of codes is consistent across versions. However this
  /// cannot consistently be assured, and when the meaning is not guaranteed to
  /// be consistent, the version SHOULD be exchanged.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [code] /// A symbol in syntax defined by the system. The symbol may be a predefined
  /// code or an expression in a syntax defined by the coding system (e.g.
  /// post-coordination).
  @JsonKey(name: 'code')
  final FhirCode? code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [display] /// A representation of the meaning of the code in the system, following the
  /// rules of the system.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [userSelected] /// Indicates that this coding was chosen by a user directly - e.g. off a pick
  /// list of available items (codes or displays).
  @JsonKey(name: 'userSelected')
  final FhirBoolean? userSelected;
  @JsonKey(name: '_userSelected')
  final Element? userSelectedElement;
  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodingToJson(this);

  @override
  Coding clone() => throw UnimplementedError();
  @override
  Coding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? system,
    Element? systemElement,
    FhirString? version,
    Element? versionElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirBoolean? userSelected,
    Element? userSelectedElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Coding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      userSelected: userSelected ?? this.userSelected,
      userSelectedElement: userSelectedElement ?? this.userSelectedElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Coding.fromYaml(dynamic yaml) => yaml is String
      ? Coding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Coding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Coding cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Coding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Coding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
