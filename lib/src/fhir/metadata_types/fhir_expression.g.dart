// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_expression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FhirExpressionImpl _$$FhirExpressionImplFromJson(Map<String, dynamic> json) =>
    _$FhirExpressionImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirId.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      language: $enumDecodeNullable(
          _$FhirExpressionLanguageEnumMap, json['language'],
          unknownValue: FhirExpressionLanguage.unknown),
      languageElement: json['_language'] == null
          ? null
          : Element.fromJson(json['_language'] as Map<String, dynamic>),
      expression: json['expression'] as String?,
      expressionElement: json['_expression'] == null
          ? null
          : Element.fromJson(json['_expression'] as Map<String, dynamic>),
      reference: json['reference'] == null
          ? null
          : FhirUri.fromJson(json['reference']),
      referenceElement: json['_reference'] == null
          ? null
          : Element.fromJson(json['_reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FhirExpressionImplToJson(
    _$FhirExpressionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('language', _$FhirExpressionLanguageEnumMap[instance.language]);
  writeNotNull('_language', instance.languageElement?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('_reference', instance.referenceElement?.toJson());
  return val;
}

const _$FhirExpressionLanguageEnumMap = {
  FhirExpressionLanguage.text_cql: 'text/cql',
  FhirExpressionLanguage.text_fhirpath: 'text/fhirpath',
  FhirExpressionLanguage.application_x_fhir_query: 'application/x-fhir-query',
  FhirExpressionLanguage.text_cql_identifier: 'text/cql-identifier',
  FhirExpressionLanguage.text_cql_expression: 'text/cql-expression',
  FhirExpressionLanguage.unknown: 'unknown',
};
