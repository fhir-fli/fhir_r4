import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ContactDetail] /// Specifies contact information for a person or organization.
class ContactDetail extends DataType {
  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    this.telecom,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContactDetail';

  @Id()
  int dbId = 0;

  /// [name] /// The name of an individual to contact.
  final FhirString? name;
  final Element? nameElement;

  /// [telecom] /// The contact details for the individual (if a name was provided) or the
  /// organization.
  final List<ContactPoint>? telecom;
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContactDetail.fromJson(Map<String, dynamic> json) {
    return ContactDetail(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContactDetail clone() => throw UnimplementedError();
  @override
  ContactDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? name,
    Element? nameElement,
    List<ContactPoint>? telecom,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContactDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      telecom: telecom ?? this.telecom,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContactDetail.fromYaml(dynamic yaml) => yaml is String
      ? ContactDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContactDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContactDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContactDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContactDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
