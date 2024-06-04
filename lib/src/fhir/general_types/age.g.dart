// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgeImpl _$$AgeImplFromJson(Map<String, dynamic> json) => _$AgeImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] == null ? null : FhirDecimal.fromJson(json['value']),
      valueElement: json['_value'] == null
          ? null
          : PrimitiveElement.fromJson(json['_value'] as Map<String, dynamic>),
      comparator: $enumDecodeNullable(
          _$AgeComparatorEnumMap, json['comparator'],
          unknownValue: AgeComparator.unknown),
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

Map<String, dynamic> _$$AgeImplToJson(_$AgeImpl instance) {
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
  writeNotNull('comparator', _$AgeComparatorEnumMap[instance.comparator]);
  writeNotNull('_comparator', instance.comparatorElement?.toJson());
  writeNotNull('unit', instance.unit);
  writeNotNull('_unit', instance.unitElement?.toJson());
  writeNotNull('system', instance.system?.toJson());
  writeNotNull('_system', instance.systemElement?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('_code', instance.codeElement?.toJson());
  return val;
}

const _$AgeComparatorEnumMap = {
  AgeComparator.lt: '<',
  AgeComparator.le: '<=',
  AgeComparator.ge: '>=',
  AgeComparator.gt: '>',
  AgeComparator.unknown: 'unknown',
};
