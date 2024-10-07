// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FhirMeta _$FhirMetaFromJson(Map<String, dynamic> json) => FhirMeta(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      versionId:
          json['versionId'] == null ? null : FhirId.fromJson(json['versionId']),
      versionIdElement: json['_versionId'] == null
          ? null
          : Element.fromJson(json['_versionId'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : FhirInstant.fromJson(json['lastUpdated'] as String),
      lastUpdatedElement: json['_lastUpdated'] == null
          ? null
          : Element.fromJson(json['_lastUpdated'] as Map<String, dynamic>),
      source: json['source'] == null ? null : FhirUri.fromJson(json['source']),
      sourceElement: json['_source'] == null
          ? null
          : Element.fromJson(json['_source'] as Map<String, dynamic>),
      profile: (json['profile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      profileElement: (json['_profile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      security: (json['security'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      tag: (json['tag'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$FhirMetaToJson(FhirMeta instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('versionId', instance.versionId?.toJson());
  writeNotNull('_versionId', instance.versionIdElement?.toJson());
  writeNotNull('lastUpdated', instance.lastUpdated?.toJson());
  writeNotNull('_lastUpdated', instance.lastUpdatedElement?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('_source', instance.sourceElement?.toJson());
  writeNotNull('profile', instance.profile?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_profile', instance.profileElement?.map((e) => e.toJson()).toList());
  writeNotNull('security', instance.security?.map((e) => e.toJson()).toList());
  writeNotNull('tag', instance.tag?.map((e) => e.toJson()).toList());
  return val;
}
