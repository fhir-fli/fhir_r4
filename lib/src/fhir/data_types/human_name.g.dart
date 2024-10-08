// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) => HumanName(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      use: $enumDecodeNullable(_$NameUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      family:
          json['family'] == null ? null : FhirString.fromJson(json['family']),
      familyElement: json['_family'] == null
          ? null
          : Element.fromJson(json['_family'] as Map<String, dynamic>),
      given:
          (json['given'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      givenElement: (json['_given'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      prefix:
          (json['prefix'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      prefixElement: (json['_prefix'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      suffix:
          (json['suffix'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      suffixElement: (json['_suffix'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$HumanNameToJson(HumanName instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('family', instance.family?.toJson());
  writeNotNull('_family', instance.familyElement?.toJson());
  writeNotNull('given', instance.given?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_given', instance.givenElement?.map((e) => e.toJson()).toList());
  writeNotNull('prefix', instance.prefix?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_prefix', instance.prefixElement?.map((e) => e.toJson()).toList());
  writeNotNull('suffix', instance.suffix?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_suffix', instance.suffixElement?.map((e) => e.toJson()).toList());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

const _$NameUseEnumMap = {
  NameUse.usual: 'usual',
  NameUse.official: 'official',
  NameUse.temp: 'temp',
  NameUse.nickname: 'nickname',
  NameUse.anonymous: 'anonymous',
  NameUse.old: 'old',
};
