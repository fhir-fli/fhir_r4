import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents information related to a profile, extending [ClassInfo].
///
/// The [ProfileInfo] type represents details regarding a profile,
/// inheriting from ClassInfo.
class ProfileInfo extends ClassInfo {
  ProfileInfo({
    super.namespace,
    required super.name,
    super.baseType,
    super.identifier,
    super.label,
    super.description,
    super.definition,
    super.comment,
    super.target,
    super.retrievable = false,
    super.primaryCodePath,
    super.primaryValueSetPath,
    super.parameter,
    super.singleParameter,
    super.element,
    super.singleElement,
    super.contextRelationship,
    super.singleContextRelationship,
    super.targetContextRelationship,
    super.singleTargetContextRelationship,
    super.search,
    super.singleSearch,
    super.inferenceExpression,
    super.singleInferenceExpression,
    super.constraint,
    super.singleConstraint,
  });

  factory ProfileInfo.fromJson(Map<String, dynamic> json) {
    return ProfileInfo(
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
      parameter: json['parameter'],
      singleParameter: json['singleParameter'],
      element: json['element'],
      singleElement: json['singleElement'],
      contextRelationship: json['contextRelationship'],
      singleContextRelationship: json['singleContextRelationship'],
      targetContextRelationship: json['targetContextRelationship'],
      singleTargetContextRelationship: json['singleTargetContextRelationship'],
      search: json['search'],
      singleSearch: json['singleSearch'],
      inferenceExpression: json['inferenceExpression'],
      singleInferenceExpression: json['singleInferenceExpression'],
      constraint: json['constraint'],
      singleConstraint: json['singleConstraint'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      if (namespace != null) 'namespace': namespace,
      'name': name,
      if (baseType != null) 'baseType': baseType,
      if (identifier != null) 'identifier': identifier,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (definition != null) 'definition': definition,
      if (comment != null) 'comment': comment,
      if (target != null) 'target': target,
      'retrievable': retrievable,
      if (primaryCodePath != null) 'primaryCodePath': primaryCodePath,
      if (primaryValueSetPath != null)
        'primaryValueSetPath': primaryValueSetPath,
      if (parameter != null) 'parameter': parameter,
      if (singleParameter != null) 'singleParameter': singleParameter,
      if (element != null) 'element': element,
      if (singleElement != null) 'singleElement': singleElement,
      if (contextRelationship != null)
        'contextRelationship': contextRelationship,
      if (singleContextRelationship != null)
        'singleContextRelationship': singleContextRelationship,
      if (targetContextRelationship != null)
        'targetContextRelationship': targetContextRelationship,
      if (singleTargetContextRelationship != null)
        'singleTargetContextRelationship': singleTargetContextRelationship,
      if (search != null) 'search': search,
      if (singleSearch != null) 'singleSearch': singleSearch,
      if (inferenceExpression != null)
        'inferenceExpression': inferenceExpression,
      if (singleInferenceExpression != null)
        'singleInferenceExpression': singleInferenceExpression,
      if (constraint != null) 'constraint': constraint,
      if (singleConstraint != null) 'singleConstraint': singleConstraint,
    };
  }

  @override
  String get type => 'ProfileInfo';
}
