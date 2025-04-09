// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'ingredient.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $IngredientCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? identifier,
    PublicationStatus? status,
    List<Reference>? for_,
    CodeableConcept? role,
    List<CodeableConcept>? function_,
    FhirBoolean? allergenicIndicator,
    List<IngredientManufacturer>? manufacturer,
    IngredientSubstance? substance,
    bool? disallowExtensions,
  });
}

class _$IngredientCopyWithImpl<T> implements $IngredientCopyWith<T> {
  final Ingredient _value;
  final T Function(Ingredient) _then;

  _$IngredientCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? for_ = fhirSentinel,
    Object? role = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? allergenicIndicator = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? substance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Ingredient(
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
            : identifier as Identifier?,
        status: status as PublicationStatus? ?? _value.status,
        for_: identical(for_, fhirSentinel)
            ? _value.for_
            : for_ as List<Reference>?,
        role: role as CodeableConcept? ?? _value.role,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as List<CodeableConcept>?,
        allergenicIndicator: identical(allergenicIndicator, fhirSentinel)
            ? _value.allergenicIndicator
            : allergenicIndicator as FhirBoolean?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<IngredientManufacturer>?,
        substance: substance as IngredientSubstance? ?? _value.substance,
      ),
    );
  }
}

extension IngredientCopyWithExtension on Ingredient {
  $IngredientCopyWith<Ingredient> get copyWith =>
      _$IngredientCopyWithImpl<Ingredient>(
        this,
        (value) => value,
      );
}

abstract class $IngredientManufacturerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IngredientManufacturerRole? role,
    Reference? manufacturer,
    bool? disallowExtensions,
  });
}

class _$IngredientManufacturerCopyWithImpl<T>
    implements $IngredientManufacturerCopyWith<T> {
  final IngredientManufacturer _value;
  final T Function(IngredientManufacturer) _then;

  _$IngredientManufacturerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      IngredientManufacturer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as IngredientManufacturerRole?,
        manufacturer: manufacturer as Reference? ?? _value.manufacturer,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension IngredientManufacturerCopyWithExtension on IngredientManufacturer {
  $IngredientManufacturerCopyWith<IngredientManufacturer> get copyWith =>
      _$IngredientManufacturerCopyWithImpl<IngredientManufacturer>(
        this,
        (value) => value,
      );
}

abstract class $IngredientSubstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? code,
    List<IngredientStrength>? strength,
    bool? disallowExtensions,
  });
}

class _$IngredientSubstanceCopyWithImpl<T>
    implements $IngredientSubstanceCopyWith<T> {
  final IngredientSubstance _value;
  final T Function(IngredientSubstance) _then;

  _$IngredientSubstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? strength = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      IngredientSubstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as CodeableReference? ?? _value.code,
        strength: identical(strength, fhirSentinel)
            ? _value.strength
            : strength as List<IngredientStrength>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension IngredientSubstanceCopyWithExtension on IngredientSubstance {
  $IngredientSubstanceCopyWith<IngredientSubstance> get copyWith =>
      _$IngredientSubstanceCopyWithImpl<IngredientSubstance>(
        this,
        (value) => value,
      );
}

abstract class $IngredientStrengthCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? presentationX,
    FhirString? textPresentation,
    Ratio? concentrationX,
    FhirString? textConcentration,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    List<IngredientReferenceStrength>? referenceStrength,
    bool? disallowExtensions,
  });
}

class _$IngredientStrengthCopyWithImpl<T>
    implements $IngredientStrengthCopyWith<T> {
  final IngredientStrength _value;
  final T Function(IngredientStrength) _then;

  _$IngredientStrengthCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? presentationX = fhirSentinel,
    Object? textPresentation = fhirSentinel,
    Object? concentrationX = fhirSentinel,
    Object? textConcentration = fhirSentinel,
    Object? measurementPoint = fhirSentinel,
    Object? country = fhirSentinel,
    Object? referenceStrength = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      IngredientStrength(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        presentationX: identical(presentationX, fhirSentinel)
            ? _value.presentationX
            : presentationX as Ratio?,
        textPresentation: identical(textPresentation, fhirSentinel)
            ? _value.textPresentation
            : textPresentation as FhirString?,
        concentrationX: identical(concentrationX, fhirSentinel)
            ? _value.concentrationX
            : concentrationX as Ratio?,
        textConcentration: identical(textConcentration, fhirSentinel)
            ? _value.textConcentration
            : textConcentration as FhirString?,
        measurementPoint: identical(measurementPoint, fhirSentinel)
            ? _value.measurementPoint
            : measurementPoint as FhirString?,
        country: identical(country, fhirSentinel)
            ? _value.country
            : country as List<CodeableConcept>?,
        referenceStrength: identical(referenceStrength, fhirSentinel)
            ? _value.referenceStrength
            : referenceStrength as List<IngredientReferenceStrength>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension IngredientStrengthCopyWithExtension on IngredientStrength {
  $IngredientStrengthCopyWith<IngredientStrength> get copyWith =>
      _$IngredientStrengthCopyWithImpl<IngredientStrength>(
        this,
        (value) => value,
      );
}

abstract class $IngredientReferenceStrengthCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? substance,
    Ratio? strengthX,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    bool? disallowExtensions,
  });
}

class _$IngredientReferenceStrengthCopyWithImpl<T>
    implements $IngredientReferenceStrengthCopyWith<T> {
  final IngredientReferenceStrength _value;
  final T Function(IngredientReferenceStrength) _then;

  _$IngredientReferenceStrengthCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? substance = fhirSentinel,
    Object? strengthX = fhirSentinel,
    Object? measurementPoint = fhirSentinel,
    Object? country = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      IngredientReferenceStrength(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        substance: identical(substance, fhirSentinel)
            ? _value.substance
            : substance as CodeableReference?,
        strengthX: strengthX as Ratio? ?? _value.strengthX,
        measurementPoint: identical(measurementPoint, fhirSentinel)
            ? _value.measurementPoint
            : measurementPoint as FhirString?,
        country: identical(country, fhirSentinel)
            ? _value.country
            : country as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension IngredientReferenceStrengthCopyWithExtension
    on IngredientReferenceStrength {
  $IngredientReferenceStrengthCopyWith<IngredientReferenceStrength>
      get copyWith => _$IngredientReferenceStrengthCopyWithImpl<
              IngredientReferenceStrength>(
            this,
            (value) => value,
          );
}
