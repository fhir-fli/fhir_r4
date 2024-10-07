// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
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
      clinicalStatus: json['clinicalStatus'] == null
          ? null
          : CodeableConcept.fromJson(
              json['clinicalStatus'] as Map<String, dynamic>),
      verificationStatus: json['verificationStatus'] == null
          ? null
          : CodeableConcept.fromJson(
              json['verificationStatus'] as Map<String, dynamic>),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      severity: json['severity'] == null
          ? null
          : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      onsetDateTime: json['onsetDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['onsetDateTime'] as String),
      onsetDateTimeElement: json['_onsetDateTime'] == null
          ? null
          : Element.fromJson(json['_onsetDateTime'] as Map<String, dynamic>),
      onsetAge: json['onsetAge'] == null
          ? null
          : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
      onsetPeriod: json['onsetPeriod'] == null
          ? null
          : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
      onsetRange: json['onsetRange'] == null
          ? null
          : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
      onsetString: json['onsetString'] == null
          ? null
          : FhirString.fromJson(json['onsetString']),
      onsetStringElement: json['_onsetString'] == null
          ? null
          : Element.fromJson(json['_onsetString'] as Map<String, dynamic>),
      abatementDateTime: json['abatementDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['abatementDateTime'] as String),
      abatementDateTimeElement: json['_abatementDateTime'] == null
          ? null
          : Element.fromJson(
              json['_abatementDateTime'] as Map<String, dynamic>),
      abatementAge: json['abatementAge'] == null
          ? null
          : Age.fromJson(json['abatementAge'] as Map<String, dynamic>),
      abatementPeriod: json['abatementPeriod'] == null
          ? null
          : Period.fromJson(json['abatementPeriod'] as Map<String, dynamic>),
      abatementRange: json['abatementRange'] == null
          ? null
          : Range.fromJson(json['abatementRange'] as Map<String, dynamic>),
      abatementString: json['abatementString'] == null
          ? null
          : FhirString.fromJson(json['abatementString']),
      abatementStringElement: json['_abatementString'] == null
          ? null
          : Element.fromJson(json['_abatementString'] as Map<String, dynamic>),
      recordedDate: json['recordedDate'] == null
          ? null
          : FhirDateTime.fromJson(json['recordedDate'] as String),
      recordedDateElement: json['_recordedDate'] == null
          ? null
          : Element.fromJson(json['_recordedDate'] as Map<String, dynamic>),
      recorder: json['recorder'] == null
          ? null
          : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
      asserter: json['asserter'] == null
          ? null
          : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
      stage: (json['stage'] as List<dynamic>?)
          ?.map((e) => ConditionStage.fromJson(e as Map<String, dynamic>))
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map((e) => ConditionEvidence.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ConditionToJson(Condition instance) {
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
  writeNotNull('clinicalStatus', instance.clinicalStatus?.toJson());
  writeNotNull('verificationStatus', instance.verificationStatus?.toJson());
  writeNotNull('category', instance.category?.map((e) => e.toJson()).toList());
  writeNotNull('severity', instance.severity?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('bodySite', instance.bodySite?.map((e) => e.toJson()).toList());
  val['subject'] = instance.subject.toJson();
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('onsetDateTime', instance.onsetDateTime?.toJson());
  writeNotNull('_onsetDateTime', instance.onsetDateTimeElement?.toJson());
  writeNotNull('onsetAge', instance.onsetAge?.toJson());
  writeNotNull('onsetPeriod', instance.onsetPeriod?.toJson());
  writeNotNull('onsetRange', instance.onsetRange?.toJson());
  writeNotNull('onsetString', instance.onsetString?.toJson());
  writeNotNull('_onsetString', instance.onsetStringElement?.toJson());
  writeNotNull('abatementDateTime', instance.abatementDateTime?.toJson());
  writeNotNull(
      '_abatementDateTime', instance.abatementDateTimeElement?.toJson());
  writeNotNull('abatementAge', instance.abatementAge?.toJson());
  writeNotNull('abatementPeriod', instance.abatementPeriod?.toJson());
  writeNotNull('abatementRange', instance.abatementRange?.toJson());
  writeNotNull('abatementString', instance.abatementString?.toJson());
  writeNotNull('_abatementString', instance.abatementStringElement?.toJson());
  writeNotNull('recordedDate', instance.recordedDate?.toJson());
  writeNotNull('_recordedDate', instance.recordedDateElement?.toJson());
  writeNotNull('recorder', instance.recorder?.toJson());
  writeNotNull('asserter', instance.asserter?.toJson());
  writeNotNull('stage', instance.stage?.map((e) => e.toJson()).toList());
  writeNotNull('evidence', instance.evidence?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  return val;
}

ConditionStage _$ConditionStageFromJson(Map<String, dynamic> json) =>
    ConditionStage(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] == null
          ? null
          : CodeableConcept.fromJson(json['summary'] as Map<String, dynamic>),
      assessment: (json['assessment'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ConditionStageToJson(ConditionStage instance) {
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
  writeNotNull('summary', instance.summary?.toJson());
  writeNotNull(
      'assessment', instance.assessment?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  return val;
}

ConditionEvidence _$ConditionEvidenceFromJson(Map<String, dynamic> json) =>
    ConditionEvidence(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ConditionEvidenceToJson(ConditionEvidence instance) {
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
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}
