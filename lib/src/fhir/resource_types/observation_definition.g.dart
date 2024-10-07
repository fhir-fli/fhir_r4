// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationDefinition _$ObservationDefinitionFromJson(
        Map<String, dynamic> json) =>
    ObservationDefinition(
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
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      permittedDataType: (json['permittedDataType'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      permittedDataTypeElement: (json['_permittedDataType'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      multipleResultsAllowed: json['multipleResultsAllowed'] == null
          ? null
          : FhirBoolean.fromJson(json['multipleResultsAllowed']),
      multipleResultsAllowedElement: json['_multipleResultsAllowed'] == null
          ? null
          : Element.fromJson(
              json['_multipleResultsAllowed'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
      preferredReportName: json['preferredReportName'] == null
          ? null
          : FhirString.fromJson(json['preferredReportName']),
      preferredReportNameElement: json['_preferredReportName'] == null
          ? null
          : Element.fromJson(
              json['_preferredReportName'] as Map<String, dynamic>),
      quantitativeDetails: json['quantitativeDetails'] == null
          ? null
          : ObservationDefinitionQuantitativeDetails.fromJson(
              json['quantitativeDetails'] as Map<String, dynamic>),
      qualifiedInterval: (json['qualifiedInterval'] as List<dynamic>?)
          ?.map((e) => ObservationDefinitionQualifiedInterval.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      validCodedValueSet: json['validCodedValueSet'] == null
          ? null
          : Reference.fromJson(
              json['validCodedValueSet'] as Map<String, dynamic>),
      normalCodedValueSet: json['normalCodedValueSet'] == null
          ? null
          : Reference.fromJson(
              json['normalCodedValueSet'] as Map<String, dynamic>),
      abnormalCodedValueSet: json['abnormalCodedValueSet'] == null
          ? null
          : Reference.fromJson(
              json['abnormalCodedValueSet'] as Map<String, dynamic>),
      criticalCodedValueSet: json['criticalCodedValueSet'] == null
          ? null
          : Reference.fromJson(
              json['criticalCodedValueSet'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ObservationDefinitionToJson(
    ObservationDefinition instance) {
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
  writeNotNull('category', instance.category?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('permittedDataType',
      instance.permittedDataType?.map((e) => e.toJson()).toList());
  writeNotNull('_permittedDataType',
      instance.permittedDataTypeElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'multipleResultsAllowed', instance.multipleResultsAllowed?.toJson());
  writeNotNull('_multipleResultsAllowed',
      instance.multipleResultsAllowedElement?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('preferredReportName', instance.preferredReportName?.toJson());
  writeNotNull(
      '_preferredReportName', instance.preferredReportNameElement?.toJson());
  writeNotNull('quantitativeDetails', instance.quantitativeDetails?.toJson());
  writeNotNull('qualifiedInterval',
      instance.qualifiedInterval?.map((e) => e.toJson()).toList());
  writeNotNull('validCodedValueSet', instance.validCodedValueSet?.toJson());
  writeNotNull('normalCodedValueSet', instance.normalCodedValueSet?.toJson());
  writeNotNull(
      'abnormalCodedValueSet', instance.abnormalCodedValueSet?.toJson());
  writeNotNull(
      'criticalCodedValueSet', instance.criticalCodedValueSet?.toJson());
  return val;
}

ObservationDefinitionQuantitativeDetails
    _$ObservationDefinitionQuantitativeDetailsFromJson(
            Map<String, dynamic> json) =>
        ObservationDefinitionQuantitativeDetails(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          customaryUnit: json['customaryUnit'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['customaryUnit'] as Map<String, dynamic>),
          unit: json['unit'] == null
              ? null
              : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
          conversionFactor: json['conversionFactor'] == null
              ? null
              : FhirDecimal.fromJson(json['conversionFactor']),
          conversionFactorElement: json['_conversionFactor'] == null
              ? null
              : Element.fromJson(
                  json['_conversionFactor'] as Map<String, dynamic>),
          decimalPrecision: json['decimalPrecision'] == null
              ? null
              : FhirInteger.fromJson(json['decimalPrecision']),
          decimalPrecisionElement: json['_decimalPrecision'] == null
              ? null
              : Element.fromJson(
                  json['_decimalPrecision'] as Map<String, dynamic>),
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
          annotations:
              json['annotations'] as List<dynamic>? ?? const <dynamic>[],
          children: (json['children'] as List<dynamic>?)
                  ?.map(FhirBase.fromJson)
                  .toList() ??
              const <FhirBase>[],
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, FhirBase.fromJson(e)),
              ) ??
              const <String, FhirBase>{},
        );

Map<String, dynamic> _$ObservationDefinitionQuantitativeDetailsToJson(
    ObservationDefinitionQuantitativeDetails instance) {
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
  writeNotNull('customaryUnit', instance.customaryUnit?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('conversionFactor', instance.conversionFactor?.toJson());
  writeNotNull('_conversionFactor', instance.conversionFactorElement?.toJson());
  writeNotNull('decimalPrecision', instance.decimalPrecision?.toJson());
  writeNotNull('_decimalPrecision', instance.decimalPrecisionElement?.toJson());
  return val;
}

ObservationDefinitionQualifiedInterval
    _$ObservationDefinitionQualifiedIntervalFromJson(
            Map<String, dynamic> json) =>
        ObservationDefinitionQualifiedInterval(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          category: json['category'] == null
              ? null
              : FhirCode.fromJson(json['category']),
          categoryElement: json['_category'] == null
              ? null
              : Element.fromJson(json['_category'] as Map<String, dynamic>),
          range: json['range'] == null
              ? null
              : Range.fromJson(json['range'] as Map<String, dynamic>),
          context: json['context'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['context'] as Map<String, dynamic>),
          appliesTo: (json['appliesTo'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
          gender:
              json['gender'] == null ? null : FhirCode.fromJson(json['gender']),
          genderElement: json['_gender'] == null
              ? null
              : Element.fromJson(json['_gender'] as Map<String, dynamic>),
          age: json['age'] == null
              ? null
              : Range.fromJson(json['age'] as Map<String, dynamic>),
          gestationalAge: json['gestationalAge'] == null
              ? null
              : Range.fromJson(json['gestationalAge'] as Map<String, dynamic>),
          condition: json['condition'] == null
              ? null
              : FhirString.fromJson(json['condition']),
          conditionElement: json['_condition'] == null
              ? null
              : Element.fromJson(json['_condition'] as Map<String, dynamic>),
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
          annotations:
              json['annotations'] as List<dynamic>? ?? const <dynamic>[],
          children: (json['children'] as List<dynamic>?)
                  ?.map(FhirBase.fromJson)
                  .toList() ??
              const <FhirBase>[],
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, FhirBase.fromJson(e)),
              ) ??
              const <String, FhirBase>{},
        );

Map<String, dynamic> _$ObservationDefinitionQualifiedIntervalToJson(
    ObservationDefinitionQualifiedInterval instance) {
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
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('_category', instance.categoryElement?.toJson());
  writeNotNull('range', instance.range?.toJson());
  writeNotNull('context', instance.context?.toJson());
  writeNotNull(
      'appliesTo', instance.appliesTo?.map((e) => e.toJson()).toList());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('_gender', instance.genderElement?.toJson());
  writeNotNull('age', instance.age?.toJson());
  writeNotNull('gestationalAge', instance.gestationalAge?.toJson());
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('_condition', instance.conditionElement?.toJson());
  return val;
}
