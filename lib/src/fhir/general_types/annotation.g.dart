// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnotationImpl _$$AnnotationImplFromJson(Map<String, dynamic> json) =>
    _$AnnotationImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorReference: json['authorReference'] == null
          ? null
          : Reference.fromJson(json['authorReference'] as Map<String, dynamic>),
      authorString: json['authorString'] as String?,
      authorStringElement: json['_authorString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_authorString'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : FhirDateTime.fromJson(json['time'] as String),
      timeElement: json['_time'] == null
          ? null
          : PrimitiveElement.fromJson(json['_time'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirMarkdown.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : PrimitiveElement.fromJson(json['_text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnnotationImplToJson(_$AnnotationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('authorReference', instance.authorReference?.toJson());
  writeNotNull('authorString', instance.authorString);
  writeNotNull('_authorString', instance.authorStringElement?.toJson());
  writeNotNull('time', instance.time?.toJson());
  writeNotNull('_time', instance.timeElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  return val;
}
