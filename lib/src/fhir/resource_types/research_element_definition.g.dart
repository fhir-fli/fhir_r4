// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_element_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
        Map<String, dynamic> json) =>
    ResearchElementDefinition(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      shortTitle: json['shortTitle'] == null
          ? null
          : FhirString.fromJson(json['shortTitle']),
      shortTitleElement: json['_shortTitle'] == null
          ? null
          : Element.fromJson(json['_shortTitle'] as Map<String, dynamic>),
      subtitle: json['subtitle'] == null
          ? null
          : FhirString.fromJson(json['subtitle']),
      subtitleElement: json['_subtitle'] == null
          ? null
          : Element.fromJson(json['_subtitle'] as Map<String, dynamic>),
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
      subjectCodeableConcept: json['subjectCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>),
      subjectReference: json['subjectReference'] == null
          ? null
          : Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
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
      comment: (json['comment'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      commentElement: (json['_comment'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      usage: json['usage'] == null ? null : FhirString.fromJson(json['usage']),
      usageElement: json['_usage'] == null
          ? null
          : Element.fromJson(json['_usage'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
      approvalDate: json['approvalDate'] == null
          ? null
          : FhirDate.fromJson(json['approvalDate'] as String),
      approvalDateElement: json['_approvalDate'] == null
          ? null
          : Element.fromJson(json['_approvalDate'] as Map<String, dynamic>),
      lastReviewDate: json['lastReviewDate'] == null
          ? null
          : FhirDate.fromJson(json['lastReviewDate'] as String),
      lastReviewDateElement: json['_lastReviewDate'] == null
          ? null
          : Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>),
      effectivePeriod: json['effectivePeriod'] == null
          ? null
          : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>))
          .toList(),
      library_: (json['library'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      libraryElement: (json['_library'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      variableType: json['variableType'] == null
          ? null
          : FhirCode.fromJson(json['variableType']),
      variableTypeElement: json['_variableType'] == null
          ? null
          : Element.fromJson(json['_variableType'] as Map<String, dynamic>),
      characteristic: (json['characteristic'] as List<dynamic>)
          .map((e) => ResearchElementDefinitionCharacteristic.fromJson(
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

Map<String, dynamic> _$ResearchElementDefinitionToJson(
    ResearchElementDefinition instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('shortTitle', instance.shortTitle?.toJson());
  writeNotNull('_shortTitle', instance.shortTitleElement?.toJson());
  writeNotNull('subtitle', instance.subtitle?.toJson());
  writeNotNull('_subtitle', instance.subtitleElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('comment', instance.comment?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_comment', instance.commentElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  writeNotNull('usage', instance.usage?.toJson());
  writeNotNull('_usage', instance.usageElement?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  writeNotNull('approvalDate', instance.approvalDate?.toJson());
  writeNotNull('_approvalDate', instance.approvalDateElement?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate?.toJson());
  writeNotNull('_lastReviewDate', instance.lastReviewDateElement?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('topic', instance.topic?.map((e) => e.toJson()).toList());
  writeNotNull('author', instance.author?.map((e) => e.toJson()).toList());
  writeNotNull('editor', instance.editor?.map((e) => e.toJson()).toList());
  writeNotNull('reviewer', instance.reviewer?.map((e) => e.toJson()).toList());
  writeNotNull('endorser', instance.endorser?.map((e) => e.toJson()).toList());
  writeNotNull('relatedArtifact',
      instance.relatedArtifact?.map((e) => e.toJson()).toList());
  writeNotNull('library', instance.library_?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_library', instance.libraryElement?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('variableType', instance.variableType?.toJson());
  writeNotNull('_variableType', instance.variableTypeElement?.toJson());
  val['characteristic'] =
      instance.characteristic.map((e) => e.toJson()).toList();
  return val;
}

ResearchElementDefinitionCharacteristic
    _$ResearchElementDefinitionCharacteristicFromJson(
            Map<String, dynamic> json) =>
        ResearchElementDefinitionCharacteristic(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          definitionCodeableConcept: CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>),
          definitionCanonical:
              FhirCanonical.fromJson(json['definitionCanonical']),
          definitionCanonicalElement: json['_definitionCanonical'] == null
              ? null
              : Element.fromJson(
                  json['_definitionCanonical'] as Map<String, dynamic>),
          definitionExpression: FhirExpression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>),
          definitionDataRequirement: DataRequirement.fromJson(
              json['definitionDataRequirement'] as Map<String, dynamic>),
          usageContext: (json['usageContext'] as List<dynamic>?)
              ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
              .toList(),
          exclude: json['exclude'] == null
              ? null
              : FhirBoolean.fromJson(json['exclude']),
          excludeElement: json['_exclude'] == null
              ? null
              : Element.fromJson(json['_exclude'] as Map<String, dynamic>),
          unitOfMeasure: json['unitOfMeasure'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['unitOfMeasure'] as Map<String, dynamic>),
          studyEffectiveDescription: json['studyEffectiveDescription'] == null
              ? null
              : FhirString.fromJson(json['studyEffectiveDescription']),
          studyEffectiveDescriptionElement:
              json['_studyEffectiveDescription'] == null
                  ? null
                  : Element.fromJson(json['_studyEffectiveDescription']
                      as Map<String, dynamic>),
          studyEffectiveDateTime: json['studyEffectiveDateTime'] == null
              ? null
              : FhirDateTime.fromJson(json['studyEffectiveDateTime'] as String),
          studyEffectiveDateTimeElement: json['_studyEffectiveDateTime'] == null
              ? null
              : Element.fromJson(
                  json['_studyEffectiveDateTime'] as Map<String, dynamic>),
          studyEffectivePeriod: json['studyEffectivePeriod'] == null
              ? null
              : Period.fromJson(
                  json['studyEffectivePeriod'] as Map<String, dynamic>),
          studyEffectiveDuration: json['studyEffectiveDuration'] == null
              ? null
              : FhirDuration.fromJson(
                  json['studyEffectiveDuration'] as Map<String, dynamic>),
          studyEffectiveTiming: json['studyEffectiveTiming'] == null
              ? null
              : Timing.fromJson(
                  json['studyEffectiveTiming'] as Map<String, dynamic>),
          studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] ==
                  null
              ? null
              : FhirDuration.fromJson(
                  json['studyEffectiveTimeFromStart'] as Map<String, dynamic>),
          studyEffectiveGroupMeasure: json['studyEffectiveGroupMeasure'] == null
              ? null
              : FhirCode.fromJson(json['studyEffectiveGroupMeasure']),
          studyEffectiveGroupMeasureElement:
              json['_studyEffectiveGroupMeasure'] == null
                  ? null
                  : Element.fromJson(json['_studyEffectiveGroupMeasure']
                      as Map<String, dynamic>),
          participantEffectiveDescription:
              json['participantEffectiveDescription'] == null
                  ? null
                  : FhirString.fromJson(
                      json['participantEffectiveDescription']),
          participantEffectiveDescriptionElement:
              json['_participantEffectiveDescription'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveDescription']
                      as Map<String, dynamic>),
          participantEffectiveDateTime:
              json['participantEffectiveDateTime'] == null
                  ? null
                  : FhirDateTime.fromJson(
                      json['participantEffectiveDateTime'] as String),
          participantEffectiveDateTimeElement:
              json['_participantEffectiveDateTime'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveDateTime']
                      as Map<String, dynamic>),
          participantEffectivePeriod: json['participantEffectivePeriod'] == null
              ? null
              : Period.fromJson(
                  json['participantEffectivePeriod'] as Map<String, dynamic>),
          participantEffectiveDuration: json['participantEffectiveDuration'] ==
                  null
              ? null
              : FhirDuration.fromJson(
                  json['participantEffectiveDuration'] as Map<String, dynamic>),
          participantEffectiveTiming: json['participantEffectiveTiming'] == null
              ? null
              : Timing.fromJson(
                  json['participantEffectiveTiming'] as Map<String, dynamic>),
          participantEffectiveTimeFromStart:
              json['participantEffectiveTimeFromStart'] == null
                  ? null
                  : FhirDuration.fromJson(
                      json['participantEffectiveTimeFromStart']
                          as Map<String, dynamic>),
          participantEffectiveGroupMeasure:
              json['participantEffectiveGroupMeasure'] == null
                  ? null
                  : FhirCode.fromJson(json['participantEffectiveGroupMeasure']),
          participantEffectiveGroupMeasureElement:
              json['_participantEffectiveGroupMeasure'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveGroupMeasure']
                      as Map<String, dynamic>),
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

Map<String, dynamic> _$ResearchElementDefinitionCharacteristicToJson(
    ResearchElementDefinitionCharacteristic instance) {
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
  val['definitionCodeableConcept'] =
      instance.definitionCodeableConcept.toJson();
  val['definitionCanonical'] = instance.definitionCanonical.toJson();
  writeNotNull(
      '_definitionCanonical', instance.definitionCanonicalElement?.toJson());
  val['definitionExpression'] = instance.definitionExpression.toJson();
  val['definitionDataRequirement'] =
      instance.definitionDataRequirement.toJson();
  writeNotNull(
      'usageContext', instance.usageContext?.map((e) => e.toJson()).toList());
  writeNotNull('exclude', instance.exclude?.toJson());
  writeNotNull('_exclude', instance.excludeElement?.toJson());
  writeNotNull('unitOfMeasure', instance.unitOfMeasure?.toJson());
  writeNotNull('studyEffectiveDescription',
      instance.studyEffectiveDescription?.toJson());
  writeNotNull('_studyEffectiveDescription',
      instance.studyEffectiveDescriptionElement?.toJson());
  writeNotNull(
      'studyEffectiveDateTime', instance.studyEffectiveDateTime?.toJson());
  writeNotNull('_studyEffectiveDateTime',
      instance.studyEffectiveDateTimeElement?.toJson());
  writeNotNull('studyEffectivePeriod', instance.studyEffectivePeriod?.toJson());
  writeNotNull(
      'studyEffectiveDuration', instance.studyEffectiveDuration?.toJson());
  writeNotNull('studyEffectiveTiming', instance.studyEffectiveTiming?.toJson());
  writeNotNull('studyEffectiveTimeFromStart',
      instance.studyEffectiveTimeFromStart?.toJson());
  writeNotNull('studyEffectiveGroupMeasure',
      instance.studyEffectiveGroupMeasure?.toJson());
  writeNotNull('_studyEffectiveGroupMeasure',
      instance.studyEffectiveGroupMeasureElement?.toJson());
  writeNotNull('participantEffectiveDescription',
      instance.participantEffectiveDescription?.toJson());
  writeNotNull('_participantEffectiveDescription',
      instance.participantEffectiveDescriptionElement?.toJson());
  writeNotNull('participantEffectiveDateTime',
      instance.participantEffectiveDateTime?.toJson());
  writeNotNull('_participantEffectiveDateTime',
      instance.participantEffectiveDateTimeElement?.toJson());
  writeNotNull('participantEffectivePeriod',
      instance.participantEffectivePeriod?.toJson());
  writeNotNull('participantEffectiveDuration',
      instance.participantEffectiveDuration?.toJson());
  writeNotNull('participantEffectiveTiming',
      instance.participantEffectiveTiming?.toJson());
  writeNotNull('participantEffectiveTimeFromStart',
      instance.participantEffectiveTimeFromStart?.toJson());
  writeNotNull('participantEffectiveGroupMeasure',
      instance.participantEffectiveGroupMeasure?.toJson());
  writeNotNull('_participantEffectiveGroupMeasure',
      instance.participantEffectiveGroupMeasureElement?.toJson());
  return val;
}
