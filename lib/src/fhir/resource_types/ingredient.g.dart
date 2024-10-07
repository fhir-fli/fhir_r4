// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingredient _$IngredientFromJson(Map<String, dynamic> json) => Ingredient(
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
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      for_: (json['for'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
      function_: (json['function'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      allergenicIndicator: json['allergenicIndicator'] == null
          ? null
          : FhirBoolean.fromJson(json['allergenicIndicator']),
      allergenicIndicatorElement: json['_allergenicIndicator'] == null
          ? null
          : Element.fromJson(
              json['_allergenicIndicator'] as Map<String, dynamic>),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map(
              (e) => IngredientManufacturer.fromJson(e as Map<String, dynamic>))
          .toList(),
      substance: IngredientSubstance.fromJson(
          json['substance'] as Map<String, dynamic>),
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

Map<String, dynamic> _$IngredientToJson(Ingredient instance) {
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
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('for', instance.for_?.map((e) => e.toJson()).toList());
  val['role'] = instance.role.toJson();
  writeNotNull('function', instance.function_?.map((e) => e.toJson()).toList());
  writeNotNull('allergenicIndicator', instance.allergenicIndicator?.toJson());
  writeNotNull(
      '_allergenicIndicator', instance.allergenicIndicatorElement?.toJson());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e.toJson()).toList());
  val['substance'] = instance.substance.toJson();
  return val;
}

IngredientManufacturer _$IngredientManufacturerFromJson(
        Map<String, dynamic> json) =>
    IngredientManufacturer(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] == null ? null : FhirCode.fromJson(json['role']),
      roleElement: json['_role'] == null
          ? null
          : Element.fromJson(json['_role'] as Map<String, dynamic>),
      manufacturer:
          Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
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

Map<String, dynamic> _$IngredientManufacturerToJson(
    IngredientManufacturer instance) {
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
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('_role', instance.roleElement?.toJson());
  val['manufacturer'] = instance.manufacturer.toJson();
  return val;
}

IngredientSubstance _$IngredientSubstanceFromJson(Map<String, dynamic> json) =>
    IngredientSubstance(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: CodeableReference.fromJson(json['code'] as Map<String, dynamic>),
      strength: (json['strength'] as List<dynamic>?)
          ?.map((e) => IngredientStrength.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$IngredientSubstanceToJson(IngredientSubstance instance) {
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
  writeNotNull('strength', instance.strength?.map((e) => e.toJson()).toList());
  return val;
}

IngredientStrength _$IngredientStrengthFromJson(Map<String, dynamic> json) =>
    IngredientStrength(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentationRatio: json['presentationRatio'] == null
          ? null
          : Ratio.fromJson(json['presentationRatio'] as Map<String, dynamic>),
      presentationRatioRange: json['presentationRatioRange'] == null
          ? null
          : RatioRange.fromJson(
              json['presentationRatioRange'] as Map<String, dynamic>),
      textPresentation: json['textPresentation'] == null
          ? null
          : FhirString.fromJson(json['textPresentation']),
      textPresentationElement: json['_textPresentation'] == null
          ? null
          : Element.fromJson(json['_textPresentation'] as Map<String, dynamic>),
      concentrationRatio: json['concentrationRatio'] == null
          ? null
          : Ratio.fromJson(json['concentrationRatio'] as Map<String, dynamic>),
      concentrationRatioRange: json['concentrationRatioRange'] == null
          ? null
          : RatioRange.fromJson(
              json['concentrationRatioRange'] as Map<String, dynamic>),
      textConcentration: json['textConcentration'] == null
          ? null
          : FhirString.fromJson(json['textConcentration']),
      textConcentrationElement: json['_textConcentration'] == null
          ? null
          : Element.fromJson(
              json['_textConcentration'] as Map<String, dynamic>),
      measurementPoint: json['measurementPoint'] == null
          ? null
          : FhirString.fromJson(json['measurementPoint']),
      measurementPointElement: json['_measurementPoint'] == null
          ? null
          : Element.fromJson(json['_measurementPoint'] as Map<String, dynamic>),
      country: (json['country'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceStrength: (json['referenceStrength'] as List<dynamic>?)
          ?.map((e) =>
              IngredientReferenceStrength.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$IngredientStrengthToJson(IngredientStrength instance) {
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
  writeNotNull('presentationRatio', instance.presentationRatio?.toJson());
  writeNotNull(
      'presentationRatioRange', instance.presentationRatioRange?.toJson());
  writeNotNull('textPresentation', instance.textPresentation?.toJson());
  writeNotNull('_textPresentation', instance.textPresentationElement?.toJson());
  writeNotNull('concentrationRatio', instance.concentrationRatio?.toJson());
  writeNotNull(
      'concentrationRatioRange', instance.concentrationRatioRange?.toJson());
  writeNotNull('textConcentration', instance.textConcentration?.toJson());
  writeNotNull(
      '_textConcentration', instance.textConcentrationElement?.toJson());
  writeNotNull('measurementPoint', instance.measurementPoint?.toJson());
  writeNotNull('_measurementPoint', instance.measurementPointElement?.toJson());
  writeNotNull('country', instance.country?.map((e) => e.toJson()).toList());
  writeNotNull('referenceStrength',
      instance.referenceStrength?.map((e) => e.toJson()).toList());
  return val;
}

IngredientReferenceStrength _$IngredientReferenceStrengthFromJson(
        Map<String, dynamic> json) =>
    IngredientReferenceStrength(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      substance: json['substance'] == null
          ? null
          : CodeableReference.fromJson(
              json['substance'] as Map<String, dynamic>),
      strengthRatio:
          Ratio.fromJson(json['strengthRatio'] as Map<String, dynamic>),
      strengthRatioRange: RatioRange.fromJson(
          json['strengthRatioRange'] as Map<String, dynamic>),
      measurementPoint: json['measurementPoint'] == null
          ? null
          : FhirString.fromJson(json['measurementPoint']),
      measurementPointElement: json['_measurementPoint'] == null
          ? null
          : Element.fromJson(json['_measurementPoint'] as Map<String, dynamic>),
      country: (json['country'] as List<dynamic>?)
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

Map<String, dynamic> _$IngredientReferenceStrengthToJson(
    IngredientReferenceStrength instance) {
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
  writeNotNull('substance', instance.substance?.toJson());
  val['strengthRatio'] = instance.strengthRatio.toJson();
  val['strengthRatioRange'] = instance.strengthRatioRange.toJson();
  writeNotNull('measurementPoint', instance.measurementPoint?.toJson());
  writeNotNull('_measurementPoint', instance.measurementPointElement?.toJson());
  writeNotNull('country', instance.country?.map((e) => e.toJson()).toList());
  return val;
}
