// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunization_recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationRecommendation _$ImmunizationRecommendationFromJson(
        Map<String, dynamic> json) =>
    ImmunizationRecommendation(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      date: FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      authority: json['authority'] == null
          ? null
          : Reference.fromJson(json['authority'] as Map<String, dynamic>),
      recommendation: (json['recommendation'] as List<dynamic>)
          .map((e) => ImmunizationRecommendationRecommendation.fromJson(
              e as Map<String, dynamic>))
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

Map<String, dynamic> _$ImmunizationRecommendationToJson(
    ImmunizationRecommendation instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  val['patient'] = instance.patient.toJson();
  val['date'] = instance.date.toJson();
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('authority', instance.authority?.toJson());
  val['recommendation'] =
      instance.recommendation.map((e) => e.toJson()).toList();
  return val;
}

ImmunizationRecommendationRecommendation
    _$ImmunizationRecommendationRecommendationFromJson(
            Map<String, dynamic> json) =>
        ImmunizationRecommendationRecommendation(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          vaccineCode: (json['vaccineCode'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
          targetDisease: json['targetDisease'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['targetDisease'] as Map<String, dynamic>),
          contraindicatedVaccineCode: (json['contraindicatedVaccineCode']
                  as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
          forecastStatus: CodeableConcept.fromJson(
              json['forecastStatus'] as Map<String, dynamic>),
          forecastReason: (json['forecastReason'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
          dateCriterion: (json['dateCriterion'] as List<dynamic>?)
              ?.map((e) => ImmunizationRecommendationDateCriterion.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          description: json['description'] == null
              ? null
              : FhirString.fromJson(json['description']),
          descriptionElement: json['_description'] == null
              ? null
              : Element.fromJson(json['_description'] as Map<String, dynamic>),
          series: json['series'] == null
              ? null
              : FhirString.fromJson(json['series']),
          seriesElement: json['_series'] == null
              ? null
              : Element.fromJson(json['_series'] as Map<String, dynamic>),
          doseNumberPositiveInt: json['doseNumberPositiveInt'] == null
              ? null
              : FhirPositiveInt.fromJson(json['doseNumberPositiveInt']),
          doseNumberPositiveIntElement: json['_doseNumberPositiveInt'] == null
              ? null
              : Element.fromJson(
                  json['_doseNumberPositiveInt'] as Map<String, dynamic>),
          doseNumberString: json['doseNumberString'] == null
              ? null
              : FhirString.fromJson(json['doseNumberString']),
          doseNumberStringElement: json['_doseNumberString'] == null
              ? null
              : Element.fromJson(
                  json['_doseNumberString'] as Map<String, dynamic>),
          seriesDosesPositiveInt: json['seriesDosesPositiveInt'] == null
              ? null
              : FhirPositiveInt.fromJson(json['seriesDosesPositiveInt']),
          seriesDosesPositiveIntElement: json['_seriesDosesPositiveInt'] == null
              ? null
              : Element.fromJson(
                  json['_seriesDosesPositiveInt'] as Map<String, dynamic>),
          seriesDosesString: json['seriesDosesString'] == null
              ? null
              : FhirString.fromJson(json['seriesDosesString']),
          seriesDosesStringElement: json['_seriesDosesString'] == null
              ? null
              : Element.fromJson(
                  json['_seriesDosesString'] as Map<String, dynamic>),
          supportingImmunization:
              (json['supportingImmunization'] as List<dynamic>?)
                  ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
                  .toList(),
          supportingPatientInformation:
              (json['supportingPatientInformation'] as List<dynamic>?)
                  ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ImmunizationRecommendationRecommendationToJson(
    ImmunizationRecommendationRecommendation instance) {
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
  writeNotNull(
      'vaccineCode', instance.vaccineCode?.map((e) => e.toJson()).toList());
  writeNotNull('targetDisease', instance.targetDisease?.toJson());
  writeNotNull('contraindicatedVaccineCode',
      instance.contraindicatedVaccineCode?.map((e) => e.toJson()).toList());
  val['forecastStatus'] = instance.forecastStatus.toJson();
  writeNotNull('forecastReason',
      instance.forecastReason?.map((e) => e.toJson()).toList());
  writeNotNull(
      'dateCriterion', instance.dateCriterion?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('series', instance.series?.toJson());
  writeNotNull('_series', instance.seriesElement?.toJson());
  writeNotNull(
      'doseNumberPositiveInt', instance.doseNumberPositiveInt?.toJson());
  writeNotNull('_doseNumberPositiveInt',
      instance.doseNumberPositiveIntElement?.toJson());
  writeNotNull('doseNumberString', instance.doseNumberString?.toJson());
  writeNotNull('_doseNumberString', instance.doseNumberStringElement?.toJson());
  writeNotNull(
      'seriesDosesPositiveInt', instance.seriesDosesPositiveInt?.toJson());
  writeNotNull('_seriesDosesPositiveInt',
      instance.seriesDosesPositiveIntElement?.toJson());
  writeNotNull('seriesDosesString', instance.seriesDosesString?.toJson());
  writeNotNull(
      '_seriesDosesString', instance.seriesDosesStringElement?.toJson());
  writeNotNull('supportingImmunization',
      instance.supportingImmunization?.map((e) => e.toJson()).toList());
  writeNotNull('supportingPatientInformation',
      instance.supportingPatientInformation?.map((e) => e.toJson()).toList());
  return val;
}

ImmunizationRecommendationDateCriterion
    _$ImmunizationRecommendationDateCriterionFromJson(
            Map<String, dynamic> json) =>
        ImmunizationRecommendationDateCriterion(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
          value: FhirDateTime.fromJson(json['value'] as String),
          valueElement: json['_value'] == null
              ? null
              : Element.fromJson(json['_value'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImmunizationRecommendationDateCriterionToJson(
    ImmunizationRecommendationDateCriterion instance) {
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
  val['code'] = instance.code.toJson();
  val['value'] = instance.value.toJson();
  writeNotNull('_value', instance.valueElement?.toJson());
  return val;
}
