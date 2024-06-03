// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FhirMetaImpl _$$FhirMetaImplFromJson(Map<String, dynamic> json) =>
    _$FhirMetaImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
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
      security: (json['security'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      tag: (json['tag'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FhirMetaImplToJson(_$FhirMetaImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('versionId', instance.versionId?.toJson());
  writeNotNull('_versionId', instance.versionIdElement?.toJson());
  writeNotNull('lastUpdated', instance.lastUpdated?.toJson());
  writeNotNull('_lastUpdated', instance.lastUpdatedElement?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('_source', instance.sourceElement?.toJson());
  writeNotNull('profile', instance.profile?.map((e) => e.toJson()).toList());
  writeNotNull('security', instance.security?.map((e) => e.toJson()).toList());
  writeNotNull('tag', instance.tag?.map((e) => e.toJson()).toList());
  return val;
}
