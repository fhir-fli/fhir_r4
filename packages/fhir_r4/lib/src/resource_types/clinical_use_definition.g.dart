// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'clinical_use_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClinicalUseDefinitionCopyWith<T>
    extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ClinicalUseDefinitionType? type,
    List<CodeableConcept>? category,
    List<Reference>? subject,
    CodeableConcept? status,
    ClinicalUseDefinitionContraindication? contraindication,
    ClinicalUseDefinitionIndication? indication,
    ClinicalUseDefinitionInteraction? interaction,
    List<Reference>? population,
    ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
    ClinicalUseDefinitionWarning? warning,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionCopyWithImpl<T>
    implements $ClinicalUseDefinitionCopyWith<T> {
  final ClinicalUseDefinition _value;
  final T Function(ClinicalUseDefinition) _then;

  _$ClinicalUseDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? status = fhirSentinel,
    Object? contraindication = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? interaction = fhirSentinel,
    Object? population = fhirSentinel,
    Object? undesirableEffect = fhirSentinel,
    Object? warning = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ClinicalUseDefinitionType?) ?? _value.type,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        contraindication: identical(contraindication, fhirSentinel)
            ? _value.contraindication
            : contraindication as ClinicalUseDefinitionContraindication?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as ClinicalUseDefinitionIndication?,
        interaction: identical(interaction, fhirSentinel)
            ? _value.interaction
            : interaction as ClinicalUseDefinitionInteraction?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<Reference>?,
        undesirableEffect: identical(undesirableEffect, fhirSentinel)
            ? _value.undesirableEffect
            : undesirableEffect as ClinicalUseDefinitionUndesirableEffect?,
        warning: identical(warning, fhirSentinel)
            ? _value.warning
            : warning as ClinicalUseDefinitionWarning?,
      ),
    );
  }
}

extension ClinicalUseDefinitionCopyWithExtension on ClinicalUseDefinition {
  $ClinicalUseDefinitionCopyWith<ClinicalUseDefinition> get copyWith =>
      _$ClinicalUseDefinitionCopyWithImpl<ClinicalUseDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ClinicalUseDefinitionContraindicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    List<Reference>? indication,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionContraindicationCopyWithImpl<T>
    implements $ClinicalUseDefinitionContraindicationCopyWith<T> {
  final ClinicalUseDefinitionContraindication _value;
  final T Function(ClinicalUseDefinitionContraindication) _then;

  _$ClinicalUseDefinitionContraindicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? diseaseSymptomProcedure = fhirSentinel,
    Object? diseaseStatus = fhirSentinel,
    Object? comorbidity = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? otherTherapy = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionContraindication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        diseaseSymptomProcedure:
            identical(diseaseSymptomProcedure, fhirSentinel)
                ? _value.diseaseSymptomProcedure
                : diseaseSymptomProcedure as CodeableReference?,
        diseaseStatus: identical(diseaseStatus, fhirSentinel)
            ? _value.diseaseStatus
            : diseaseStatus as CodeableReference?,
        comorbidity: identical(comorbidity, fhirSentinel)
            ? _value.comorbidity
            : comorbidity as List<CodeableReference>?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as List<Reference>?,
        otherTherapy: identical(otherTherapy, fhirSentinel)
            ? _value.otherTherapy
            : otherTherapy as List<ClinicalUseDefinitionOtherTherapy>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionContraindicationCopyWithExtension
    on ClinicalUseDefinitionContraindication {
  $ClinicalUseDefinitionContraindicationCopyWith<
          ClinicalUseDefinitionContraindication>
      get copyWith => _$ClinicalUseDefinitionContraindicationCopyWithImpl<
              ClinicalUseDefinitionContraindication>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionOtherTherapyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    CodeableReference? therapy,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<T>
    implements $ClinicalUseDefinitionOtherTherapyCopyWith<T> {
  final ClinicalUseDefinitionOtherTherapy _value;
  final T Function(ClinicalUseDefinitionOtherTherapy) _then;

  _$ClinicalUseDefinitionOtherTherapyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationshipType = fhirSentinel,
    Object? therapy = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionOtherTherapy(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationshipType: identical(relationshipType, fhirSentinel)
            ? _value.relationshipType
            : (relationshipType as CodeableConcept?) ?? _value.relationshipType,
        therapy: identical(therapy, fhirSentinel)
            ? _value.therapy
            : (therapy as CodeableReference?) ?? _value.therapy,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionOtherTherapyCopyWithExtension
    on ClinicalUseDefinitionOtherTherapy {
  $ClinicalUseDefinitionOtherTherapyCopyWith<ClinicalUseDefinitionOtherTherapy>
      get copyWith => _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<
              ClinicalUseDefinitionOtherTherapy>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionIndicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? diseaseSymptomProcedure,
    CodeableReference? diseaseStatus,
    List<CodeableReference>? comorbidity,
    CodeableReference? intendedEffect,
    DurationXClinicalUseDefinitionIndication? durationX,
    List<Reference>? undesirableEffect,
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionIndicationCopyWithImpl<T>
    implements $ClinicalUseDefinitionIndicationCopyWith<T> {
  final ClinicalUseDefinitionIndication _value;
  final T Function(ClinicalUseDefinitionIndication) _then;

  _$ClinicalUseDefinitionIndicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? diseaseSymptomProcedure = fhirSentinel,
    Object? diseaseStatus = fhirSentinel,
    Object? comorbidity = fhirSentinel,
    Object? intendedEffect = fhirSentinel,
    Object? durationX = fhirSentinel,
    Object? undesirableEffect = fhirSentinel,
    Object? otherTherapy = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionIndication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        diseaseSymptomProcedure:
            identical(diseaseSymptomProcedure, fhirSentinel)
                ? _value.diseaseSymptomProcedure
                : diseaseSymptomProcedure as CodeableReference?,
        diseaseStatus: identical(diseaseStatus, fhirSentinel)
            ? _value.diseaseStatus
            : diseaseStatus as CodeableReference?,
        comorbidity: identical(comorbidity, fhirSentinel)
            ? _value.comorbidity
            : comorbidity as List<CodeableReference>?,
        intendedEffect: identical(intendedEffect, fhirSentinel)
            ? _value.intendedEffect
            : intendedEffect as CodeableReference?,
        durationX: identical(durationX, fhirSentinel)
            ? _value.durationX
            : durationX as DurationXClinicalUseDefinitionIndication?,
        undesirableEffect: identical(undesirableEffect, fhirSentinel)
            ? _value.undesirableEffect
            : undesirableEffect as List<Reference>?,
        otherTherapy: identical(otherTherapy, fhirSentinel)
            ? _value.otherTherapy
            : otherTherapy as List<ClinicalUseDefinitionOtherTherapy>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionIndicationCopyWithExtension
    on ClinicalUseDefinitionIndication {
  $ClinicalUseDefinitionIndicationCopyWith<ClinicalUseDefinitionIndication>
      get copyWith => _$ClinicalUseDefinitionIndicationCopyWithImpl<
              ClinicalUseDefinitionIndication>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionInteractionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ClinicalUseDefinitionInteractant>? interactant,
    CodeableConcept? type,
    CodeableReference? effect,
    CodeableConcept? incidence,
    List<CodeableConcept>? management,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionInteractionCopyWithImpl<T>
    implements $ClinicalUseDefinitionInteractionCopyWith<T> {
  final ClinicalUseDefinitionInteraction _value;
  final T Function(ClinicalUseDefinitionInteraction) _then;

  _$ClinicalUseDefinitionInteractionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? interactant = fhirSentinel,
    Object? type = fhirSentinel,
    Object? effect = fhirSentinel,
    Object? incidence = fhirSentinel,
    Object? management = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionInteraction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        interactant: identical(interactant, fhirSentinel)
            ? _value.interactant
            : interactant as List<ClinicalUseDefinitionInteractant>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        effect: identical(effect, fhirSentinel)
            ? _value.effect
            : effect as CodeableReference?,
        incidence: identical(incidence, fhirSentinel)
            ? _value.incidence
            : incidence as CodeableConcept?,
        management: identical(management, fhirSentinel)
            ? _value.management
            : management as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionInteractionCopyWithExtension
    on ClinicalUseDefinitionInteraction {
  $ClinicalUseDefinitionInteractionCopyWith<ClinicalUseDefinitionInteraction>
      get copyWith => _$ClinicalUseDefinitionInteractionCopyWithImpl<
              ClinicalUseDefinitionInteraction>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionInteractantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ItemXClinicalUseDefinitionInteractant? itemX,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionInteractantCopyWithImpl<T>
    implements $ClinicalUseDefinitionInteractantCopyWith<T> {
  final ClinicalUseDefinitionInteractant _value;
  final T Function(ClinicalUseDefinitionInteractant) _then;

  _$ClinicalUseDefinitionInteractantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionInteractant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemX: identical(itemX, fhirSentinel)
            ? _value.itemX
            : (itemX as ItemXClinicalUseDefinitionInteractant?) ?? _value.itemX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionInteractantCopyWithExtension
    on ClinicalUseDefinitionInteractant {
  $ClinicalUseDefinitionInteractantCopyWith<ClinicalUseDefinitionInteractant>
      get copyWith => _$ClinicalUseDefinitionInteractantCopyWithImpl<
              ClinicalUseDefinitionInteractant>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionUndesirableEffectCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? symptomConditionEffect,
    CodeableConcept? classification,
    CodeableConcept? frequencyOfOccurrence,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<T>
    implements $ClinicalUseDefinitionUndesirableEffectCopyWith<T> {
  final ClinicalUseDefinitionUndesirableEffect _value;
  final T Function(ClinicalUseDefinitionUndesirableEffect) _then;

  _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? symptomConditionEffect = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? frequencyOfOccurrence = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionUndesirableEffect(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        symptomConditionEffect: identical(symptomConditionEffect, fhirSentinel)
            ? _value.symptomConditionEffect
            : symptomConditionEffect as CodeableReference?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as CodeableConcept?,
        frequencyOfOccurrence: identical(frequencyOfOccurrence, fhirSentinel)
            ? _value.frequencyOfOccurrence
            : frequencyOfOccurrence as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionUndesirableEffectCopyWithExtension
    on ClinicalUseDefinitionUndesirableEffect {
  $ClinicalUseDefinitionUndesirableEffectCopyWith<
          ClinicalUseDefinitionUndesirableEffect>
      get copyWith => _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<
              ClinicalUseDefinitionUndesirableEffect>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalUseDefinitionWarningCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$ClinicalUseDefinitionWarningCopyWithImpl<T>
    implements $ClinicalUseDefinitionWarningCopyWith<T> {
  final ClinicalUseDefinitionWarning _value;
  final T Function(ClinicalUseDefinitionWarning) _then;

  _$ClinicalUseDefinitionWarningCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalUseDefinitionWarning(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalUseDefinitionWarningCopyWithExtension
    on ClinicalUseDefinitionWarning {
  $ClinicalUseDefinitionWarningCopyWith<ClinicalUseDefinitionWarning>
      get copyWith => _$ClinicalUseDefinitionWarningCopyWithImpl<
              ClinicalUseDefinitionWarning>(
            this,
            (value) => value,
          );
}
