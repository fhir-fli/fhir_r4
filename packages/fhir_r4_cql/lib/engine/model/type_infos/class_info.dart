import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class ClassInfo extends TypeInfo {
  final String? comment;
  final List<ConstraintInfo>? constraint;
  final List<RelationshipInfo>? contextRelationship;
  final String? definition;
  final String? description;
  final List<ClassInfoElement>? element;
  final String? identifier;
  final List<ExpressionInfo>? inferenceExpression;
  final String? label;
  final String name;
  final String? namespace;
  final List<TypeParameterInfo>? parameter;
  final String? primaryCodePath;
  final String? primaryValueSetPath;
  final bool retrievable;
  final List<SearchInfo>? search;
  final bool? singleConstraint;
  final bool? singleContextRelationship;
  final bool? singleElement;
  final bool? singleInferenceExpression;
  final bool? singleParameter;
  final bool? singleSearch;
  final bool? singleTargetContextRelationship;
  final String? target;
  final List<RelationshipInfo>? targetContextRelationship;
  final String type = 'ClassInfo';

  ClassInfo({
    this.namespace,
    required this.name,
    super.baseType,
    this.identifier,
    this.label,
    this.description,
    this.definition,
    this.comment,
    this.target,
    this.retrievable = false,
    this.primaryCodePath,
    this.primaryValueSetPath,
    this.parameter,
    this.singleParameter,
    this.element,
    this.singleElement,
    this.contextRelationship,
    this.singleContextRelationship,
    this.targetContextRelationship,
    this.singleTargetContextRelationship,
    this.search,
    this.singleSearch,
    this.inferenceExpression,
    this.singleInferenceExpression,
    this.constraint,
    this.singleConstraint,
  });

  factory ClassInfo.fromJson(Map<String, dynamic> json) {
    return ClassInfo(
      namespace: json['namespace'],
      name: json['name'],
      baseType: json['baseType'],
      identifier: json['identifier'],
      label: json['label'],
      description: json['description'],
      definition: json['definition'],
      comment: json['comment'],
      target: json['target'],
      retrievable: json['retrievable'] is bool
          ? json['retrievable']
          : json['retrievable'] == 'true',
      primaryCodePath: json['primaryCodePath'],
      primaryValueSetPath: json['primaryValueSetPath'],
      parameter: json['parameter'] == null
          ? null
          : json['parameter'] is List
              ? (json['parameter'] as List)
                  .map((e) => TypeParameterInfo.fromJson(e))
                  .toList()
              : json['parameter'] is Map
                  ? [TypeParameterInfo.fromJson(json['parameter'])]
                  : null,
      singleParameter: json['parameter'] is Map,
      element: json['element'] == null
          ? null
          : json['element'] is List
              ? (json['element'] as List)
                  .map((e) => ClassInfoElement.fromJson(e))
                  .toList()
              : json['element'] is Map
                  ? [ClassInfoElement.fromJson(json['element'])]
                  : null,
      singleElement: json['element'] is Map,
      contextRelationship: json['contextRelationship'] == null
          ? null
          : json['contextRelationship'] is List
              ? (json['contextRelationship'] as List)
                  .map((e) => RelationshipInfo.fromJson(e))
                  .toList()
              : json['contextRelationship'] is Map
                  ? [RelationshipInfo.fromJson(json['contextRelationship'])]
                  : null,
      singleContextRelationship: json['contextRelationship'] is Map,
      targetContextRelationship: json['targetContextRelationship'] == null
          ? null
          : json['targetContextRelationship'] is List
              ? (json['targetContextRelationship'] as List)
                  .map((e) => RelationshipInfo.fromJson(e))
                  .toList()
              : json['targetContextRelationship'] is Map
                  ? [
                      RelationshipInfo.fromJson(
                          json['targetContextRelationship'])
                    ]
                  : null,
      singleTargetContextRelationship: json['targetContextRelationship'] is Map,
      search: json['search'] == null
          ? null
          : json['search'] is List
              ? (json['search'] as List)
                  .map((e) => SearchInfo.fromJson(e))
                  .toList()
              : json['search'] is Map
                  ? [SearchInfo.fromJson(json['search'])]
                  : null,
      singleSearch: json['search'] is Map,
      inferenceExpression: json['inferenceExpression'] == null
          ? null
          : json['inferenceExpression'] is List
              ? (json['inferenceExpression'] as List)
                  .map((e) => ExpressionInfo.fromJson(e))
                  .toList()
              : json['inferenceExpression'] is Map
                  ? [ExpressionInfo.fromJson(json['inferenceExpression'])]
                  : null,
      singleInferenceExpression: json['inferenceExpression'] is Map,
      constraint: json['constraint'] == null
          ? null
          : json['constraint'] is List
              ? (json['constraint'] as List)
                  .map((e) => ConstraintInfo.fromJson(e))
                  .toList()
              : json['constraint'] is Map
                  ? [ConstraintInfo.fromJson(json['constraint'])]
                  : null,
      singleConstraint: json['constraint'] is Map,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (namespace != null) {
      data['namespace'] = namespace;
    }
    data['name'] = name;
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    data['retrievable'] = retrievable;
    if (identifier != null) {
      data['identifier'] = identifier;
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
    if (target != null) {
      data['target'] = target;
    }
    if (primaryCodePath != null) {
      data['primaryCodePath'] = primaryCodePath;
    }
    if (primaryValueSetPath != null) {
      data['primaryValueSetPath'] = primaryValueSetPath;
    }
    if (parameter != null) {
      data['parameter'] = singleParameter ?? false
          ? parameter!.first.toJson()
          : parameter!.map((e) => e.toJson()).toList();
    }
    if (element != null) {
      data['element'] = singleElement ?? false
          ? element!.first.toJson()
          : element!.map((e) => e.toJson()).toList();
    }
    if (contextRelationship != null) {
      data['contextRelationship'] = singleContextRelationship ?? false
          ? contextRelationship!.first.toJson()
          : contextRelationship!.map((e) => e.toJson()).toList();
    }
    if (targetContextRelationship != null) {
      data['targetContextRelationship'] =
          singleTargetContextRelationship ?? false
              ? targetContextRelationship!.first.toJson()
              : targetContextRelationship!.map((e) => e.toJson()).toList();
    }
    if (search != null) {
      data['search'] = singleSearch ?? false
          ? search!.first.toJson()
          : search!.map((e) => e.toJson()).toList();
    }
    if (inferenceExpression != null) {
      data['inferenceExpression'] = singleInferenceExpression ?? false
          ? inferenceExpression!.first.toJson()
          : inferenceExpression!.map((e) => e.toJson()).toList();
    }
    if (constraint != null) {
      data['constraint'] = singleConstraint ?? false
          ? constraint!.first.toJson()
          : constraint!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}
