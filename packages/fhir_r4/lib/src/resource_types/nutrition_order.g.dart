// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'nutrition_order.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NutritionOrderCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<FhirUri>? instantiates,
    RequestStatus? status,
    RequestIntent? intent,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateTime,
    Reference? orderer,
    List<Reference>? allergyIntolerance,
    List<CodeableConcept>? foodPreferenceModifier,
    List<CodeableConcept>? excludeFoodModifier,
    NutritionOrderOralDiet? oralDiet,
    List<NutritionOrderSupplement>? supplement,
    NutritionOrderEnteralFormula? enteralFormula,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderCopyWithImpl<T> implements $NutritionOrderCopyWith<T> {
  final NutritionOrder _value;
  final T Function(NutritionOrder) _then;

  _$NutritionOrderCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? instantiates = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? dateTime = fhirSentinel,
    Object? orderer = fhirSentinel,
    Object? allergyIntolerance = fhirSentinel,
    Object? foodPreferenceModifier = fhirSentinel,
    Object? excludeFoodModifier = fhirSentinel,
    Object? oralDiet = fhirSentinel,
    Object? supplement = fhirSentinel,
    Object? enteralFormula = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrder(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        instantiates: identical(instantiates, fhirSentinel)
            ? _value.instantiates
            : instantiates as List<FhirUri>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        dateTime: identical(dateTime, fhirSentinel)
            ? _value.dateTime
            : (dateTime as FhirDateTime?) ?? _value.dateTime,
        orderer: identical(orderer, fhirSentinel)
            ? _value.orderer
            : orderer as Reference?,
        allergyIntolerance: identical(allergyIntolerance, fhirSentinel)
            ? _value.allergyIntolerance
            : allergyIntolerance as List<Reference>?,
        foodPreferenceModifier: identical(foodPreferenceModifier, fhirSentinel)
            ? _value.foodPreferenceModifier
            : foodPreferenceModifier as List<CodeableConcept>?,
        excludeFoodModifier: identical(excludeFoodModifier, fhirSentinel)
            ? _value.excludeFoodModifier
            : excludeFoodModifier as List<CodeableConcept>?,
        oralDiet: identical(oralDiet, fhirSentinel)
            ? _value.oralDiet
            : oralDiet as NutritionOrderOralDiet?,
        supplement: identical(supplement, fhirSentinel)
            ? _value.supplement
            : supplement as List<NutritionOrderSupplement>?,
        enteralFormula: identical(enteralFormula, fhirSentinel)
            ? _value.enteralFormula
            : enteralFormula as NutritionOrderEnteralFormula?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension NutritionOrderCopyWithExtension on NutritionOrder {
  $NutritionOrderCopyWith<NutritionOrder> get copyWith =>
      _$NutritionOrderCopyWithImpl<NutritionOrder>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderOralDietCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    List<Timing>? schedule,
    List<NutritionOrderNutrient>? nutrient,
    List<NutritionOrderTexture>? texture,
    List<CodeableConcept>? fluidConsistencyType,
    FhirString? instruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderOralDietCopyWithImpl<T>
    implements $NutritionOrderOralDietCopyWith<T> {
  final NutritionOrderOralDiet _value;
  final T Function(NutritionOrderOralDiet) _then;

  _$NutritionOrderOralDietCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? nutrient = fhirSentinel,
    Object? texture = fhirSentinel,
    Object? fluidConsistencyType = fhirSentinel,
    Object? instruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderOralDiet(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as List<Timing>?,
        nutrient: identical(nutrient, fhirSentinel)
            ? _value.nutrient
            : nutrient as List<NutritionOrderNutrient>?,
        texture: identical(texture, fhirSentinel)
            ? _value.texture
            : texture as List<NutritionOrderTexture>?,
        fluidConsistencyType: identical(fluidConsistencyType, fhirSentinel)
            ? _value.fluidConsistencyType
            : fluidConsistencyType as List<CodeableConcept>?,
        instruction: identical(instruction, fhirSentinel)
            ? _value.instruction
            : instruction as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderOralDietCopyWithExtension on NutritionOrderOralDiet {
  $NutritionOrderOralDietCopyWith<NutritionOrderOralDiet> get copyWith =>
      _$NutritionOrderOralDietCopyWithImpl<NutritionOrderOralDiet>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderNutrientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderNutrientCopyWithImpl<T>
    implements $NutritionOrderNutrientCopyWith<T> {
  final NutritionOrderNutrient _value;
  final T Function(NutritionOrderNutrient) _then;

  _$NutritionOrderNutrientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderNutrient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as CodeableConcept?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderNutrientCopyWithExtension on NutritionOrderNutrient {
  $NutritionOrderNutrientCopyWith<NutritionOrderNutrient> get copyWith =>
      _$NutritionOrderNutrientCopyWithImpl<NutritionOrderNutrient>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderTextureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    CodeableConcept? foodType,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderTextureCopyWithImpl<T>
    implements $NutritionOrderTextureCopyWith<T> {
  final NutritionOrderTexture _value;
  final T Function(NutritionOrderTexture) _then;

  _$NutritionOrderTextureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? foodType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderTexture(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as CodeableConcept?,
        foodType: identical(foodType, fhirSentinel)
            ? _value.foodType
            : foodType as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderTextureCopyWithExtension on NutritionOrderTexture {
  $NutritionOrderTextureCopyWith<NutritionOrderTexture> get copyWith =>
      _$NutritionOrderTextureCopyWithImpl<NutritionOrderTexture>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderSupplementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? productName,
    List<Timing>? schedule,
    Quantity? quantity,
    FhirString? instruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderSupplementCopyWithImpl<T>
    implements $NutritionOrderSupplementCopyWith<T> {
  final NutritionOrderSupplement _value;
  final T Function(NutritionOrderSupplement) _then;

  _$NutritionOrderSupplementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? productName = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? instruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderSupplement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        productName: identical(productName, fhirSentinel)
            ? _value.productName
            : productName as FhirString?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as List<Timing>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        instruction: identical(instruction, fhirSentinel)
            ? _value.instruction
            : instruction as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderSupplementCopyWithExtension
    on NutritionOrderSupplement {
  $NutritionOrderSupplementCopyWith<NutritionOrderSupplement> get copyWith =>
      _$NutritionOrderSupplementCopyWithImpl<NutritionOrderSupplement>(
        this,
        (value) => value,
      );
}

abstract class $NutritionOrderEnteralFormulaCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? baseFormulaType,
    FhirString? baseFormulaProductName,
    CodeableConcept? additiveType,
    FhirString? additiveProductName,
    Quantity? caloricDensity,
    CodeableConcept? routeofAdministration,
    List<NutritionOrderAdministration>? administration,
    Quantity? maxVolumeToDeliver,
    FhirString? administrationInstruction,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderEnteralFormulaCopyWithImpl<T>
    implements $NutritionOrderEnteralFormulaCopyWith<T> {
  final NutritionOrderEnteralFormula _value;
  final T Function(NutritionOrderEnteralFormula) _then;

  _$NutritionOrderEnteralFormulaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? baseFormulaType = fhirSentinel,
    Object? baseFormulaProductName = fhirSentinel,
    Object? additiveType = fhirSentinel,
    Object? additiveProductName = fhirSentinel,
    Object? caloricDensity = fhirSentinel,
    Object? routeofAdministration = fhirSentinel,
    Object? administration = fhirSentinel,
    Object? maxVolumeToDeliver = fhirSentinel,
    Object? administrationInstruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderEnteralFormula(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        baseFormulaType: identical(baseFormulaType, fhirSentinel)
            ? _value.baseFormulaType
            : baseFormulaType as CodeableConcept?,
        baseFormulaProductName: identical(baseFormulaProductName, fhirSentinel)
            ? _value.baseFormulaProductName
            : baseFormulaProductName as FhirString?,
        additiveType: identical(additiveType, fhirSentinel)
            ? _value.additiveType
            : additiveType as CodeableConcept?,
        additiveProductName: identical(additiveProductName, fhirSentinel)
            ? _value.additiveProductName
            : additiveProductName as FhirString?,
        caloricDensity: identical(caloricDensity, fhirSentinel)
            ? _value.caloricDensity
            : caloricDensity as Quantity?,
        routeofAdministration: identical(routeofAdministration, fhirSentinel)
            ? _value.routeofAdministration
            : routeofAdministration as CodeableConcept?,
        administration: identical(administration, fhirSentinel)
            ? _value.administration
            : administration as List<NutritionOrderAdministration>?,
        maxVolumeToDeliver: identical(maxVolumeToDeliver, fhirSentinel)
            ? _value.maxVolumeToDeliver
            : maxVolumeToDeliver as Quantity?,
        administrationInstruction:
            identical(administrationInstruction, fhirSentinel)
                ? _value.administrationInstruction
                : administrationInstruction as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderEnteralFormulaCopyWithExtension
    on NutritionOrderEnteralFormula {
  $NutritionOrderEnteralFormulaCopyWith<NutritionOrderEnteralFormula>
      get copyWith => _$NutritionOrderEnteralFormulaCopyWithImpl<
              NutritionOrderEnteralFormula>(
            this,
            (value) => value,
          );
}

abstract class $NutritionOrderAdministrationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Timing? schedule,
    Quantity? quantity,
    RateXNutritionOrderAdministration? rateX,
    bool? disallowExtensions,
  });
}

class _$NutritionOrderAdministrationCopyWithImpl<T>
    implements $NutritionOrderAdministrationCopyWith<T> {
  final NutritionOrderAdministration _value;
  final T Function(NutritionOrderAdministration) _then;

  _$NutritionOrderAdministrationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? rateX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NutritionOrderAdministration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as Timing?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        rateX: identical(rateX, fhirSentinel)
            ? _value.rateX
            : rateX as RateXNutritionOrderAdministration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NutritionOrderAdministrationCopyWithExtension
    on NutritionOrderAdministration {
  $NutritionOrderAdministrationCopyWith<NutritionOrderAdministration>
      get copyWith => _$NutritionOrderAdministrationCopyWithImpl<
              NutritionOrderAdministration>(
            this,
            (value) => value,
          );
}
