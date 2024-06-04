// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketingStatusImpl _$$MarketingStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingStatusImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: json['country'] == null
          ? null
          : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
      jurisdiction: json['jurisdiction'] == null
          ? null
          : CodeableConcept.fromJson(
              json['jurisdiction'] as Map<String, dynamic>),
      status: CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      dateRange: json['dateRange'] == null
          ? null
          : Period.fromJson(json['dateRange'] as Map<String, dynamic>),
      restoreDate: json['restoreDate'] == null
          ? null
          : FhirDateTime.fromJson(json['restoreDate'] as String),
      restoreDateElement: json['_restoreDate'] == null
          ? null
          : Element.fromJson(json['_restoreDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarketingStatusImplToJson(
    _$MarketingStatusImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('jurisdiction', instance.jurisdiction?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('dateRange', instance.dateRange?.toJson());
  writeNotNull('restoreDate', instance.restoreDate?.toJson());
  writeNotNull('_restoreDate', instance.restoreDateElement?.toJson());
  return val;
}
