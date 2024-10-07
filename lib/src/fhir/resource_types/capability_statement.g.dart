// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capability_statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) =>
    CapabilityStatement(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['implicitRulesElement'] == null
          ? null
          : Element.fromJson(
              json['implicitRulesElement'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['languageElement'] == null
          ? null
          : Element.fromJson(json['languageElement'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] == null ? null : FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : Element.fromJson(json['_url'] as Map<String, dynamic>),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] == null ? null : FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : Element.fromJson(json['_experimental'] as Map<String, dynamic>),
      date: FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      publisher: json['publisher'] == null
          ? null
          : FhirString.fromJson(json['publisher']),
      publisherElement: json['_publisher'] == null
          ? null
          : Element.fromJson(json['_publisher'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      purpose: json['purpose'] == null
          ? null
          : FhirMarkdown.fromJson(json['purpose']),
      purposeElement: json['_purpose'] == null
          ? null
          : Element.fromJson(json['_purpose'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
      kind: FhirCode.fromJson(json['kind']),
      kindElement: json['_kind'] == null
          ? null
          : Element.fromJson(json['_kind'] as Map<String, dynamic>),
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      instantiatesElement: (json['_instantiates'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      imports: (json['imports'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      importsElement: (json['_imports'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      software: json['software'] == null
          ? null
          : CapabilityStatementSoftware.fromJson(
              json['software'] as Map<String, dynamic>),
      implementation: json['implementation'] == null
          ? null
          : CapabilityStatementImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>),
      fhirVersion: FhirCode.fromJson(json['fhirVersion']),
      fhirVersionElement: json['_fhirVersion'] == null
          ? null
          : Element.fromJson(json['_fhirVersion'] as Map<String, dynamic>),
      format: (json['format'] as List<dynamic>).map(FhirCode.fromJson).toList(),
      formatElement: (json['_format'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      patchFormat: (json['patchFormat'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      patchFormatElement: (json['_patchFormat'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      rest: (json['rest'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementRest.fromJson(e as Map<String, dynamic>))
          .toList(),
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementMessaging.fromJson(e as Map<String, dynamic>))
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementToJson(CapabilityStatement instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('implicitRulesElement', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('languageElement', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  val['date'] = instance.date.toJson();
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  val['kind'] = instance.kind.toJson();
  writeNotNull('_kind', instance.kindElement?.toJson());
  writeNotNull(
      'instantiates', instance.instantiates?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiates',
      instance.instantiatesElement?.map((e) => e.toJson()).toList());
  writeNotNull('imports', instance.imports?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_imports', instance.importsElement?.map((e) => e.toJson()).toList());
  writeNotNull('software', instance.software?.toJson());
  writeNotNull('implementation', instance.implementation?.toJson());
  val['fhirVersion'] = instance.fhirVersion.toJson();
  writeNotNull('_fhirVersion', instance.fhirVersionElement?.toJson());
  val['format'] = instance.format.map((e) => e.toJson()).toList();
  writeNotNull(
      '_format', instance.formatElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'patchFormat', instance.patchFormat?.map((e) => e.toJson()).toList());
  writeNotNull('_patchFormat',
      instance.patchFormatElement?.map((e) => e.toJson()).toList());
  writeNotNull('rest', instance.rest?.map((e) => e.toJson()).toList());
  writeNotNull(
      'messaging', instance.messaging?.map((e) => e.toJson()).toList());
  writeNotNull('document', instance.document?.map((e) => e.toJson()).toList());
  return val;
}

CapabilityStatementSoftware _$CapabilityStatementSoftwareFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementSoftware(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      releaseDate: json['releaseDate'] == null
          ? null
          : FhirDateTime.fromJson(json['releaseDate'] as String),
      releaseDateElement: json['_releaseDate'] == null
          ? null
          : Element.fromJson(json['_releaseDate'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementSoftwareToJson(
    CapabilityStatementSoftware instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('releaseDate', instance.releaseDate?.toJson());
  writeNotNull('_releaseDate', instance.releaseDateElement?.toJson());
  return val;
}

CapabilityStatementImplementation _$CapabilityStatementImplementationFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementImplementation(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      url: json['url'] == null ? null : FhirUrl.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : Element.fromJson(json['_url'] as Map<String, dynamic>),
      custodian: json['custodian'] == null
          ? null
          : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
      implementationGuide: (json['implementationGuide'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      implementationGuideElement:
          (json['_implementationGuide'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementImplementationToJson(
    CapabilityStatementImplementation instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['description'] = instance.description.toJson();
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('custodian', instance.custodian?.toJson());
  writeNotNull('implementationGuide',
      instance.implementationGuide?.map((e) => e.toJson()).toList());
  writeNotNull('_implementationGuide',
      instance.implementationGuideElement?.map((e) => e.toJson()).toList());
  return val;
}

CapabilityStatementRest _$CapabilityStatementRestFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementRest(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: FhirCode.fromJson(json['mode']),
      modeElement: json['_mode'] == null
          ? null
          : Element.fromJson(json['_mode'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      security: json['security'] == null
          ? null
          : CapabilityStatementSecurity.fromJson(
              json['security'] as Map<String, dynamic>),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementInteraction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementOperation.fromJson(e as Map<String, dynamic>))
          .toList(),
      compartment: (json['compartment'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      compartmentElement: (json['_compartment'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementRestToJson(
    CapabilityStatementRest instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['mode'] = instance.mode.toJson();
  writeNotNull('_mode', instance.modeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('security', instance.security?.toJson());
  writeNotNull('resource', instance.resource?.map((e) => e.toJson()).toList());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e.toJson()).toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e.toJson()).toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e.toJson()).toList());
  writeNotNull(
      'compartment', instance.compartment?.map((e) => e.toJson()).toList());
  writeNotNull('_compartment',
      instance.compartmentElement?.map((e) => e.toJson()).toList());
  return val;
}

CapabilityStatementSecurity _$CapabilityStatementSecurityFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementSecurity(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      cors: json['cors'] == null ? null : FhirBoolean.fromJson(json['cors']),
      corsElement: json['_cors'] == null
          ? null
          : Element.fromJson(json['_cors'] as Map<String, dynamic>),
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementSecurityToJson(
    CapabilityStatementSecurity instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('cors', instance.cors?.toJson());
  writeNotNull('_cors', instance.corsElement?.toJson());
  writeNotNull('service', instance.service?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  return val;
}

CapabilityStatementResource _$CapabilityStatementResourceFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementResource(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] == null
          ? null
          : Element.fromJson(json['_profile'] as Map<String, dynamic>),
      supportedProfile: (json['supportedProfile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      supportedProfileElement: (json['_supportedProfile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementInteraction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      versioning: json['versioning'] == null
          ? null
          : FhirCode.fromJson(json['versioning']),
      versioningElement: json['_versioning'] == null
          ? null
          : Element.fromJson(json['_versioning'] as Map<String, dynamic>),
      readHistory: json['readHistory'] == null
          ? null
          : FhirBoolean.fromJson(json['readHistory']),
      readHistoryElement: json['_readHistory'] == null
          ? null
          : Element.fromJson(json['_readHistory'] as Map<String, dynamic>),
      updateCreate: json['updateCreate'] == null
          ? null
          : FhirBoolean.fromJson(json['updateCreate']),
      updateCreateElement: json['_updateCreate'] == null
          ? null
          : Element.fromJson(json['_updateCreate'] as Map<String, dynamic>),
      conditionalCreate: json['conditionalCreate'] == null
          ? null
          : FhirBoolean.fromJson(json['conditionalCreate']),
      conditionalCreateElement: json['_conditionalCreate'] == null
          ? null
          : Element.fromJson(
              json['_conditionalCreate'] as Map<String, dynamic>),
      conditionalRead: json['conditionalRead'] == null
          ? null
          : FhirCode.fromJson(json['conditionalRead']),
      conditionalReadElement: json['_conditionalRead'] == null
          ? null
          : Element.fromJson(json['_conditionalRead'] as Map<String, dynamic>),
      conditionalUpdate: json['conditionalUpdate'] == null
          ? null
          : FhirBoolean.fromJson(json['conditionalUpdate']),
      conditionalUpdateElement: json['_conditionalUpdate'] == null
          ? null
          : Element.fromJson(
              json['_conditionalUpdate'] as Map<String, dynamic>),
      conditionalDelete: json['conditionalDelete'] == null
          ? null
          : FhirCode.fromJson(json['conditionalDelete']),
      conditionalDeleteElement: json['_conditionalDelete'] == null
          ? null
          : Element.fromJson(
              json['_conditionalDelete'] as Map<String, dynamic>),
      referencePolicy: (json['referencePolicy'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      referencePolicyElement: (json['_referencePolicy'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchInclude: (json['searchInclude'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      searchIncludeElement: (json['_searchInclude'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchRevInclude: (json['searchRevInclude'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      searchRevIncludeElement: (json['_searchRevInclude'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementOperation.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementResourceToJson(
    CapabilityStatementResource instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('_profile', instance.profileElement?.toJson());
  writeNotNull('supportedProfile',
      instance.supportedProfile?.map((e) => e.toJson()).toList());
  writeNotNull('_supportedProfile',
      instance.supportedProfileElement?.map((e) => e.toJson()).toList());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e.toJson()).toList());
  writeNotNull('versioning', instance.versioning?.toJson());
  writeNotNull('_versioning', instance.versioningElement?.toJson());
  writeNotNull('readHistory', instance.readHistory?.toJson());
  writeNotNull('_readHistory', instance.readHistoryElement?.toJson());
  writeNotNull('updateCreate', instance.updateCreate?.toJson());
  writeNotNull('_updateCreate', instance.updateCreateElement?.toJson());
  writeNotNull('conditionalCreate', instance.conditionalCreate?.toJson());
  writeNotNull(
      '_conditionalCreate', instance.conditionalCreateElement?.toJson());
  writeNotNull('conditionalRead', instance.conditionalRead?.toJson());
  writeNotNull('_conditionalRead', instance.conditionalReadElement?.toJson());
  writeNotNull('conditionalUpdate', instance.conditionalUpdate?.toJson());
  writeNotNull(
      '_conditionalUpdate', instance.conditionalUpdateElement?.toJson());
  writeNotNull('conditionalDelete', instance.conditionalDelete?.toJson());
  writeNotNull(
      '_conditionalDelete', instance.conditionalDeleteElement?.toJson());
  writeNotNull('referencePolicy',
      instance.referencePolicy?.map((e) => e.toJson()).toList());
  writeNotNull('_referencePolicy',
      instance.referencePolicyElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'searchInclude', instance.searchInclude?.map((e) => e.toJson()).toList());
  writeNotNull('_searchInclude',
      instance.searchIncludeElement?.map((e) => e.toJson()).toList());
  writeNotNull('searchRevInclude',
      instance.searchRevInclude?.map((e) => e.toJson()).toList());
  writeNotNull('_searchRevInclude',
      instance.searchRevIncludeElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e.toJson()).toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e.toJson()).toList());
  return val;
}

CapabilityStatementInteraction _$CapabilityStatementInteractionFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementInteraction(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementInteractionToJson(
    CapabilityStatementInteraction instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

CapabilityStatementSearchParam _$CapabilityStatementSearchParamFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementSearchParam(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      definition: json['definition'] == null
          ? null
          : FhirCanonical.fromJson(json['definition']),
      definitionElement: json['_definition'] == null
          ? null
          : Element.fromJson(json['_definition'] as Map<String, dynamic>),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementSearchParamToJson(
    CapabilityStatementSearchParam instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull('_definition', instance.definitionElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

CapabilityStatementOperation _$CapabilityStatementOperationFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementOperation(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      definition: FhirCanonical.fromJson(json['definition']),
      definitionElement: json['_definition'] == null
          ? null
          : Element.fromJson(json['_definition'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementOperationToJson(
    CapabilityStatementOperation instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  val['definition'] = instance.definition.toJson();
  writeNotNull('_definition', instance.definitionElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

CapabilityStatementInteraction1 _$CapabilityStatementInteraction1FromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementInteraction1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementInteraction1ToJson(
    CapabilityStatementInteraction1 instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

CapabilityStatementMessaging _$CapabilityStatementMessagingFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementMessaging(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementEndpoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      reliableCache: json['reliableCache'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['reliableCache']),
      reliableCacheElement: json['_reliableCache'] == null
          ? null
          : Element.fromJson(json['_reliableCache'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSupportedMessage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementMessagingToJson(
    CapabilityStatementMessaging instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('endpoint', instance.endpoint?.map((e) => e.toJson()).toList());
  writeNotNull('reliableCache', instance.reliableCache?.toJson());
  writeNotNull('_reliableCache', instance.reliableCacheElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('supportedMessage',
      instance.supportedMessage?.map((e) => e.toJson()).toList());
  return val;
}

CapabilityStatementEndpoint _$CapabilityStatementEndpointFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementEndpoint(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocol: Coding.fromJson(json['protocol'] as Map<String, dynamic>),
      address: FhirUrl.fromJson(json['address']),
      addressElement: json['_address'] == null
          ? null
          : Element.fromJson(json['_address'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementEndpointToJson(
    CapabilityStatementEndpoint instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['protocol'] = instance.protocol.toJson();
  val['address'] = instance.address.toJson();
  writeNotNull('_address', instance.addressElement?.toJson());
  return val;
}

CapabilityStatementSupportedMessage
    _$CapabilityStatementSupportedMessageFromJson(Map<String, dynamic> json) =>
        CapabilityStatementSupportedMessage(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          mode: FhirCode.fromJson(json['mode']),
          modeElement: json['_mode'] == null
              ? null
              : Element.fromJson(json['_mode'] as Map<String, dynamic>),
          definition: FhirCanonical.fromJson(json['definition']),
          definitionElement: json['_definition'] == null
              ? null
              : Element.fromJson(json['_definition'] as Map<String, dynamic>),
          userData: json['userData'] as Map<String, dynamic>? ??
              const <String, Object?>{},
          formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
          formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
          annotations:
              json['annotations'] as List<dynamic>? ?? const <dynamic>[],
          children: (json['children'] as List<dynamic>?)
                  ?.map(FhirBase.fromJson)
                  .toList() ??
              const <FhirBase>[],
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, FhirBase.fromJson(e)),
              ) ??
              const <String, FhirBase>{},
        );

Map<String, dynamic> _$CapabilityStatementSupportedMessageToJson(
    CapabilityStatementSupportedMessage instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['mode'] = instance.mode.toJson();
  writeNotNull('_mode', instance.modeElement?.toJson());
  val['definition'] = instance.definition.toJson();
  writeNotNull('_definition', instance.definitionElement?.toJson());
  return val;
}

CapabilityStatementDocument _$CapabilityStatementDocumentFromJson(
        Map<String, dynamic> json) =>
    CapabilityStatementDocument(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: FhirCode.fromJson(json['mode']),
      modeElement: json['_mode'] == null
          ? null
          : Element.fromJson(json['_mode'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      profile: FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] == null
          ? null
          : Element.fromJson(json['_profile'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$CapabilityStatementDocumentToJson(
    CapabilityStatementDocument instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['mode'] = instance.mode.toJson();
  writeNotNull('_mode', instance.modeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  val['profile'] = instance.profile.toJson();
  writeNotNull('_profile', instance.profileElement?.toJson());
  return val;
}
