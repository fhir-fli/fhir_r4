import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Coding] /// A reference to a code defined by a terminology system.
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
  });

  @override
  String get fhirType => 'Coding';

  /// [system] /// The identification of the code system that defines the meaning of the
  /// symbol in the code.
  final FhirUri? system;
  final Element? systemElement;

  /// [version] /// The version of the code system which was used when choosing this code. Note
  /// that a well-maintained code system does not need the version reported,
  /// because the meaning of codes is consistent across versions. However this
  /// cannot consistently be assured, and when the meaning is not guaranteed to
  /// be consistent, the version SHOULD be exchanged.
  final FhirString? version;
  final Element? versionElement;

  /// [code] /// A symbol in syntax defined by the system. The symbol may be a predefined
  /// code or an expression in a syntax defined by the coding system (e.g.
  /// post-coordination).
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// A representation of the meaning of the code in the system, following the
  /// rules of the system.
  final FhirString? display;
  final Element? displayElement;

  /// [userSelected] /// Indicates that this coding was chosen by a user directly - e.g. off a pick
  /// list of available items (codes or displays).
  final FhirBoolean? userSelected;
  final Element? userSelectedElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (system?.value != null) {
      json['system'] = system!.toJson();
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (code?.value != null) {
      json['code'] = code!.toJson();
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (userSelected?.value != null) {
      json['userSelected'] = userSelected!.toJson();
    }
    if (userSelectedElement != null) {
      json['_userSelected'] = userSelectedElement!.toJson();
    }
    return json;
  }

  factory Coding.fromJson(Map<String, dynamic> json) {
    return Coding(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      system: json['system'] != null ? FhirUri.fromJson(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null ? FhirCode.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      userSelected: json['userSelected'] != null
          ? FhirBoolean.fromJson(json['userSelected'])
          : null,
      userSelectedElement: json['_userSelected'] != null
          ? Element.fromJson(json['_userSelected'] as Map<String, dynamic>)
          : null,
    );
  }
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
