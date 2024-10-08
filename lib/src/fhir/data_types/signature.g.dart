// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signature _$SignatureFromJson(Map<String, dynamic> json) => Signature(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>)
          .map((e) => $enumDecode(_$SignatureTypeCodesEnumMap, e))
          .toList(),
      when: FhirInstant.fromJson(json['when'] as String),
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

Map<String, dynamic> _$SignatureToJson(Signature instance) {
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
  val['type'] = instance.type.map((e) => e.toJson()).toList();
  val['when'] = instance.when.toJson();
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

const _$SignatureTypeCodesEnumMap = {
  SignatureTypeCodes.value1_2_840_10065_1_12_1_1: '1.2.840.10065.1.12.1.1',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_2: '1.2.840.10065.1.12.1.2',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_3: '1.2.840.10065.1.12.1.3',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_4: '1.2.840.10065.1.12.1.4',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_5: '1.2.840.10065.1.12.1.5',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_6: '1.2.840.10065.1.12.1.6',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_7: '1.2.840.10065.1.12.1.7',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_8: '1.2.840.10065.1.12.1.8',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_9: '1.2.840.10065.1.12.1.9',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_10: '1.2.840.10065.1.12.1.10',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_11: '1.2.840.10065.1.12.1.11',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_12: '1.2.840.10065.1.12.1.12',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_13: '1.2.840.10065.1.12.1.13',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_14: '1.2.840.10065.1.12.1.14',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_15: '1.2.840.10065.1.12.1.15',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_16: '1.2.840.10065.1.12.1.16',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_17: '1.2.840.10065.1.12.1.17',
  SignatureTypeCodes.value1_2_840_10065_1_12_1_18: '1.2.840.10065.1.12.1.18',
};
