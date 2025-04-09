// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FHIRSubstanceStatus? status,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    FhirString? description,
    List<SubstanceInstance>? instance,
    List<SubstanceIngredient>? ingredient,
    bool? disallowExtensions,
  });
}

class _$SubstanceCopyWithImpl<T> implements $SubstanceCopyWith<T> {
  final Substance _value;
  final T Function(Substance) _then;

  _$SubstanceCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Substance(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as FHIRSubstanceStatus?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: code as CodeableConcept? ?? _value.code,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<SubstanceInstance>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<SubstanceIngredient>?,
      ),
    );
  }
}

extension SubstanceCopyWithExtension on Substance {
  $SubstanceCopyWith<Substance> get copyWith =>
      _$SubstanceCopyWithImpl<Substance>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirDateTime? expiry,
    Quantity? quantity,
    bool? disallowExtensions,
  });
}

class _$SubstanceInstanceCopyWithImpl<T>
    implements $SubstanceInstanceCopyWith<T> {
  final SubstanceInstance _value;
  final T Function(SubstanceInstance) _then;

  _$SubstanceInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? expiry = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        expiry: identical(expiry, fhirSentinel)
            ? _value.expiry
            : expiry as FhirDateTime?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceInstanceCopyWithExtension on SubstanceInstance {
  $SubstanceInstanceCopyWith<SubstanceInstance> get copyWith =>
      _$SubstanceInstanceCopyWithImpl<SubstanceInstance>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceIngredientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? quantity,
    CodeableConcept? substanceX,
    bool? disallowExtensions,
  });
}

class _$SubstanceIngredientCopyWithImpl<T>
    implements $SubstanceIngredientCopyWith<T> {
  final SubstanceIngredient _value;
  final T Function(SubstanceIngredient) _then;

  _$SubstanceIngredientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? substanceX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceIngredient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Ratio?,
        substanceX: substanceX as CodeableConcept? ?? _value.substanceX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceIngredientCopyWithExtension on SubstanceIngredient {
  $SubstanceIngredientCopyWith<SubstanceIngredient> get copyWith =>
      _$SubstanceIngredientCopyWithImpl<SubstanceIngredient>(
        this,
        (value) => value,
      );
}
