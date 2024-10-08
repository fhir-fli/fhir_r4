// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Identifier _$IdentifierFromJson(Map<String, dynamic> json) => Identifier(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      use: $enumDecodeNullable(_$IdentifierUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$IdentifierTypeCodesEnumMap, json['type']),
      system: json['system'] == null ? null : FhirUri.fromJson(json['system']),
      systemElement: json['_system'] == null
          ? null
          : Element.fromJson(json['_system'] as Map<String, dynamic>),
      value: json['value'] == null ? null : FhirString.fromJson(json['value']),
      valueElement: json['_value'] == null
          ? null
          : Element.fromJson(json['_value'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      assigner: json['assigner'] == null
          ? null
          : Reference.fromJson(json['assigner'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$IdentifierToJson(Identifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('system', instance.system?.toJson());
  writeNotNull('_system', instance.systemElement?.toJson());
  writeNotNull('value', instance.value?.toJson());
  writeNotNull('_value', instance.valueElement?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('assigner', instance.assigner?.toJson());
  return val;
}

const _$IdentifierUseEnumMap = {
  IdentifierUse.usual: 'usual',
  IdentifierUse.official: 'official',
  IdentifierUse.temp: 'temp',
  IdentifierUse.secondary: 'secondary',
  IdentifierUse.old: 'old',
};

const _$IdentifierTypeCodesEnumMap = {
  IdentifierTypeCodes.DL: 'DL',
  IdentifierTypeCodes.PPN: 'PPN',
  IdentifierTypeCodes.BRN: 'BRN',
  IdentifierTypeCodes.MR: 'MR',
  IdentifierTypeCodes.MCN: 'MCN',
  IdentifierTypeCodes.EN: 'EN',
  IdentifierTypeCodes.TAX: 'TAX',
  IdentifierTypeCodes.NIIP: 'NIIP',
  IdentifierTypeCodes.PRN: 'PRN',
  IdentifierTypeCodes.MD: 'MD',
  IdentifierTypeCodes.DR: 'DR',
  IdentifierTypeCodes.ACSN: 'ACSN',
  IdentifierTypeCodes.UDI: 'UDI',
  IdentifierTypeCodes.SNO: 'SNO',
  IdentifierTypeCodes.SB: 'SB',
  IdentifierTypeCodes.PLAC: 'PLAC',
  IdentifierTypeCodes.FILL: 'FILL',
  IdentifierTypeCodes.JHN: 'JHN',
};
