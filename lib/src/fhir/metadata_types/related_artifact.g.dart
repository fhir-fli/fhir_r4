// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_artifact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelatedArtifactImpl _$$RelatedArtifactImplFromJson(
        Map<String, dynamic> json) =>
    _$RelatedArtifactImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$RelatedArtifactTypeEnumMap, json['type'],
          unknownValue: RelatedArtifactType.unknown),
      typeElement: json['_type'] == null
          ? null
          : PrimitiveElement.fromJson(json['_type'] as Map<String, dynamic>),
      label: json['label'] as String?,
      labelElement: json['_label'] == null
          ? null
          : PrimitiveElement.fromJson(json['_label'] as Map<String, dynamic>),
      display: json['display'] as String?,
      displayElement: json['_display'] == null
          ? null
          : PrimitiveElement.fromJson(json['_display'] as Map<String, dynamic>),
      citation: json['citation'] == null
          ? null
          : FhirMarkdown.fromJson(json['citation']),
      citationElement: json['_citation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_citation'] as Map<String, dynamic>),
      url: json['url'] == null ? null : FhirUrl.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Attachment.fromJson(json['document'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : FhirCanonical.fromJson(json['resource']),
    );

Map<String, dynamic> _$$RelatedArtifactImplToJson(
    _$RelatedArtifactImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('type', _$RelatedArtifactTypeEnumMap[instance.type]);
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('label', instance.label);
  writeNotNull('_label', instance.labelElement?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('_display', instance.displayElement?.toJson());
  writeNotNull('citation', instance.citation?.toJson());
  writeNotNull('_citation', instance.citationElement?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('document', instance.document?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  return val;
}

const _$RelatedArtifactTypeEnumMap = {
  RelatedArtifactType.documentation: 'documentation',
  RelatedArtifactType.justification: 'justification',
  RelatedArtifactType.citation: 'citation',
  RelatedArtifactType.predecessor: 'predecessor',
  RelatedArtifactType.successor: 'successor',
  RelatedArtifactType.derived_from: 'derived-from',
  RelatedArtifactType.depends_on: 'depends-on',
  RelatedArtifactType.composed_of: 'composed-of',
  RelatedArtifactType.unknown: 'unknown',
};
