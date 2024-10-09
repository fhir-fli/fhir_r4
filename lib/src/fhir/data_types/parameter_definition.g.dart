// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefinition _$ParameterDefinitionFromJson(Map<String, dynamic> json) =>
    ParameterDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] == null ? null : FhirCode.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      use: $enumDecode(_$OperationParameterUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      min: json['min'] == null ? null : FhirInteger.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : Element.fromJson(json['_min'] as Map<String, dynamic>),
      max: json['max'] == null ? null : FhirString.fromJson(json['max']),
      maxElement: json['_max'] == null
          ? null
          : Element.fromJson(json['_max'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirString.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      type: $enumDecode(_$FHIRAllTypesEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] == null
          ? null
          : Element.fromJson(json['_profile'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ParameterDefinitionToJson(ParameterDefinition instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  val['use'] = instance.use.toJson();
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('min', instance.min?.toJson());
  writeNotNull('_min', instance.minElement?.toJson());
  writeNotNull('max', instance.max?.toJson());
  writeNotNull('_max', instance.maxElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('_profile', instance.profileElement?.toJson());
  return val;
}

const _$OperationParameterUseEnumMap = {
  OperationParameterUse.in_: 'in',
  OperationParameterUse.out: 'out',
};

const _$FHIRAllTypesEnumMap = {
  FHIRAllTypes.Address: 'Address',
  FHIRAllTypes.Age: 'Age',
  FHIRAllTypes.Annotation: 'Annotation',
  FHIRAllTypes.Attachment: 'Attachment',
  FHIRAllTypes.BackboneElement: 'BackboneElement',
  FHIRAllTypes.CodeableConcept: 'CodeableConcept',
  FHIRAllTypes.CodeableReference: 'CodeableReference',
  FHIRAllTypes.Coding: 'Coding',
  FHIRAllTypes.ContactDetail: 'ContactDetail',
  FHIRAllTypes.ContactPoint: 'ContactPoint',
  FHIRAllTypes.Contributor: 'Contributor',
  FHIRAllTypes.Count: 'Count',
  FHIRAllTypes.DataRequirement: 'DataRequirement',
  FHIRAllTypes.Distance: 'Distance',
  FHIRAllTypes.Dosage: 'Dosage',
  FHIRAllTypes.Duration: 'Duration',
  FHIRAllTypes.Element: 'Element',
  FHIRAllTypes.ElementDefinition: 'ElementDefinition',
  FHIRAllTypes.Expression: 'Expression',
  FHIRAllTypes.Extension: 'Extension',
  FHIRAllTypes.HumanName: 'HumanName',
  FHIRAllTypes.Identifier: 'Identifier',
  FHIRAllTypes.MarketingStatus: 'MarketingStatus',
  FHIRAllTypes.Meta: 'Meta',
  FHIRAllTypes.Money: 'Money',
  FHIRAllTypes.MoneyQuantity: 'MoneyQuantity',
  FHIRAllTypes.Narrative: 'Narrative',
  FHIRAllTypes.ParameterDefinition: 'ParameterDefinition',
  FHIRAllTypes.Period: 'Period',
  FHIRAllTypes.Population: 'Population',
  FHIRAllTypes.ProdCharacteristic: 'ProdCharacteristic',
  FHIRAllTypes.ProductShelfLife: 'ProductShelfLife',
  FHIRAllTypes.Quantity: 'Quantity',
  FHIRAllTypes.Range: 'Range',
  FHIRAllTypes.Ratio: 'Ratio',
  FHIRAllTypes.RatioRange: 'RatioRange',
  FHIRAllTypes.Reference: 'Reference',
  FHIRAllTypes.RelatedArtifact: 'RelatedArtifact',
  FHIRAllTypes.SampledData: 'SampledData',
  FHIRAllTypes.Signature: 'Signature',
  FHIRAllTypes.SimpleQuantity: 'SimpleQuantity',
  FHIRAllTypes.Timing: 'Timing',
  FHIRAllTypes.TriggerDefinition: 'TriggerDefinition',
  FHIRAllTypes.UsageContext: 'UsageContext',
  FHIRAllTypes.base64Binary: 'base64Binary',
  FHIRAllTypes.boolean: 'boolean',
  FHIRAllTypes.canonical: 'canonical',
  FHIRAllTypes.code: 'code',
  FHIRAllTypes.date: 'date',
  FHIRAllTypes.dateTime: 'dateTime',
  FHIRAllTypes.decimal: 'decimal',
  FHIRAllTypes.id: 'id',
  FHIRAllTypes.instant: 'instant',
  FHIRAllTypes.integer: 'integer',
  FHIRAllTypes.markdown: 'markdown',
  FHIRAllTypes.oid: 'oid',
  FHIRAllTypes.positiveInt: 'positiveInt',
  FHIRAllTypes.string: 'string',
  FHIRAllTypes.time: 'time',
  FHIRAllTypes.unsignedInt: 'unsignedInt',
  FHIRAllTypes.uri: 'uri',
  FHIRAllTypes.url: 'url',
  FHIRAllTypes.uuid: 'uuid',
  FHIRAllTypes.xhtml: 'xhtml',
  FHIRAllTypes.Resource: 'Resource',
  FHIRAllTypes.Type: 'Type',
  FHIRAllTypes.Any: 'Any',
};
