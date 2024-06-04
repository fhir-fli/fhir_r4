// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codeable_concept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeableConceptImpl _$$CodeableConceptImplFromJson(
        Map<String, dynamic> json) =>
    _$CodeableConceptImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      coding: (json['coding'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CodeableConceptImplToJson(
    _$CodeableConceptImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('coding', instance.coding?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text);
  writeNotNull('_text', instance.textElement?.toJson());
  return val;
}
