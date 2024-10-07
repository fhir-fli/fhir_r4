// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) => Contract(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
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
      status: json['status'] == null ? null : FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      legalState: json['legalState'] == null
          ? null
          : CodeableConcept.fromJson(
              json['legalState'] as Map<String, dynamic>),
      instantiatesCanonical: json['instantiatesCanonical'] == null
          ? null
          : Reference.fromJson(
              json['instantiatesCanonical'] as Map<String, dynamic>),
      instantiatesUri: json['instantiatesUri'] == null
          ? null
          : FhirUri.fromJson(json['instantiatesUri']),
      instantiatesUriElement: json['_instantiatesUri'] == null
          ? null
          : Element.fromJson(json['_instantiatesUri'] as Map<String, dynamic>),
      contentDerivative: json['contentDerivative'] == null
          ? null
          : CodeableConcept.fromJson(
              json['contentDerivative'] as Map<String, dynamic>),
      issued: json['issued'] == null
          ? null
          : FhirDateTime.fromJson(json['issued'] as String),
      issuedElement: json['_issued'] == null
          ? null
          : Element.fromJson(json['_issued'] as Map<String, dynamic>),
      applies: json['applies'] == null
          ? null
          : Period.fromJson(json['applies'] as Map<String, dynamic>),
      expirationType: json['expirationType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['expirationType'] as Map<String, dynamic>),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] == null ? null : FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      subtitle: json['subtitle'] == null
          ? null
          : FhirString.fromJson(json['subtitle']),
      subtitleElement: json['_subtitle'] == null
          ? null
          : Element.fromJson(json['_subtitle'] as Map<String, dynamic>),
      alias:
          (json['alias'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      aliasElement: (json['_alias'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: json['author'] == null
          ? null
          : Reference.fromJson(json['author'] as Map<String, dynamic>),
      scope: json['scope'] == null
          ? null
          : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
      topicCodeableConcept: json['topicCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>),
      topicReference: json['topicReference'] == null
          ? null
          : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: (json['subType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentDefinition: json['contentDefinition'] == null
          ? null
          : ContractContentDefinition.fromJson(
              json['contentDefinition'] as Map<String, dynamic>),
      term: (json['term'] as List<dynamic>?)
          ?.map((e) => ContractTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map((e) => ContractSigner.fromJson(e as Map<String, dynamic>))
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map((e) => ContractFriendly.fromJson(e as Map<String, dynamic>))
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map((e) => ContractLegal.fromJson(e as Map<String, dynamic>))
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map((e) => ContractRule.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ContractToJson(Contract instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('legalState', instance.legalState?.toJson());
  writeNotNull(
      'instantiatesCanonical', instance.instantiatesCanonical?.toJson());
  writeNotNull('instantiatesUri', instance.instantiatesUri?.toJson());
  writeNotNull('_instantiatesUri', instance.instantiatesUriElement?.toJson());
  writeNotNull('contentDerivative', instance.contentDerivative?.toJson());
  writeNotNull('issued', instance.issued?.toJson());
  writeNotNull('_issued', instance.issuedElement?.toJson());
  writeNotNull('applies', instance.applies?.toJson());
  writeNotNull('expirationType', instance.expirationType?.toJson());
  writeNotNull('subject', instance.subject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'authority', instance.authority?.map((e) => e.toJson()).toList());
  writeNotNull('domain', instance.domain?.map((e) => e.toJson()).toList());
  writeNotNull('site', instance.site?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('subtitle', instance.subtitle?.toJson());
  writeNotNull('_subtitle', instance.subtitleElement?.toJson());
  writeNotNull('alias', instance.alias?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_alias', instance.aliasElement?.map((e) => e.toJson()).toList());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull('topicCodeableConcept', instance.topicCodeableConcept?.toJson());
  writeNotNull('topicReference', instance.topicReference?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.map((e) => e.toJson()).toList());
  writeNotNull('contentDefinition', instance.contentDefinition?.toJson());
  writeNotNull('term', instance.term?.map((e) => e.toJson()).toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e.toJson()).toList());
  writeNotNull('relevantHistory',
      instance.relevantHistory?.map((e) => e.toJson()).toList());
  writeNotNull('signer', instance.signer?.map((e) => e.toJson()).toList());
  writeNotNull('friendly', instance.friendly?.map((e) => e.toJson()).toList());
  writeNotNull('legal', instance.legal?.map((e) => e.toJson()).toList());
  writeNotNull('rule', instance.rule?.map((e) => e.toJson()).toList());
  return val;
}

ContractContentDefinition _$ContractContentDefinitionFromJson(
        Map<String, dynamic> json) =>
    ContractContentDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] == null
          ? null
          : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
      publisher: json['publisher'] == null
          ? null
          : Reference.fromJson(json['publisher'] as Map<String, dynamic>),
      publicationDate: json['publicationDate'] == null
          ? null
          : FhirDateTime.fromJson(json['publicationDate'] as String),
      publicationDateElement: json['_publicationDate'] == null
          ? null
          : Element.fromJson(json['_publicationDate'] as Map<String, dynamic>),
      publicationStatus: FhirCode.fromJson(json['publicationStatus']),
      publicationStatusElement: json['_publicationStatus'] == null
          ? null
          : Element.fromJson(
              json['_publicationStatus'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractContentDefinitionToJson(
    ContractContentDefinition instance) {
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
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('publicationDate', instance.publicationDate?.toJson());
  writeNotNull('_publicationDate', instance.publicationDateElement?.toJson());
  val['publicationStatus'] = instance.publicationStatus.toJson();
  writeNotNull(
      '_publicationStatus', instance.publicationStatusElement?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  return val;
}

ContractTerm _$ContractTermFromJson(Map<String, dynamic> json) => ContractTerm(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      issued: json['issued'] == null
          ? null
          : FhirDateTime.fromJson(json['issued'] as String),
      issuedElement: json['_issued'] == null
          ? null
          : Element.fromJson(json['_issued'] as Map<String, dynamic>),
      applies: json['applies'] == null
          ? null
          : Period.fromJson(json['applies'] as Map<String, dynamic>),
      topicCodeableConcept: json['topicCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>),
      topicReference: json['topicReference'] == null
          ? null
          : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] == null
          ? null
          : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map(
              (e) => ContractSecurityLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      offer: ContractOffer.fromJson(json['offer'] as Map<String, dynamic>),
      asset: (json['asset'] as List<dynamic>?)
          ?.map((e) => ContractAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map((e) => ContractAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map((e) => ContractTerm.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ContractTermToJson(ContractTerm instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('issued', instance.issued?.toJson());
  writeNotNull('_issued', instance.issuedElement?.toJson());
  writeNotNull('applies', instance.applies?.toJson());
  writeNotNull('topicCodeableConcept', instance.topicCodeableConcept?.toJson());
  writeNotNull('topicReference', instance.topicReference?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull(
      'securityLabel', instance.securityLabel?.map((e) => e.toJson()).toList());
  val['offer'] = instance.offer.toJson();
  writeNotNull('asset', instance.asset?.map((e) => e.toJson()).toList());
  writeNotNull('action', instance.action?.map((e) => e.toJson()).toList());
  writeNotNull('group', instance.group?.map((e) => e.toJson()).toList());
  return val;
}

ContractSecurityLabel _$ContractSecurityLabelFromJson(
        Map<String, dynamic> json) =>
    ContractSecurityLabel(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as List<dynamic>?)
          ?.map(FhirUnsignedInt.fromJson)
          .toList(),
      numberElement: (json['_number'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      classification:
          Coding.fromJson(json['classification'] as Map<String, dynamic>),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ContractSecurityLabelToJson(
    ContractSecurityLabel instance) {
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
  writeNotNull('number', instance.number?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_number', instance.numberElement?.map((e) => e.toJson()).toList());
  val['classification'] = instance.classification.toJson();
  writeNotNull('category', instance.category?.map((e) => e.toJson()).toList());
  writeNotNull('control', instance.control?.map((e) => e.toJson()).toList());
  return val;
}

ContractOffer _$ContractOfferFromJson(Map<String, dynamic> json) =>
    ContractOffer(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map((e) => ContractParty.fromJson(e as Map<String, dynamic>))
          .toList(),
      topic: json['topic'] == null
          ? null
          : Reference.fromJson(json['topic'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      decision: json['decision'] == null
          ? null
          : CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>),
      decisionMode: (json['decisionMode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => ContractAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      linkIdElement: (json['_linkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map(FhirUnsignedInt.fromJson)
          .toList(),
      securityLabelNumberElement:
          (json['_securityLabelNumber'] as List<dynamic>?)
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

Map<String, dynamic> _$ContractOfferToJson(ContractOffer instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('party', instance.party?.map((e) => e.toJson()).toList());
  writeNotNull('topic', instance.topic?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('decision', instance.decision?.toJson());
  writeNotNull(
      'decisionMode', instance.decisionMode?.map((e) => e.toJson()).toList());
  writeNotNull('answer', instance.answer?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('linkId', instance.linkId?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_linkId', instance.linkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull('securityLabelNumber',
      instance.securityLabelNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_securityLabelNumber',
      instance.securityLabelNumberElement?.map((e) => e.toJson()).toList());
  return val;
}

ContractParty _$ContractPartyFromJson(Map<String, dynamic> json) =>
    ContractParty(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractPartyToJson(ContractParty instance) {
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
  val['reference'] = instance.reference.map((e) => e.toJson()).toList();
  val['role'] = instance.role.toJson();
  return val;
}

ContractAnswer _$ContractAnswerFromJson(Map<String, dynamic> json) =>
    ContractAnswer(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueBoolean: FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueDecimal: FhirDecimal.fromJson(json['valueDecimal']),
      valueDecimalElement: json['_valueDecimal'] == null
          ? null
          : Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>),
      valueInteger: FhirInteger.fromJson(json['valueInteger']),
      valueIntegerElement: json['_valueInteger'] == null
          ? null
          : Element.fromJson(json['_valueInteger'] as Map<String, dynamic>),
      valueDate: FhirDate.fromJson(json['valueDate'] as String),
      valueDateElement: json['_valueDate'] == null
          ? null
          : Element.fromJson(json['_valueDate'] as Map<String, dynamic>),
      valueDateTime: FhirDateTime.fromJson(json['valueDateTime'] as String),
      valueDateTimeElement: json['_valueDateTime'] == null
          ? null
          : Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>),
      valueTime: FhirTime.fromJson(json['valueTime']),
      valueTimeElement: json['_valueTime'] == null
          ? null
          : Element.fromJson(json['_valueTime'] as Map<String, dynamic>),
      valueString: FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueUri: FhirUri.fromJson(json['valueUri']),
      valueUriElement: json['_valueUri'] == null
          ? null
          : Element.fromJson(json['_valueUri'] as Map<String, dynamic>),
      valueAttachment:
          Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
      valueCoding: Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
      valueQuantity:
          Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueReference:
          Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractAnswerToJson(ContractAnswer instance) {
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
  val['valueBoolean'] = instance.valueBoolean.toJson();
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  val['valueDecimal'] = instance.valueDecimal.toJson();
  writeNotNull('_valueDecimal', instance.valueDecimalElement?.toJson());
  val['valueInteger'] = instance.valueInteger.toJson();
  writeNotNull('_valueInteger', instance.valueIntegerElement?.toJson());
  val['valueDate'] = instance.valueDate.toJson();
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  val['valueDateTime'] = instance.valueDateTime.toJson();
  writeNotNull('_valueDateTime', instance.valueDateTimeElement?.toJson());
  val['valueTime'] = instance.valueTime.toJson();
  writeNotNull('_valueTime', instance.valueTimeElement?.toJson());
  val['valueString'] = instance.valueString.toJson();
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  val['valueUri'] = instance.valueUri.toJson();
  writeNotNull('_valueUri', instance.valueUriElement?.toJson());
  val['valueAttachment'] = instance.valueAttachment.toJson();
  val['valueCoding'] = instance.valueCoding.toJson();
  val['valueQuantity'] = instance.valueQuantity.toJson();
  val['valueReference'] = instance.valueReference.toJson();
  return val;
}

ContractAsset _$ContractAssetFromJson(Map<String, dynamic> json) =>
    ContractAsset(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      scope: json['scope'] == null
          ? null
          : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationship: json['relationship'] == null
          ? null
          : Coding.fromJson(json['relationship'] as Map<String, dynamic>),
      context: (json['context'] as List<dynamic>?)
          ?.map((e) => ContractContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: json['condition'] == null
          ? null
          : FhirString.fromJson(json['condition']),
      conditionElement: json['_condition'] == null
          ? null
          : Element.fromJson(json['_condition'] as Map<String, dynamic>),
      periodType: (json['periodType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      linkIdElement: (json['_linkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => ContractAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map(FhirUnsignedInt.fromJson)
          .toList(),
      securityLabelNumberElement:
          (json['_securityLabelNumber'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      valuedItem: (json['valuedItem'] as List<dynamic>?)
          ?.map((e) => ContractValuedItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ContractAssetToJson(ContractAsset instance) {
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
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull(
      'typeReference', instance.typeReference?.map((e) => e.toJson()).toList());
  writeNotNull('subtype', instance.subtype?.map((e) => e.toJson()).toList());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('context', instance.context?.map((e) => e.toJson()).toList());
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('_condition', instance.conditionElement?.toJson());
  writeNotNull(
      'periodType', instance.periodType?.map((e) => e.toJson()).toList());
  writeNotNull('period', instance.period?.map((e) => e.toJson()).toList());
  writeNotNull(
      'usePeriod', instance.usePeriod?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('linkId', instance.linkId?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_linkId', instance.linkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull('answer', instance.answer?.map((e) => e.toJson()).toList());
  writeNotNull('securityLabelNumber',
      instance.securityLabelNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_securityLabelNumber',
      instance.securityLabelNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'valuedItem', instance.valuedItem?.map((e) => e.toJson()).toList());
  return val;
}

ContractContext _$ContractContextFromJson(Map<String, dynamic> json) =>
    ContractContext(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: json['reference'] == null
          ? null
          : Reference.fromJson(json['reference'] as Map<String, dynamic>),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractContextToJson(ContractContext instance) {
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
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  return val;
}

ContractValuedItem _$ContractValuedItemFromJson(Map<String, dynamic> json) =>
    ContractValuedItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      entityCodeableConcept: json['entityCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['entityCodeableConcept'] as Map<String, dynamic>),
      entityReference: json['entityReference'] == null
          ? null
          : Reference.fromJson(json['entityReference'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      effectiveTime: json['effectiveTime'] == null
          ? null
          : FhirDateTime.fromJson(json['effectiveTime'] as String),
      effectiveTimeElement: json['_effectiveTime'] == null
          ? null
          : Element.fromJson(json['_effectiveTime'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      points:
          json['points'] == null ? null : FhirDecimal.fromJson(json['points']),
      pointsElement: json['_points'] == null
          ? null
          : Element.fromJson(json['_points'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      payment:
          json['payment'] == null ? null : FhirString.fromJson(json['payment']),
      paymentElement: json['_payment'] == null
          ? null
          : Element.fromJson(json['_payment'] as Map<String, dynamic>),
      paymentDate: json['paymentDate'] == null
          ? null
          : FhirDateTime.fromJson(json['paymentDate'] as String),
      paymentDateElement: json['_paymentDate'] == null
          ? null
          : Element.fromJson(json['_paymentDate'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
      recipient: json['recipient'] == null
          ? null
          : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      linkIdElement: (json['_linkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map(FhirUnsignedInt.fromJson)
          .toList(),
      securityLabelNumberElement:
          (json['_securityLabelNumber'] as List<dynamic>?)
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

Map<String, dynamic> _$ContractValuedItemToJson(ContractValuedItem instance) {
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
  writeNotNull(
      'entityCodeableConcept', instance.entityCodeableConcept?.toJson());
  writeNotNull('entityReference', instance.entityReference?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('effectiveTime', instance.effectiveTime?.toJson());
  writeNotNull('_effectiveTime', instance.effectiveTimeElement?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('points', instance.points?.toJson());
  writeNotNull('_points', instance.pointsElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('_payment', instance.paymentElement?.toJson());
  writeNotNull('paymentDate', instance.paymentDate?.toJson());
  writeNotNull('_paymentDate', instance.paymentDateElement?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('recipient', instance.recipient?.toJson());
  writeNotNull('linkId', instance.linkId?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_linkId', instance.linkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull('securityLabelNumber',
      instance.securityLabelNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_securityLabelNumber',
      instance.securityLabelNumberElement?.map((e) => e.toJson()).toList());
  return val;
}

ContractAction _$ContractActionFromJson(Map<String, dynamic> json) =>
    ContractAction(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      doNotPerform: json['doNotPerform'] == null
          ? null
          : FhirBoolean.fromJson(json['doNotPerform']),
      doNotPerformElement: json['_doNotPerform'] == null
          ? null
          : Element.fromJson(json['_doNotPerform'] as Map<String, dynamic>),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => ContractSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
      intent: CodeableConcept.fromJson(json['intent'] as Map<String, dynamic>),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      linkIdElement: (json['_linkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      context: json['context'] == null
          ? null
          : Reference.fromJson(json['context'] as Map<String, dynamic>),
      contextLinkId: (json['contextLinkId'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      contextLinkIdElement: (json['_contextLinkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['occurrenceDateTime'] as String),
      occurrenceDateTimeElement: json['_occurrenceDateTime'] == null
          ? null
          : Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>),
      occurrencePeriod: json['occurrencePeriod'] == null
          ? null
          : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
      occurrenceTiming: json['occurrenceTiming'] == null
          ? null
          : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
      requester: (json['requester'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      requesterLinkId: (json['requesterLinkId'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      requesterLinkIdElement: (json['_requesterLinkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      performerRole: json['performerRole'] == null
          ? null
          : CodeableConcept.fromJson(
              json['performerRole'] as Map<String, dynamic>),
      performer: json['performer'] == null
          ? null
          : Reference.fromJson(json['performer'] as Map<String, dynamic>),
      performerLinkId: (json['performerLinkId'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      performerLinkIdElement: (json['_performerLinkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason:
          (json['reason'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      reasonElement: (json['_reason'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonLinkId: (json['reasonLinkId'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      reasonLinkIdElement: (json['_reasonLinkId'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map(FhirUnsignedInt.fromJson)
          .toList(),
      securityLabelNumberElement:
          (json['_securityLabelNumber'] as List<dynamic>?)
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

Map<String, dynamic> _$ContractActionToJson(ContractAction instance) {
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
  writeNotNull('doNotPerform', instance.doNotPerform?.toJson());
  writeNotNull('_doNotPerform', instance.doNotPerformElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('subject', instance.subject?.map((e) => e.toJson()).toList());
  val['intent'] = instance.intent.toJson();
  writeNotNull('linkId', instance.linkId?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_linkId', instance.linkIdElement?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('context', instance.context?.toJson());
  writeNotNull(
      'contextLinkId', instance.contextLinkId?.map((e) => e.toJson()).toList());
  writeNotNull('_contextLinkId',
      instance.contextLinkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime?.toJson());
  writeNotNull(
      '_occurrenceDateTime', instance.occurrenceDateTimeElement?.toJson());
  writeNotNull('occurrencePeriod', instance.occurrencePeriod?.toJson());
  writeNotNull('occurrenceTiming', instance.occurrenceTiming?.toJson());
  writeNotNull(
      'requester', instance.requester?.map((e) => e.toJson()).toList());
  writeNotNull('requesterLinkId',
      instance.requesterLinkId?.map((e) => e.toJson()).toList());
  writeNotNull('_requesterLinkId',
      instance.requesterLinkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'performerType', instance.performerType?.map((e) => e.toJson()).toList());
  writeNotNull('performerRole', instance.performerRole?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull('performerLinkId',
      instance.performerLinkId?.map((e) => e.toJson()).toList());
  writeNotNull('_performerLinkId',
      instance.performerLinkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e.toJson()).toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e.toJson()).toList());
  writeNotNull('reason', instance.reason?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_reason', instance.reasonElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'reasonLinkId', instance.reasonLinkId?.map((e) => e.toJson()).toList());
  writeNotNull('_reasonLinkId',
      instance.reasonLinkIdElement?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull('securityLabelNumber',
      instance.securityLabelNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_securityLabelNumber',
      instance.securityLabelNumberElement?.map((e) => e.toJson()).toList());
  return val;
}

ContractSubject _$ContractSubjectFromJson(Map<String, dynamic> json) =>
    ContractSubject(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] == null
          ? null
          : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractSubjectToJson(ContractSubject instance) {
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
  val['reference'] = instance.reference.map((e) => e.toJson()).toList();
  writeNotNull('role', instance.role?.toJson());
  return val;
}

ContractSigner _$ContractSignerFromJson(Map<String, dynamic> json) =>
    ContractSigner(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
      party: Reference.fromJson(json['party'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>)
          .map((e) => Signature.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ContractSignerToJson(ContractSigner instance) {
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
  val['party'] = instance.party.toJson();
  val['signature'] = instance.signature.map((e) => e.toJson()).toList();
  return val;
}

ContractFriendly _$ContractFriendlyFromJson(Map<String, dynamic> json) =>
    ContractFriendly(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentAttachment: Attachment.fromJson(
          json['contentAttachment'] as Map<String, dynamic>),
      contentReference:
          Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractFriendlyToJson(ContractFriendly instance) {
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
  val['contentAttachment'] = instance.contentAttachment.toJson();
  val['contentReference'] = instance.contentReference.toJson();
  return val;
}

ContractLegal _$ContractLegalFromJson(Map<String, dynamic> json) =>
    ContractLegal(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentAttachment: Attachment.fromJson(
          json['contentAttachment'] as Map<String, dynamic>),
      contentReference:
          Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
      legallyBindingAttachment: json['legallyBindingAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['legallyBindingAttachment'] as Map<String, dynamic>),
      legallyBindingReference: json['legallyBindingReference'] == null
          ? null
          : Reference.fromJson(
              json['legallyBindingReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractLegalToJson(ContractLegal instance) {
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
  val['contentAttachment'] = instance.contentAttachment.toJson();
  val['contentReference'] = instance.contentReference.toJson();
  writeNotNull(
      'legallyBindingAttachment', instance.legallyBindingAttachment?.toJson());
  writeNotNull(
      'legallyBindingReference', instance.legallyBindingReference?.toJson());
  return val;
}

ContractRule _$ContractRuleFromJson(Map<String, dynamic> json) => ContractRule(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentAttachment: Attachment.fromJson(
          json['contentAttachment'] as Map<String, dynamic>),
      contentReference:
          Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ContractRuleToJson(ContractRule instance) {
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
  val['contentAttachment'] = instance.contentAttachment.toJson();
  val['contentReference'] = instance.contentReference.toJson();
  return val;
}
