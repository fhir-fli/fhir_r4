import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class SearchInfo {
  final String? comment;
  final String? definition;
  final String? description;
  final String? label;
  final String name;
  final String path;
  final String? type;
  final TypeSpecifierModel? typeSpecifier;

  SearchInfo({
    this.typeSpecifier,
    required this.name,
    required this.path,
    this.type,
    this.label,
    this.description,
    this.definition,
    this.comment,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['typeSpecifier'])
          : null,
      name: json['name'],
      path: json['path'],
      type: json['type'],
      label: json['label'],
      description: json['description'],
      definition: json['definition'],
      comment: json['comment'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (typeSpecifier != null) {
      data['typeSpecifier'] = typeSpecifier!.toJson();
    }
    data['name'] = name;
    data['path'] = path;
    if (type != null) {
      data['type'] = type;
    }
    if (label != null) {
      data['label'] = label;
    }
    if (description != null) {
      data['description'] = description;
    }
    if (definition != null) {
      data['definition'] = definition;
    }
    if (comment != null) {
      data['comment'] = comment;
    }
    return data;
  }
}
