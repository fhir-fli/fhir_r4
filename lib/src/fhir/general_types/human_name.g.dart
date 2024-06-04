// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HumanNameImpl _$$HumanNameImplFromJson(Map<String, dynamic> json) =>
    _$HumanNameImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      use: $enumDecodeNullable(_$HumanNameUseEnumMap, json['use'],
          unknownValue: HumanNameUse.unknown),
      useElement: json['_use'] == null
          ? null
          : PrimitiveElement.fromJson(json['_use'] as Map<String, dynamic>),
      text: json['text'] as String?,
      textElement: json['_text'] == null
          ? null
          : PrimitiveElement.fromJson(json['_text'] as Map<String, dynamic>),
      family: json['family'] as String?,
      familyElement: json['_family'] == null
          ? null
          : PrimitiveElement.fromJson(json['_family'] as Map<String, dynamic>),
      given:
          (json['given'] as List<dynamic>?)?.map((e) => e as String).toList(),
      givenElement: (json['_given'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      prefix:
          (json['prefix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      prefixElement: (json['_prefix'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      suffix:
          (json['suffix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      suffixElement: (json['_suffix'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HumanNameImplToJson(_$HumanNameImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('use', _$HumanNameUseEnumMap[instance.use]);
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('family', instance.family);
  writeNotNull('_family', instance.familyElement?.toJson());
  writeNotNull('given', instance.given);
  writeNotNull(
      '_given', instance.givenElement?.map((e) => e?.toJson()).toList());
  writeNotNull('prefix', instance.prefix);
  writeNotNull(
      '_prefix', instance.prefixElement?.map((e) => e?.toJson()).toList());
  writeNotNull('suffix', instance.suffix);
  writeNotNull(
      '_suffix', instance.suffixElement?.map((e) => e?.toJson()).toList());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

const _$HumanNameUseEnumMap = {
  HumanNameUse.usual: 'usual',
  HumanNameUse.official: 'official',
  HumanNameUse.temp: 'temp',
  HumanNameUse.nickname: 'nickname',
  HumanNameUse.anonymous: 'anonymous',
  HumanNameUse.old: 'old',
  HumanNameUse.maiden: 'maiden',
  HumanNameUse.unknown: 'unknown',
};
