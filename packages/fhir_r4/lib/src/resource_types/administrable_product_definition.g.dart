// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'administrable_product_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AdministrableProductDefinitionCopyWith<T>
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
    List<Reference>? formOf,
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    List<AdministrableProductDefinitionRouteOfAdministration>?
        routeOfAdministration,
    bool? disallowExtensions,
  });
}

class _$AdministrableProductDefinitionCopyWithImpl<T>
    implements $AdministrableProductDefinitionCopyWith<T> {
  final AdministrableProductDefinition _value;
  final T Function(AdministrableProductDefinition) _then;

  _$AdministrableProductDefinitionCopyWithImpl(this._value, this._then);

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
    Object? formOf = fhirSentinel,
    Object? administrableDoseForm = fhirSentinel,
    Object? unitOfPresentation = fhirSentinel,
    Object? producedFrom = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? device = fhirSentinel,
    Object? property = fhirSentinel,
    Object? routeOfAdministration = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdministrableProductDefinition(
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
        formOf: identical(formOf, fhirSentinel)
            ? _value.formOf
            : formOf as List<Reference>?,
        administrableDoseForm: identical(administrableDoseForm, fhirSentinel)
            ? _value.administrableDoseForm
            : administrableDoseForm as CodeableConcept?,
        unitOfPresentation: identical(unitOfPresentation, fhirSentinel)
            ? _value.unitOfPresentation
            : unitOfPresentation as CodeableConcept?,
        producedFrom: identical(producedFrom, fhirSentinel)
            ? _value.producedFrom
            : producedFrom as List<Reference>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<CodeableConcept>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<AdministrableProductDefinitionProperty>?,
        routeOfAdministration: identical(routeOfAdministration, fhirSentinel)
            ? _value.routeOfAdministration
            : (routeOfAdministration as List<
                    AdministrableProductDefinitionRouteOfAdministration>?) ??
                _value.routeOfAdministration,
      ),
    );
  }
}

extension AdministrableProductDefinitionCopyWithExtension
    on AdministrableProductDefinition {
  $AdministrableProductDefinitionCopyWith<AdministrableProductDefinition>
      get copyWith => _$AdministrableProductDefinitionCopyWithImpl<
              AdministrableProductDefinition>(
            this,
            (value) => value,
          );
}

abstract class $AdministrableProductDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXAdministrableProductDefinitionProperty? valueX,
    CodeableConcept? status,
    bool? disallowExtensions,
  });
}

class _$AdministrableProductDefinitionPropertyCopyWithImpl<T>
    implements $AdministrableProductDefinitionPropertyCopyWith<T> {
  final AdministrableProductDefinitionProperty _value;
  final T Function(AdministrableProductDefinitionProperty) _then;

  _$AdministrableProductDefinitionPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? status = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdministrableProductDefinitionProperty(
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
            : valueX as ValueXAdministrableProductDefinitionProperty?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdministrableProductDefinitionPropertyCopyWithExtension
    on AdministrableProductDefinitionProperty {
  $AdministrableProductDefinitionPropertyCopyWith<
          AdministrableProductDefinitionProperty>
      get copyWith => _$AdministrableProductDefinitionPropertyCopyWithImpl<
              AdministrableProductDefinitionProperty>(
            this,
            (value) => value,
          );
}

abstract class $AdministrableProductDefinitionRouteOfAdministrationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? firstDose,
    Quantity? maxSingleDose,
    Quantity? maxDosePerDay,
    Ratio? maxDosePerTreatmentPeriod,
    FhirDuration? maxTreatmentPeriod,
    List<AdministrableProductDefinitionTargetSpecies>? targetSpecies,
    bool? disallowExtensions,
  });
}

class _$AdministrableProductDefinitionRouteOfAdministrationCopyWithImpl<T>
    implements $AdministrableProductDefinitionRouteOfAdministrationCopyWith<T> {
  final AdministrableProductDefinitionRouteOfAdministration _value;
  final T Function(AdministrableProductDefinitionRouteOfAdministration) _then;

  _$AdministrableProductDefinitionRouteOfAdministrationCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? firstDose = fhirSentinel,
    Object? maxSingleDose = fhirSentinel,
    Object? maxDosePerDay = fhirSentinel,
    Object? maxDosePerTreatmentPeriod = fhirSentinel,
    Object? maxTreatmentPeriod = fhirSentinel,
    Object? targetSpecies = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdministrableProductDefinitionRouteOfAdministration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        firstDose: identical(firstDose, fhirSentinel)
            ? _value.firstDose
            : firstDose as Quantity?,
        maxSingleDose: identical(maxSingleDose, fhirSentinel)
            ? _value.maxSingleDose
            : maxSingleDose as Quantity?,
        maxDosePerDay: identical(maxDosePerDay, fhirSentinel)
            ? _value.maxDosePerDay
            : maxDosePerDay as Quantity?,
        maxDosePerTreatmentPeriod:
            identical(maxDosePerTreatmentPeriod, fhirSentinel)
                ? _value.maxDosePerTreatmentPeriod
                : maxDosePerTreatmentPeriod as Ratio?,
        maxTreatmentPeriod: identical(maxTreatmentPeriod, fhirSentinel)
            ? _value.maxTreatmentPeriod
            : maxTreatmentPeriod as FhirDuration?,
        targetSpecies: identical(targetSpecies, fhirSentinel)
            ? _value.targetSpecies
            : targetSpecies
                as List<AdministrableProductDefinitionTargetSpecies>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdministrableProductDefinitionRouteOfAdministrationCopyWithExtension
    on AdministrableProductDefinitionRouteOfAdministration {
  $AdministrableProductDefinitionRouteOfAdministrationCopyWith<
          AdministrableProductDefinitionRouteOfAdministration>
      get copyWith =>
          _$AdministrableProductDefinitionRouteOfAdministrationCopyWithImpl<
              AdministrableProductDefinitionRouteOfAdministration>(
            this,
            (value) => value,
          );
}

abstract class $AdministrableProductDefinitionTargetSpeciesCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
    bool? disallowExtensions,
  });
}

class _$AdministrableProductDefinitionTargetSpeciesCopyWithImpl<T>
    implements $AdministrableProductDefinitionTargetSpeciesCopyWith<T> {
  final AdministrableProductDefinitionTargetSpecies _value;
  final T Function(AdministrableProductDefinitionTargetSpecies) _then;

  _$AdministrableProductDefinitionTargetSpeciesCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? withdrawalPeriod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdministrableProductDefinitionTargetSpecies(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        withdrawalPeriod: identical(withdrawalPeriod, fhirSentinel)
            ? _value.withdrawalPeriod
            : withdrawalPeriod
                as List<AdministrableProductDefinitionWithdrawalPeriod>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdministrableProductDefinitionTargetSpeciesCopyWithExtension
    on AdministrableProductDefinitionTargetSpecies {
  $AdministrableProductDefinitionTargetSpeciesCopyWith<
          AdministrableProductDefinitionTargetSpecies>
      get copyWith => _$AdministrableProductDefinitionTargetSpeciesCopyWithImpl<
              AdministrableProductDefinitionTargetSpecies>(
            this,
            (value) => value,
          );
}

abstract class $AdministrableProductDefinitionWithdrawalPeriodCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? tissue,
    Quantity? value,
    FhirString? supportingInformation,
    bool? disallowExtensions,
  });
}

class _$AdministrableProductDefinitionWithdrawalPeriodCopyWithImpl<T>
    implements $AdministrableProductDefinitionWithdrawalPeriodCopyWith<T> {
  final AdministrableProductDefinitionWithdrawalPeriod _value;
  final T Function(AdministrableProductDefinitionWithdrawalPeriod) _then;

  _$AdministrableProductDefinitionWithdrawalPeriodCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? tissue = fhirSentinel,
    Object? value = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdministrableProductDefinitionWithdrawalPeriod(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        tissue: identical(tissue, fhirSentinel)
            ? _value.tissue
            : (tissue as CodeableConcept?) ?? _value.tissue,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as Quantity?) ?? _value.value,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdministrableProductDefinitionWithdrawalPeriodCopyWithExtension
    on AdministrableProductDefinitionWithdrawalPeriod {
  $AdministrableProductDefinitionWithdrawalPeriodCopyWith<
          AdministrableProductDefinitionWithdrawalPeriod>
      get copyWith =>
          _$AdministrableProductDefinitionWithdrawalPeriodCopyWithImpl<
              AdministrableProductDefinitionWithdrawalPeriod>(
            this,
            (value) => value,
          );
}
