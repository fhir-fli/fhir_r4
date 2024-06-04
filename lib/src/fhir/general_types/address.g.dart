// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      use: $enumDecodeNullable(_$AddressUseEnumMap, json['use'],
          unknownValue: AddressUse.unknown),
      useElement: json['_use'] == null
          ? null
          : PrimitiveElement.fromJson(json['_use'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$AddressTypeEnumMap, json['type'],
          unknownValue: AddressType.unknown),
      typeElement: json['_type'] == null
          ? null
          : PrimitiveElement.fromJson(json['_type'] as Map<String, dynamic>),
      text: json['text'] as String?,
      textElement: json['_text'] == null
          ? null
          : PrimitiveElement.fromJson(json['_text'] as Map<String, dynamic>),
      line: (json['line'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lineElement: (json['_line'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] as String?,
      cityElement: json['_city'] == null
          ? null
          : PrimitiveElement.fromJson(json['_city'] as Map<String, dynamic>),
      district: json['district'] as String?,
      districtElement: json['_district'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_district'] as Map<String, dynamic>),
      state: json['state'] as String?,
      stateElement: json['_state'] == null
          ? null
          : PrimitiveElement.fromJson(json['_state'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String?,
      postalCodeElement: json['_postalCode'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_postalCode'] as Map<String, dynamic>),
      country: json['country'] as String?,
      countryElement: json['_country'] == null
          ? null
          : PrimitiveElement.fromJson(json['_country'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('use', _$AddressUseEnumMap[instance.use]);
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('type', _$AddressTypeEnumMap[instance.type]);
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('line', instance.line);
  writeNotNull('_line', instance.lineElement?.map((e) => e?.toJson()).toList());
  writeNotNull('city', instance.city);
  writeNotNull('_city', instance.cityElement?.toJson());
  writeNotNull('district', instance.district);
  writeNotNull('_district', instance.districtElement?.toJson());
  writeNotNull('state', instance.state);
  writeNotNull('_state', instance.stateElement?.toJson());
  writeNotNull('postalCode', instance.postalCode);
  writeNotNull('_postalCode', instance.postalCodeElement?.toJson());
  writeNotNull('country', instance.country);
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
  AddressUse.unknown: 'unknown',
};

const _$AddressTypeEnumMap = {
  AddressType.postal: 'postal',
  AddressType.physical: 'physical',
  AddressType.both: 'both',
  AddressType.unknown: 'unknown',
};
