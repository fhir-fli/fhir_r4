// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      use: $enumDecodeNullable(_$AddressUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$AddressTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      line: (json['line'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      lineElement: (json['_line'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null ? null : FhirString.fromJson(json['city']),
      cityElement: json['_city'] == null
          ? null
          : Element.fromJson(json['_city'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : FhirString.fromJson(json['district']),
      districtElement: json['_district'] == null
          ? null
          : Element.fromJson(json['_district'] as Map<String, dynamic>),
      state: json['state'] == null ? null : FhirString.fromJson(json['state']),
      stateElement: json['_state'] == null
          ? null
          : Element.fromJson(json['_state'] as Map<String, dynamic>),
      postalCode: json['postalCode'] == null
          ? null
          : FhirString.fromJson(json['postalCode']),
      postalCodeElement: json['_postalCode'] == null
          ? null
          : Element.fromJson(json['_postalCode'] as Map<String, dynamic>),
      country:
          json['country'] == null ? null : FhirString.fromJson(json['country']),
      countryElement: json['_country'] == null
          ? null
          : Element.fromJson(json['_country'] as Map<String, dynamic>),
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

Map<String, dynamic> _$AddressToJson(Address instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('line', instance.line?.map((e) => e.toJson()).toList());
  writeNotNull('_line', instance.lineElement?.map((e) => e.toJson()).toList());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('_city', instance.cityElement?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('_district', instance.districtElement?.toJson());
  writeNotNull('state', instance.state?.toJson());
  writeNotNull('_state', instance.stateElement?.toJson());
  writeNotNull('postalCode', instance.postalCode?.toJson());
  writeNotNull('_postalCode', instance.postalCodeElement?.toJson());
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('_country', instance.countryElement?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

const _$AddressUseEnumMap = {
  AddressUse.home: 'home',
  AddressUse.work: 'work',
  AddressUse.temp: 'temp',
  AddressUse.old: 'old',
  AddressUse.billing: 'billing',
};

const _$AddressTypeEnumMap = {
  AddressType.postal: 'postal',
  AddressType.physical: 'physical',
  AddressType.both: 'both',
};
