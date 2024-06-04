// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignatureImpl _$$SignatureImplFromJson(Map<String, dynamic> json) =>
    _$SignatureImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>)
          .map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      when: json['when'] == null
          ? null
          : FhirInstant.fromJson(json['when'] as String),
      whenElement: json['_when'] == null
          ? null
          : Element.fromJson(json['_when'] as Map<String, dynamic>),
      who: Reference.fromJson(json['who'] as Map<String, dynamic>),
      onBehalfOf: json['onBehalfOf'] == null
          ? null
          : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
      targetFormat: json['targetFormat'] == null
          ? null
          : FhirCode.fromJson(json['targetFormat']),
      targetFormatElement: json['_targetFormat'] == null
          ? null
          : Element.fromJson(json['_targetFormat'] as Map<String, dynamic>),
      sigFormat: json['sigFormat'] == null
          ? null
          : FhirCode.fromJson(json['sigFormat']),
      sigFormatElement: json['_sigFormat'] == null
          ? null
          : Element.fromJson(json['_sigFormat'] as Map<String, dynamic>),
      data:
          json['data'] == null ? null : FhirBase64Binary.fromJson(json['data']),
      dataElement: json['_data'] == null
          ? null
          : Element.fromJson(json['_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignatureImplToJson(_$SignatureImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.map((e) => e.toJson()).toList();
  writeNotNull('when', instance.when?.toJson());
  writeNotNull('_when', instance.whenElement?.toJson());
  val['who'] = instance.who.toJson();
  writeNotNull('onBehalfOf', instance.onBehalfOf?.toJson());
  writeNotNull('targetFormat', instance.targetFormat?.toJson());
  writeNotNull('_targetFormat', instance.targetFormatElement?.toJson());
  writeNotNull('sigFormat', instance.sigFormat?.toJson());
  writeNotNull('_sigFormat', instance.sigFormatElement?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('_data', instance.dataElement?.toJson());
  return val;
}
