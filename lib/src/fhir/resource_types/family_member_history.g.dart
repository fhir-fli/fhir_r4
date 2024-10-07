// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) =>
    FamilyMemberHistory(
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
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      instantiatesCanonicalElement:
          (json['_instantiatesCanonical'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      instantiatesUriElement: (json['_instantiatesUri'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      dataAbsentReason: json['dataAbsentReason'] == null
          ? null
          : CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      relationship: CodeableConcept.fromJson(
          json['relationship'] as Map<String, dynamic>),
      sex: json['sex'] == null
          ? null
          : CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>),
      bornPeriod: json['bornPeriod'] == null
          ? null
          : Period.fromJson(json['bornPeriod'] as Map<String, dynamic>),
      bornDate: json['bornDate'] == null
          ? null
          : FhirDate.fromJson(json['bornDate'] as String),
      bornDateElement: json['_bornDate'] == null
          ? null
          : Element.fromJson(json['_bornDate'] as Map<String, dynamic>),
      bornString: json['bornString'] == null
          ? null
          : FhirString.fromJson(json['bornString']),
      bornStringElement: json['_bornString'] == null
          ? null
          : Element.fromJson(json['_bornString'] as Map<String, dynamic>),
      ageAge: json['ageAge'] == null
          ? null
          : Age.fromJson(json['ageAge'] as Map<String, dynamic>),
      ageRange: json['ageRange'] == null
          ? null
          : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
      ageString: json['ageString'] == null
          ? null
          : FhirString.fromJson(json['ageString']),
      ageStringElement: json['_ageString'] == null
          ? null
          : Element.fromJson(json['_ageString'] as Map<String, dynamic>),
      estimatedAge: json['estimatedAge'] == null
          ? null
          : FhirBoolean.fromJson(json['estimatedAge']),
      estimatedAgeElement: json['_estimatedAge'] == null
          ? null
          : Element.fromJson(json['_estimatedAge'] as Map<String, dynamic>),
      deceasedBoolean: json['deceasedBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['deceasedBoolean']),
      deceasedBooleanElement: json['_deceasedBoolean'] == null
          ? null
          : Element.fromJson(json['_deceasedBoolean'] as Map<String, dynamic>),
      deceasedAge: json['deceasedAge'] == null
          ? null
          : Age.fromJson(json['deceasedAge'] as Map<String, dynamic>),
      deceasedRange: json['deceasedRange'] == null
          ? null
          : Range.fromJson(json['deceasedRange'] as Map<String, dynamic>),
      deceasedDate: json['deceasedDate'] == null
          ? null
          : FhirDate.fromJson(json['deceasedDate'] as String),
      deceasedDateElement: json['_deceasedDate'] == null
          ? null
          : Element.fromJson(json['_deceasedDate'] as Map<String, dynamic>),
      deceasedString: json['deceasedString'] == null
          ? null
          : FhirString.fromJson(json['deceasedString']),
      deceasedStringElement: json['_deceasedString'] == null
          ? null
          : Element.fromJson(json['_deceasedString'] as Map<String, dynamic>),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) =>
              FamilyMemberHistoryCondition.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$FamilyMemberHistoryToJson(FamilyMemberHistory instance) {
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
  writeNotNull('instantiatesCanonical',
      instance.instantiatesCanonical?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiatesCanonical',
      instance.instantiatesCanonicalElement?.map((e) => e.toJson()).toList());
  writeNotNull('instantiatesUri',
      instance.instantiatesUri?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiatesUri',
      instance.instantiatesUriElement?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('dataAbsentReason', instance.dataAbsentReason?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  val['relationship'] = instance.relationship.toJson();
  writeNotNull('sex', instance.sex?.toJson());
  writeNotNull('bornPeriod', instance.bornPeriod?.toJson());
  writeNotNull('bornDate', instance.bornDate?.toJson());
  writeNotNull('_bornDate', instance.bornDateElement?.toJson());
  writeNotNull('bornString', instance.bornString?.toJson());
  writeNotNull('_bornString', instance.bornStringElement?.toJson());
  writeNotNull('ageAge', instance.ageAge?.toJson());
  writeNotNull('ageRange', instance.ageRange?.toJson());
  writeNotNull('ageString', instance.ageString?.toJson());
  writeNotNull('_ageString', instance.ageStringElement?.toJson());
  writeNotNull('estimatedAge', instance.estimatedAge?.toJson());
  writeNotNull('_estimatedAge', instance.estimatedAgeElement?.toJson());
  writeNotNull('deceasedBoolean', instance.deceasedBoolean?.toJson());
  writeNotNull('_deceasedBoolean', instance.deceasedBooleanElement?.toJson());
  writeNotNull('deceasedAge', instance.deceasedAge?.toJson());
  writeNotNull('deceasedRange', instance.deceasedRange?.toJson());
  writeNotNull('deceasedDate', instance.deceasedDate?.toJson());
  writeNotNull('_deceasedDate', instance.deceasedDateElement?.toJson());
  writeNotNull('deceasedString', instance.deceasedString?.toJson());
  writeNotNull('_deceasedString', instance.deceasedStringElement?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e.toJson()).toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull(
      'condition', instance.condition?.map((e) => e.toJson()).toList());
  return val;
}

FamilyMemberHistoryCondition _$FamilyMemberHistoryConditionFromJson(
        Map<String, dynamic> json) =>
    FamilyMemberHistoryCondition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      outcome: json['outcome'] == null
          ? null
          : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
      contributedToDeath: json['contributedToDeath'] == null
          ? null
          : FhirBoolean.fromJson(json['contributedToDeath']),
      contributedToDeathElement: json['_contributedToDeath'] == null
          ? null
          : Element.fromJson(
              json['_contributedToDeath'] as Map<String, dynamic>),
      onsetAge: json['onsetAge'] == null
          ? null
          : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
      onsetRange: json['onsetRange'] == null
          ? null
          : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
      onsetPeriod: json['onsetPeriod'] == null
          ? null
          : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
      onsetString: json['onsetString'] == null
          ? null
          : FhirString.fromJson(json['onsetString']),
      onsetStringElement: json['_onsetString'] == null
          ? null
          : Element.fromJson(json['_onsetString'] as Map<String, dynamic>),
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

Map<String, dynamic> _$FamilyMemberHistoryConditionToJson(
    FamilyMemberHistoryCondition instance) {
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
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('contributedToDeath', instance.contributedToDeath?.toJson());
  writeNotNull(
      '_contributedToDeath', instance.contributedToDeathElement?.toJson());
  writeNotNull('onsetAge', instance.onsetAge?.toJson());
  writeNotNull('onsetRange', instance.onsetRange?.toJson());
  writeNotNull('onsetPeriod', instance.onsetPeriod?.toJson());
  writeNotNull('onsetString', instance.onsetString?.toJson());
  writeNotNull('_onsetString', instance.onsetStringElement?.toJson());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  return val;
}
