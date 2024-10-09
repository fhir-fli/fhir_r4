import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Narrative] /// A human-readable summary of the resource conveying the essential clinical
/// and business information for the resource.
class Narrative extends DataType {
  Narrative({
    super.id,
    super.extension_,
    required this.status,
    this.statusElement,
    required this.div,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'Narrative';

  @Id()
  int dbId = 0;

  /// [status] /// The status of the narrative - whether it's entirely generated (from just
  /// the defined data or the extensions too), or whether a human authored it and
  /// it may contain additional data.
  final NarrativeStatus status;
  final Element? statusElement;

  /// [div] /// The actual narrative content, a stripped down version of XHTML.
  final FhirMarkdown div;
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
    json['status'] = status.toJson();
    json['div'] = div.toJson();
    return json;
  }

  factory Narrative.fromJson(Map<String, dynamic> json) {
    return Narrative(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: NarrativeStatus.fromJson(json['status'] as Map<String, dynamic>),
      div: FhirMarkdown.fromJson(json['div'] as Map<String, dynamic>),
    );
  }
  @override
  Narrative clone() => throw UnimplementedError();
  @override
  Narrative copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    NarrativeStatus? status,
    Element? statusElement,
    FhirMarkdown? div,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Narrative(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      div: div ?? this.div,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Narrative.fromYaml(dynamic yaml) => yaml is String
      ? Narrative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Narrative.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Narrative cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Narrative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Narrative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
