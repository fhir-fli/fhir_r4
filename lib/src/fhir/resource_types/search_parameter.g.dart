// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParameter _$SearchParameterFromJson(Map<String, dynamic> json) =>
    SearchParameter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['implicitRulesElement'] == null
          ? null
          : Element.fromJson(
              json['implicitRulesElement'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['languageElement'] == null
          ? null
          : Element.fromJson(json['languageElement'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : Element.fromJson(json['_url'] as Map<String, dynamic>),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      derivedFrom: json['derivedFrom'] == null
          ? null
          : FhirCanonical.fromJson(json['derivedFrom']),
      derivedFromElement: json['_derivedFrom'] == null
          ? null
          : Element.fromJson(json['_derivedFrom'] as Map<String, dynamic>),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : Element.fromJson(json['_experimental'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      publisher: json['publisher'] == null
          ? null
          : FhirString.fromJson(json['publisher']),
      publisherElement: json['_publisher'] == null
          ? null
          : Element.fromJson(json['_publisher'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      purpose: json['purpose'] == null
          ? null
          : FhirMarkdown.fromJson(json['purpose']),
      purposeElement: json['_purpose'] == null
          ? null
          : Element.fromJson(json['_purpose'] as Map<String, dynamic>),
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      base: (json['base'] as List<dynamic>).map(FhirCode.fromJson).toList(),
      baseElement: (json['_base'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      expression: json['expression'] == null
          ? null
          : FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] == null
          ? null
          : Element.fromJson(json['_expression'] as Map<String, dynamic>),
      xpath: json['xpath'] == null ? null : FhirString.fromJson(json['xpath']),
      xpathElement: json['_xpath'] == null
          ? null
          : Element.fromJson(json['_xpath'] as Map<String, dynamic>),
      xpathUsage: json['xpathUsage'] == null
          ? null
          : FhirCode.fromJson(json['xpathUsage']),
      xpathUsageElement: json['_xpathUsage'] == null
          ? null
          : Element.fromJson(json['_xpathUsage'] as Map<String, dynamic>),
      target:
          (json['target'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      targetElement: (json['_target'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      multipleOr: json['multipleOr'] == null
          ? null
          : FhirBoolean.fromJson(json['multipleOr']),
      multipleOrElement: json['_multipleOr'] == null
          ? null
          : Element.fromJson(json['_multipleOr'] as Map<String, dynamic>),
      multipleAnd: json['multipleAnd'] == null
          ? null
          : FhirBoolean.fromJson(json['multipleAnd']),
      multipleAndElement: json['_multipleAnd'] == null
          ? null
          : Element.fromJson(json['_multipleAnd'] as Map<String, dynamic>),
      comparator: (json['comparator'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      comparatorElement: (json['_comparator'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifier:
          (json['modifier'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      modifierElement: (json['_modifier'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      chain:
          (json['chain'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      chainElement: (json['_chain'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map((e) =>
              SearchParameterComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$SearchParameterToJson(SearchParameter instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('implicitRulesElement', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('languageElement', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['url'] = instance.url.toJson();
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('derivedFrom', instance.derivedFrom?.toJson());
  writeNotNull('_derivedFrom', instance.derivedFromElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  val['description'] = instance.description.toJson();
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  val['base'] = instance.base.map((e) => e.toJson()).toList();
  writeNotNull('_base', instance.baseElement?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('expression', instance.expression?.toJson());
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('xpath', instance.xpath?.toJson());
  writeNotNull('_xpath', instance.xpathElement?.toJson());
  writeNotNull('xpathUsage', instance.xpathUsage?.toJson());
  writeNotNull('_xpathUsage', instance.xpathUsageElement?.toJson());
  writeNotNull('target', instance.target?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_target', instance.targetElement?.map((e) => e.toJson()).toList());
  writeNotNull('multipleOr', instance.multipleOr?.toJson());
  writeNotNull('_multipleOr', instance.multipleOrElement?.toJson());
  writeNotNull('multipleAnd', instance.multipleAnd?.toJson());
  writeNotNull('_multipleAnd', instance.multipleAndElement?.toJson());
  writeNotNull(
      'comparator', instance.comparator?.map((e) => e.toJson()).toList());
  writeNotNull('_comparator',
      instance.comparatorElement?.map((e) => e.toJson()).toList());
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_modifier', instance.modifierElement?.map((e) => e.toJson()).toList());
  writeNotNull('chain', instance.chain?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_chain', instance.chainElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'component', instance.component?.map((e) => e.toJson()).toList());
  return val;
}

SearchParameterComponent _$SearchParameterComponentFromJson(
        Map<String, dynamic> json) =>
    SearchParameterComponent(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      definition: FhirCanonical.fromJson(json['definition']),
      definitionElement: json['_definition'] == null
          ? null
          : Element.fromJson(json['_definition'] as Map<String, dynamic>),
      expression: FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] == null
          ? null
          : Element.fromJson(json['_expression'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$SearchParameterComponentToJson(
    SearchParameterComponent instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['definition'] = instance.definition.toJson();
  writeNotNull('_definition', instance.definitionElement?.toJson());
  val['expression'] = instance.expression.toJson();
  writeNotNull('_expression', instance.expressionElement?.toJson());
  return val;
}
