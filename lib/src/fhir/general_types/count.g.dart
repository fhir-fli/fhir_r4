// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountImpl _$$CountImplFromJson(Map<String, dynamic> json) => _$CountImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] == null ? null : FhirDecimal.fromJson(json['value']),
      valueElement: json['_value'] == null
          ? null
          : PrimitiveElement.fromJson(json['_value'] as Map<String, dynamic>),
      comparator: $enumDecodeNullable(
          _$CountComparatorEnumMap, json['comparator'],
          unknownValue: CountComparator.unknown),
      comparatorElement: json['_comparator'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_comparator'] as Map<String, dynamic>),
      unit: json['unit'] as String?,
      unitElement: json['_unit'] == null
          ? null
          : PrimitiveElement.fromJson(json['_unit'] as Map<String, dynamic>),
      system: json['system'] == null ? null : FhirUri.fromJson(json['system']),
      systemElement: json['_system'] == null
          ? null
          : PrimitiveElement.fromJson(json['_system'] as Map<String, dynamic>),
      code: json['code'] == null ? null : FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : PrimitiveElement.fromJson(json['_code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountImplToJson(_$CountImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('value', instance.value?.toJson());
  writeNotNull('_value', instance.valueElement?.toJson());
  writeNotNull('comparator', _$CountComparatorEnumMap[instance.comparator]);
  writeNotNull('_comparator', instance.comparatorElement?.toJson());
  writeNotNull('unit', instance.unit);
  writeNotNull('_unit', instance.unitElement?.toJson());
  writeNotNull('system', instance.system?.toJson());
  writeNotNull('_system', instance.systemElement?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('_code', instance.codeElement?.toJson());
  return val;
}

const _$CountComparatorEnumMap = {
  CountComparator.lt: '<',
  CountComparator.le: '<=',
  CountComparator.ge: '>=',
  CountComparator.gt: '>',
  CountComparator.unknown: 'unknown',
};
