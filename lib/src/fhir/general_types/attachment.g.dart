// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentType: json['contentType'] == null
          ? null
          : FhirCode.fromJson(json['contentType']),
      contentTypeElement: json['_contentType'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_contentType'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['_language'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_language'] as Map<String, dynamic>),
      data:
          json['data'] == null ? null : FhirBase64Binary.fromJson(json['data']),
      dataElement: json['_data'] == null
          ? null
          : PrimitiveElement.fromJson(json['_data'] as Map<String, dynamic>),
      url: json['url'] == null ? null : FhirUrl.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
      size:
          json['size'] == null ? null : FhirUnsignedInt.fromJson(json['size']),
      sizeElement: json['_size'] == null
          ? null
          : PrimitiveElement.fromJson(json['_size'] as Map<String, dynamic>),
      hash:
          json['hash'] == null ? null : FhirBase64Binary.fromJson(json['hash']),
      hashElement: json['_hash'] == null
          ? null
          : PrimitiveElement.fromJson(json['_hash'] as Map<String, dynamic>),
      title: json['title'] as String?,
      titleElement: json['_title'] == null
          ? null
          : PrimitiveElement.fromJson(json['_title'] as Map<String, dynamic>),
      creation: json['creation'] == null
          ? null
          : FhirDateTime.fromJson(json['creation'] as String),
      creationElement: json['_creation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_creation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('contentType', instance.contentType?.toJson());
  writeNotNull('_contentType', instance.contentTypeElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('_language', instance.languageElement?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('_data', instance.dataElement?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('size', instance.size?.toJson());
  writeNotNull('_size', instance.sizeElement?.toJson());
  writeNotNull('hash', instance.hash?.toJson());
  writeNotNull('_hash', instance.hashElement?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('creation', instance.creation?.toJson());
  writeNotNull('_creation', instance.creationElement?.toJson());
  return val;
}
