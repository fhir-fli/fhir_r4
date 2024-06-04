// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriggerDefinitionImpl _$$TriggerDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$TriggerDefinitionImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$TriggerDefinitionTypeEnumMap, json['type'],
          unknownValue: TriggerDefinitionType.unknown),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      timingTiming: json['timingTiming'] == null
          ? null
          : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
      timingReference: json['timingReference'] == null
          ? null
          : Reference.fromJson(json['timingReference'] as Map<String, dynamic>),
      timingDate: json['timingDate'] == null
          ? null
          : FhirDate.fromJson(json['timingDate'] as String),
      timingDateElement: json['_timingDate'] == null
          ? null
          : Element.fromJson(json['_timingDate'] as Map<String, dynamic>),
      timingDateTime: json['timingDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['timingDateTime'] as String),
      timingDateTimeElement: json['_timingDateTime'] == null
          ? null
          : Element.fromJson(json['_timingDateTime'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: json['condition'] == null
          ? null
          : FhirExpression.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TriggerDefinitionImplToJson(
    _$TriggerDefinitionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('type', _$TriggerDefinitionTypeEnumMap[instance.type]);
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('timingTiming', instance.timingTiming?.toJson());
  writeNotNull('timingReference', instance.timingReference?.toJson());
  writeNotNull('timingDate', instance.timingDate?.toJson());
  writeNotNull('_timingDate', instance.timingDateElement?.toJson());
  writeNotNull('timingDateTime', instance.timingDateTime?.toJson());
  writeNotNull('_timingDateTime', instance.timingDateTimeElement?.toJson());
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('condition', instance.condition?.toJson());
  return val;
}

const _$TriggerDefinitionTypeEnumMap = {
  TriggerDefinitionType.named_event: 'named-event',
  TriggerDefinitionType.periodic: 'periodic',
  TriggerDefinitionType.data_changed: 'data-changed',
  TriggerDefinitionType.data_added: 'data-added',
  TriggerDefinitionType.data_modified: 'data-modified',
  TriggerDefinitionType.data_removed: 'data-removed',
  TriggerDefinitionType.data_accessed: 'data-accessed',
  TriggerDefinitionType.data_access_ended: 'data-access-ended',
  TriggerDefinitionType.unknown: 'unknown',
};
