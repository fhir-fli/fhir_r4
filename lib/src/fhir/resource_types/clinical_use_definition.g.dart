// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinical_use_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalUseDefinition _$ClinicalUseDefinitionFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinition(
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
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      contraindication: json['contraindication'] == null
          ? null
          : ClinicalUseDefinitionContraindication.fromJson(
              json['contraindication'] as Map<String, dynamic>),
      indication: json['indication'] == null
          ? null
          : ClinicalUseDefinitionIndication.fromJson(
              json['indication'] as Map<String, dynamic>),
      interaction: json['interaction'] == null
          ? null
          : ClinicalUseDefinitionInteraction.fromJson(
              json['interaction'] as Map<String, dynamic>),
      population: (json['population'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      undesirableEffect: json['undesirableEffect'] == null
          ? null
          : ClinicalUseDefinitionUndesirableEffect.fromJson(
              json['undesirableEffect'] as Map<String, dynamic>),
      warning: json['warning'] == null
          ? null
          : ClinicalUseDefinitionWarning.fromJson(
              json['warning'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ClinicalUseDefinitionToJson(
    ClinicalUseDefinition instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('category', instance.category?.map((e) => e.toJson()).toList());
  writeNotNull('subject', instance.subject?.map((e) => e.toJson()).toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('contraindication', instance.contraindication?.toJson());
  writeNotNull('indication', instance.indication?.toJson());
  writeNotNull('interaction', instance.interaction?.toJson());
  writeNotNull(
      'population', instance.population?.map((e) => e.toJson()).toList());
  writeNotNull('undesirableEffect', instance.undesirableEffect?.toJson());
  writeNotNull('warning', instance.warning?.toJson());
  return val;
}

ClinicalUseDefinitionContraindication
    _$ClinicalUseDefinitionContraindicationFromJson(
            Map<String, dynamic> json) =>
        ClinicalUseDefinitionContraindication(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          diseaseSymptomProcedure: json['diseaseSymptomProcedure'] == null
              ? null
              : CodeableReference.fromJson(
                  json['diseaseSymptomProcedure'] as Map<String, dynamic>),
          diseaseStatus: json['diseaseStatus'] == null
              ? null
              : CodeableReference.fromJson(
                  json['diseaseStatus'] as Map<String, dynamic>),
          comorbidity: (json['comorbidity'] as List<dynamic>?)
              ?.map(
                  (e) => CodeableReference.fromJson(e as Map<String, dynamic>))
              .toList(),
          indication: (json['indication'] as List<dynamic>?)
              ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
              .toList(),
          otherTherapy: (json['otherTherapy'] as List<dynamic>?)
              ?.map((e) => ClinicalUseDefinitionOtherTherapy.fromJson(
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

Map<String, dynamic> _$ClinicalUseDefinitionContraindicationToJson(
    ClinicalUseDefinitionContraindication instance) {
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
      'diseaseSymptomProcedure', instance.diseaseSymptomProcedure?.toJson());
  writeNotNull('diseaseStatus', instance.diseaseStatus?.toJson());
  writeNotNull(
      'comorbidity', instance.comorbidity?.map((e) => e.toJson()).toList());
  writeNotNull(
      'indication', instance.indication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'otherTherapy', instance.otherTherapy?.map((e) => e.toJson()).toList());
  return val;
}

ClinicalUseDefinitionOtherTherapy _$ClinicalUseDefinitionOtherTherapyFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinitionOtherTherapy(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationshipType: CodeableConcept.fromJson(
          json['relationshipType'] as Map<String, dynamic>),
      therapy:
          CodeableReference.fromJson(json['therapy'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ClinicalUseDefinitionOtherTherapyToJson(
    ClinicalUseDefinitionOtherTherapy instance) {
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
  val['relationshipType'] = instance.relationshipType.toJson();
  val['therapy'] = instance.therapy.toJson();
  return val;
}

ClinicalUseDefinitionIndication _$ClinicalUseDefinitionIndicationFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinitionIndication(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      diseaseSymptomProcedure: json['diseaseSymptomProcedure'] == null
          ? null
          : CodeableReference.fromJson(
              json['diseaseSymptomProcedure'] as Map<String, dynamic>),
      diseaseStatus: json['diseaseStatus'] == null
          ? null
          : CodeableReference.fromJson(
              json['diseaseStatus'] as Map<String, dynamic>),
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map((e) => CodeableReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      intendedEffect: json['intendedEffect'] == null
          ? null
          : CodeableReference.fromJson(
              json['intendedEffect'] as Map<String, dynamic>),
      durationRange: json['durationRange'] == null
          ? null
          : Range.fromJson(json['durationRange'] as Map<String, dynamic>),
      durationString: json['durationString'] == null
          ? null
          : FhirString.fromJson(json['durationString']),
      durationStringElement: json['_durationString'] == null
          ? null
          : Element.fromJson(json['_durationString'] as Map<String, dynamic>),
      undesirableEffect: (json['undesirableEffect'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map((e) => ClinicalUseDefinitionOtherTherapy.fromJson(
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

Map<String, dynamic> _$ClinicalUseDefinitionIndicationToJson(
    ClinicalUseDefinitionIndication instance) {
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
      'diseaseSymptomProcedure', instance.diseaseSymptomProcedure?.toJson());
  writeNotNull('diseaseStatus', instance.diseaseStatus?.toJson());
  writeNotNull(
      'comorbidity', instance.comorbidity?.map((e) => e.toJson()).toList());
  writeNotNull('intendedEffect', instance.intendedEffect?.toJson());
  writeNotNull('durationRange', instance.durationRange?.toJson());
  writeNotNull('durationString', instance.durationString?.toJson());
  writeNotNull('_durationString', instance.durationStringElement?.toJson());
  writeNotNull('undesirableEffect',
      instance.undesirableEffect?.map((e) => e.toJson()).toList());
  writeNotNull(
      'otherTherapy', instance.otherTherapy?.map((e) => e.toJson()).toList());
  return val;
}

ClinicalUseDefinitionInteraction _$ClinicalUseDefinitionInteractionFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinitionInteraction(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactant: (json['interactant'] as List<dynamic>?)
          ?.map((e) => ClinicalUseDefinitionInteractant.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      effect: json['effect'] == null
          ? null
          : CodeableReference.fromJson(json['effect'] as Map<String, dynamic>),
      incidence: json['incidence'] == null
          ? null
          : CodeableConcept.fromJson(json['incidence'] as Map<String, dynamic>),
      management: (json['management'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ClinicalUseDefinitionInteractionToJson(
    ClinicalUseDefinitionInteraction instance) {
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
      'interactant', instance.interactant?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('effect', instance.effect?.toJson());
  writeNotNull('incidence', instance.incidence?.toJson());
  writeNotNull(
      'management', instance.management?.map((e) => e.toJson()).toList());
  return val;
}

ClinicalUseDefinitionInteractant _$ClinicalUseDefinitionInteractantFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinitionInteractant(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemReference:
          Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
      itemCodeableConcept: CodeableConcept.fromJson(
          json['itemCodeableConcept'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ClinicalUseDefinitionInteractantToJson(
    ClinicalUseDefinitionInteractant instance) {
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
  val['itemReference'] = instance.itemReference.toJson();
  val['itemCodeableConcept'] = instance.itemCodeableConcept.toJson();
  return val;
}

ClinicalUseDefinitionUndesirableEffect
    _$ClinicalUseDefinitionUndesirableEffectFromJson(
            Map<String, dynamic> json) =>
        ClinicalUseDefinitionUndesirableEffect(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          symptomConditionEffect: json['symptomConditionEffect'] == null
              ? null
              : CodeableReference.fromJson(
                  json['symptomConditionEffect'] as Map<String, dynamic>),
          classification: json['classification'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['classification'] as Map<String, dynamic>),
          frequencyOfOccurrence: json['frequencyOfOccurrence'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['frequencyOfOccurrence'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ClinicalUseDefinitionUndesirableEffectToJson(
    ClinicalUseDefinitionUndesirableEffect instance) {
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
      'symptomConditionEffect', instance.symptomConditionEffect?.toJson());
  writeNotNull('classification', instance.classification?.toJson());
  writeNotNull(
      'frequencyOfOccurrence', instance.frequencyOfOccurrence?.toJson());
  return val;
}

ClinicalUseDefinitionWarning _$ClinicalUseDefinitionWarningFromJson(
        Map<String, dynamic> json) =>
    ClinicalUseDefinitionWarning(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ClinicalUseDefinitionWarningToJson(
    ClinicalUseDefinitionWarning instance) {
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
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('code', instance.code?.toJson());
  return val;
}
