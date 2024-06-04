// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NarrativeImpl _$$NarrativeImplFromJson(Map<String, dynamic> json) =>
    _$NarrativeImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$NarrativeStatusEnumMap, json['status'],
          unknownValue: NarrativeStatus.unknown),
      statusElement: json['_status'] == null
          ? null
          : PrimitiveElement.fromJson(json['_status'] as Map<String, dynamic>),
      div: json['div'] as String,
    );

Map<String, dynamic> _$$NarrativeImplToJson(_$NarrativeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('status', _$NarrativeStatusEnumMap[instance.status]);
  writeNotNull('_status', instance.statusElement?.toJson());
  val['div'] = instance.div;
  return val;
}

const _$NarrativeStatusEnumMap = {
  NarrativeStatus.generated: 'generated',
  NarrativeStatus.extensions: 'extensions',
  NarrativeStatus.additional: 'additional',
  NarrativeStatus.empty: 'empty',
  NarrativeStatus.unknown: 'unknown',
};
