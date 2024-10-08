// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sampled_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampledData _$SampledDataFromJson(Map<String, dynamic> json) => SampledData(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      origin: Quantity.fromJson(json['origin'] as Map<String, dynamic>),
      period: FhirDecimal.fromJson(json['period']),
      periodElement: json['_period'] == null
          ? null
          : Element.fromJson(json['_period'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      lowerLimit: json['lowerLimit'] == null
          ? null
          : FhirDecimal.fromJson(json['lowerLimit']),
      lowerLimitElement: json['_lowerLimit'] == null
          ? null
          : Element.fromJson(json['_lowerLimit'] as Map<String, dynamic>),
      upperLimit: json['upperLimit'] == null
          ? null
          : FhirDecimal.fromJson(json['upperLimit']),
      upperLimitElement: json['_upperLimit'] == null
          ? null
          : Element.fromJson(json['_upperLimit'] as Map<String, dynamic>),
      dimensions: FhirPositiveInt.fromJson(json['dimensions']),
      dimensionsElement: json['_dimensions'] == null
          ? null
          : Element.fromJson(json['_dimensions'] as Map<String, dynamic>),
      data: json['data'] == null ? null : FhirString.fromJson(json['data']),
      dataElement: json['_data'] == null
          ? null
          : Element.fromJson(json['_data'] as Map<String, dynamic>),
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

Map<String, dynamic> _$SampledDataToJson(SampledData instance) {
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
  val['origin'] = instance.origin.toJson();
  val['period'] = instance.period.toJson();
  writeNotNull('_period', instance.periodElement?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('lowerLimit', instance.lowerLimit?.toJson());
  writeNotNull('_lowerLimit', instance.lowerLimitElement?.toJson());
  writeNotNull('upperLimit', instance.upperLimit?.toJson());
  writeNotNull('_upperLimit', instance.upperLimitElement?.toJson());
  val['dimensions'] = instance.dimensions.toJson();
  writeNotNull('_dimensions', instance.dimensionsElement?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('_data', instance.dataElement?.toJson());
  return val;
}
