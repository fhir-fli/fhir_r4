// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRequirement _$DataRequirementFromJson(Map<String, dynamic> json) =>
    DataRequirement(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$FHIRAllTypesEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      profile: (json['profile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      profileElement: (json['_profile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      subjectCodeableConcept: $enumDecodeNullable(
          _$SubjectTypeEnumMap, json['subjectCodeableConcept']),
      subjectReference:
          $enumDecodeNullable(_$SubjectTypeEnumMap, json['subjectReference']),
      mustSupport: (json['mustSupport'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      mustSupportElement: (json['_mustSupport'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeFilter: (json['codeFilter'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirementCodeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirementDateFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] == null
          ? null
          : FhirPositiveInt.fromJson(json['limit']),
      limitElement: json['_limit'] == null
          ? null
          : Element.fromJson(json['_limit'] as Map<String, dynamic>),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => DataRequirementSort.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$DataRequirementToJson(DataRequirement instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('profile', instance.profile?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_profile', instance.profileElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull(
      'mustSupport', instance.mustSupport?.map((e) => e.toJson()).toList());
  writeNotNull('_mustSupport',
      instance.mustSupportElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'codeFilter', instance.codeFilter?.map((e) => e.toJson()).toList());
  writeNotNull(
      'dateFilter', instance.dateFilter?.map((e) => e.toJson()).toList());
  writeNotNull('limit', instance.limit?.toJson());
  writeNotNull('_limit', instance.limitElement?.toJson());
  writeNotNull('sort', instance.sort?.map((e) => e.toJson()).toList());
  return val;
}

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

const _$SubjectTypeEnumMap = {
  SubjectType.Patient: 'Patient',
  SubjectType.Practitioner: 'Practitioner',
  SubjectType.Organization: 'Organization',
  SubjectType.Location: 'Location',
  SubjectType.Device: 'Device',
};

DataRequirementCodeFilter _$DataRequirementCodeFilterFromJson(
        Map<String, dynamic> json) =>
    DataRequirementCodeFilter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] == null ? null : FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      searchParam: json['searchParam'] == null
          ? null
          : FhirString.fromJson(json['searchParam']),
      searchParamElement: json['_searchParam'] == null
          ? null
          : Element.fromJson(json['_searchParam'] as Map<String, dynamic>),
      valueSet: json['valueSet'] == null
          ? null
          : FhirCanonical.fromJson(json['valueSet']),
      valueSetElement: json['_valueSet'] == null
          ? null
          : Element.fromJson(json['_valueSet'] as Map<String, dynamic>),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$DataRequirementCodeFilterToJson(
    DataRequirementCodeFilter instance) {
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
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('_path', instance.pathElement?.toJson());
  writeNotNull('searchParam', instance.searchParam?.toJson());
  writeNotNull('_searchParam', instance.searchParamElement?.toJson());
  writeNotNull('valueSet', instance.valueSet?.toJson());
  writeNotNull('_valueSet', instance.valueSetElement?.toJson());
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  return val;
}

DataRequirementDateFilter _$DataRequirementDateFilterFromJson(
        Map<String, dynamic> json) =>
    DataRequirementDateFilter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] == null ? null : FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      searchParam: json['searchParam'] == null
          ? null
          : FhirString.fromJson(json['searchParam']),
      searchParamElement: json['_searchParam'] == null
          ? null
          : Element.fromJson(json['_searchParam'] as Map<String, dynamic>),
      valueDateTime: json['valueDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['valueDateTime'] as String),
      valueDateTimeElement: json['_valueDateTime'] == null
          ? null
          : Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>),
      valuePeriod: json['valuePeriod'] == null
          ? null
          : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
      valueDuration: json['valueDuration'] == null
          ? null
          : FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>),
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

Map<String, dynamic> _$DataRequirementDateFilterToJson(
    DataRequirementDateFilter instance) {
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
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('_path', instance.pathElement?.toJson());
  writeNotNull('searchParam', instance.searchParam?.toJson());
  writeNotNull('_searchParam', instance.searchParamElement?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime?.toJson());
  writeNotNull('_valueDateTime', instance.valueDateTimeElement?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('valueDuration', instance.valueDuration?.toJson());
  return val;
}

DataRequirementSort _$DataRequirementSortFromJson(Map<String, dynamic> json) =>
    DataRequirementSort(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      direction: $enumDecode(_$SortDirectionEnumMap, json['direction']),
      directionElement: json['_direction'] == null
          ? null
          : Element.fromJson(json['_direction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$DataRequirementSortToJson(DataRequirementSort instance) {
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
  val['path'] = instance.path.toJson();
  writeNotNull('_path', instance.pathElement?.toJson());
  val['direction'] = instance.direction.toJson();
  writeNotNull('_direction', instance.directionElement?.toJson());
  return val;
}

const _$SortDirectionEnumMap = {
  SortDirection.ascending: 'ascending',
  SortDirection.descending: 'descending',
};
