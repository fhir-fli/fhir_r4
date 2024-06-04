// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodImpl _$$PeriodImplFromJson(Map<String, dynamic> json) => _$PeriodImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: json['start'] == null
          ? null
          : FhirDateTime.fromJson(json['start'] as String),
      startElement: json['_start'] == null
          ? null
          : Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : FhirDateTime.fromJson(json['end'] as String),
      endElement: json['_end'] == null
          ? null
          : Element.fromJson(json['_end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull('_start', instance.startElement?.toJson());
  writeNotNull('end', instance.end?.toJson());
  writeNotNull('_end', instance.endElement?.toJson());
  return val;
}
