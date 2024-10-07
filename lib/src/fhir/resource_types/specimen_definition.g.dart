// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specimen_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) =>
    SpecimenDefinition(
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
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      typeCollected: json['typeCollected'] == null
          ? null
          : CodeableConcept.fromJson(
              json['typeCollected'] as Map<String, dynamic>),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeAspect: json['timeAspect'] == null
          ? null
          : FhirString.fromJson(json['timeAspect']),
      timeAspectElement: json['_timeAspect'] == null
          ? null
          : Element.fromJson(json['_timeAspect'] as Map<String, dynamic>),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map((e) =>
              SpecimenDefinitionTypeTested.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$SpecimenDefinitionToJson(SpecimenDefinition instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('typeCollected', instance.typeCollected?.toJson());
  writeNotNull('patientPreparation',
      instance.patientPreparation?.map((e) => e.toJson()).toList());
  writeNotNull('timeAspect', instance.timeAspect?.toJson());
  writeNotNull('_timeAspect', instance.timeAspectElement?.toJson());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull(
      'typeTested', instance.typeTested?.map((e) => e.toJson()).toList());
  return val;
}

SpecimenDefinitionTypeTested _$SpecimenDefinitionTypeTestedFromJson(
        Map<String, dynamic> json) =>
    SpecimenDefinitionTypeTested(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDerived: json['isDerived'] == null
          ? null
          : FhirBoolean.fromJson(json['isDerived']),
      isDerivedElement: json['_isDerived'] == null
          ? null
          : Element.fromJson(json['_isDerived'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      preference: FhirCode.fromJson(json['preference']),
      preferenceElement: json['_preference'] == null
          ? null
          : Element.fromJson(json['_preference'] as Map<String, dynamic>),
      container: json['container'] == null
          ? null
          : SpecimenDefinitionContainer.fromJson(
              json['container'] as Map<String, dynamic>),
      requirement: json['requirement'] == null
          ? null
          : FhirString.fromJson(json['requirement']),
      requirementElement: json['_requirement'] == null
          ? null
          : Element.fromJson(json['_requirement'] as Map<String, dynamic>),
      retentionTime: json['retentionTime'] == null
          ? null
          : FhirDuration.fromJson(
              json['retentionTime'] as Map<String, dynamic>),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map((e) =>
              SpecimenDefinitionHandling.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$SpecimenDefinitionTypeTestedToJson(
    SpecimenDefinitionTypeTested instance) {
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
  writeNotNull('isDerived', instance.isDerived?.toJson());
  writeNotNull('_isDerived', instance.isDerivedElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  val['preference'] = instance.preference.toJson();
  writeNotNull('_preference', instance.preferenceElement?.toJson());
  writeNotNull('container', instance.container?.toJson());
  writeNotNull('requirement', instance.requirement?.toJson());
  writeNotNull('_requirement', instance.requirementElement?.toJson());
  writeNotNull('retentionTime', instance.retentionTime?.toJson());
  writeNotNull('rejectionCriterion',
      instance.rejectionCriterion?.map((e) => e.toJson()).toList());
  writeNotNull('handling', instance.handling?.map((e) => e.toJson()).toList());
  return val;
}

SpecimenDefinitionContainer _$SpecimenDefinitionContainerFromJson(
        Map<String, dynamic> json) =>
    SpecimenDefinitionContainer(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      material: json['material'] == null
          ? null
          : CodeableConcept.fromJson(json['material'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      cap: json['cap'] == null
          ? null
          : CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      capacity: json['capacity'] == null
          ? null
          : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
      minimumVolumeQuantity: json['minimumVolumeQuantity'] == null
          ? null
          : Quantity.fromJson(
              json['minimumVolumeQuantity'] as Map<String, dynamic>),
      minimumVolumeString: json['minimumVolumeString'] == null
          ? null
          : FhirString.fromJson(json['minimumVolumeString']),
      minimumVolumeStringElement: json['_minimumVolumeString'] == null
          ? null
          : Element.fromJson(
              json['_minimumVolumeString'] as Map<String, dynamic>),
      additive: (json['additive'] as List<dynamic>?)
          ?.map((e) =>
              SpecimenDefinitionAdditive.fromJson(e as Map<String, dynamic>))
          .toList(),
      preparation: json['preparation'] == null
          ? null
          : FhirString.fromJson(json['preparation']),
      preparationElement: json['_preparation'] == null
          ? null
          : Element.fromJson(json['_preparation'] as Map<String, dynamic>),
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

Map<String, dynamic> _$SpecimenDefinitionContainerToJson(
    SpecimenDefinitionContainer instance) {
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
  writeNotNull('material', instance.material?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('cap', instance.cap?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('capacity', instance.capacity?.toJson());
  writeNotNull(
      'minimumVolumeQuantity', instance.minimumVolumeQuantity?.toJson());
  writeNotNull('minimumVolumeString', instance.minimumVolumeString?.toJson());
  writeNotNull(
      '_minimumVolumeString', instance.minimumVolumeStringElement?.toJson());
  writeNotNull('additive', instance.additive?.map((e) => e.toJson()).toList());
  writeNotNull('preparation', instance.preparation?.toJson());
  writeNotNull('_preparation', instance.preparationElement?.toJson());
  return val;
}

SpecimenDefinitionAdditive _$SpecimenDefinitionAdditiveFromJson(
        Map<String, dynamic> json) =>
    SpecimenDefinitionAdditive(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      additiveCodeableConcept: CodeableConcept.fromJson(
          json['additiveCodeableConcept'] as Map<String, dynamic>),
      additiveReference:
          Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$SpecimenDefinitionAdditiveToJson(
    SpecimenDefinitionAdditive instance) {
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
  val['additiveCodeableConcept'] = instance.additiveCodeableConcept.toJson();
  val['additiveReference'] = instance.additiveReference.toJson();
  return val;
}

SpecimenDefinitionHandling _$SpecimenDefinitionHandlingFromJson(
        Map<String, dynamic> json) =>
    SpecimenDefinitionHandling(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperatureQualifier: json['temperatureQualifier'] == null
          ? null
          : CodeableConcept.fromJson(
              json['temperatureQualifier'] as Map<String, dynamic>),
      temperatureRange: json['temperatureRange'] == null
          ? null
          : Range.fromJson(json['temperatureRange'] as Map<String, dynamic>),
      maxDuration: json['maxDuration'] == null
          ? null
          : FhirDuration.fromJson(json['maxDuration'] as Map<String, dynamic>),
      instruction: json['instruction'] == null
          ? null
          : FhirString.fromJson(json['instruction']),
      instructionElement: json['_instruction'] == null
          ? null
          : Element.fromJson(json['_instruction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$SpecimenDefinitionHandlingToJson(
    SpecimenDefinitionHandling instance) {
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
  writeNotNull('temperatureQualifier', instance.temperatureQualifier?.toJson());
  writeNotNull('temperatureRange', instance.temperatureRange?.toJson());
  writeNotNull('maxDuration', instance.maxDuration?.toJson());
  writeNotNull('instruction', instance.instruction?.toJson());
  writeNotNull('_instruction', instance.instructionElement?.toJson());
  return val;
}
