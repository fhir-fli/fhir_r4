// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sampled_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampledDataImpl _$$SampledDataImplFromJson(Map<String, dynamic> json) =>
    _$SampledDataImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      origin: Quantity.fromJson(json['origin'] as Map<String, dynamic>),
      period:
          json['period'] == null ? null : FhirDecimal.fromJson(json['period']),
      periodElement: json['_period'] == null
          ? null
          : PrimitiveElement.fromJson(json['_period'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : PrimitiveElement.fromJson(json['_factor'] as Map<String, dynamic>),
      lowerLimit: json['lowerLimit'] == null
          ? null
          : FhirDecimal.fromJson(json['lowerLimit']),
      lowerLimitElement: json['_lowerLimit'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_lowerLimit'] as Map<String, dynamic>),
      upperLimit: json['upperLimit'] == null
          ? null
          : FhirDecimal.fromJson(json['upperLimit']),
      upperLimitElement: json['_upperLimit'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_upperLimit'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : FhirPositiveInt.fromJson(json['dimensions']),
      dimensionsElement: json['_dimensions'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_dimensions'] as Map<String, dynamic>),
      data: json['data'] as String?,
      dataElement: json['_data'] == null
          ? null
          : PrimitiveElement.fromJson(json['_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SampledDataImplToJson(_$SampledDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  val['origin'] = instance.origin.toJson();
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('_period', instance.periodElement?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('lowerLimit', instance.lowerLimit?.toJson());
  writeNotNull('_lowerLimit', instance.lowerLimitElement?.toJson());
  writeNotNull('upperLimit', instance.upperLimit?.toJson());
  writeNotNull('_upperLimit', instance.upperLimitElement?.toJson());
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('_dimensions', instance.dimensionsElement?.toJson());
  writeNotNull('data', instance.data);
  writeNotNull('_data', instance.dataElement?.toJson());
  return val;
}
