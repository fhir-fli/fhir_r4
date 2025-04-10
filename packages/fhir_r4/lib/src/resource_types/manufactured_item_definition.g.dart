// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'manufactured_item_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ManufacturedItemDefinitionCopyWith<T>
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
    PublicationStatus? status,
    CodeableConcept? manufacturedDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? manufacturer,
    List<CodeableConcept>? ingredient,
    List<ManufacturedItemDefinitionProperty>? property,
    bool? disallowExtensions,
  });
}

class _$ManufacturedItemDefinitionCopyWithImpl<T>
    implements $ManufacturedItemDefinitionCopyWith<T> {
  final ManufacturedItemDefinition _value;
  final T Function(ManufacturedItemDefinition) _then;

  _$ManufacturedItemDefinitionCopyWithImpl(this._value, this._then);

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
    Object? manufacturedDoseForm = fhirSentinel,
    Object? unitOfPresentation = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? property = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ManufacturedItemDefinition(
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
            : (status as PublicationStatus?) ?? _value.status,
        manufacturedDoseForm: identical(manufacturedDoseForm, fhirSentinel)
            ? _value.manufacturedDoseForm
            : (manufacturedDoseForm as CodeableConcept?) ??
                _value.manufacturedDoseForm,
        unitOfPresentation: identical(unitOfPresentation, fhirSentinel)
            ? _value.unitOfPresentation
            : unitOfPresentation as CodeableConcept?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<CodeableConcept>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ManufacturedItemDefinitionProperty>?,
      ),
    );
  }
}

extension ManufacturedItemDefinitionCopyWithExtension
    on ManufacturedItemDefinition {
  $ManufacturedItemDefinitionCopyWith<ManufacturedItemDefinition>
      get copyWith =>
          _$ManufacturedItemDefinitionCopyWithImpl<ManufacturedItemDefinition>(
            this,
            (value) => value,
          );
}

abstract class $ManufacturedItemDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$ManufacturedItemDefinitionPropertyCopyWithImpl<T>
    implements $ManufacturedItemDefinitionPropertyCopyWith<T> {
  final ManufacturedItemDefinitionProperty _value;
  final T Function(ManufacturedItemDefinitionProperty) _then;

  _$ManufacturedItemDefinitionPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ManufacturedItemDefinitionProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ManufacturedItemDefinitionPropertyCopyWithExtension
    on ManufacturedItemDefinitionProperty {
  $ManufacturedItemDefinitionPropertyCopyWith<
          ManufacturedItemDefinitionProperty>
      get copyWith => _$ManufacturedItemDefinitionPropertyCopyWithImpl<
              ManufacturedItemDefinitionProperty>(
            this,
            (value) => value,
          );
}
