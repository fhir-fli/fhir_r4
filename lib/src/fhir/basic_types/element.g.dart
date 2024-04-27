// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElementImpl _$$ElementImplFromJson(Map<String, dynamic> json) =>
    _$ElementImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      line: (json['line'] as num?)?.toInt(),
      col: (json['col'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ElementImplToJson(_$ElementImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('line', instance.line);
  writeNotNull('col', instance.col);
  return val;
}
