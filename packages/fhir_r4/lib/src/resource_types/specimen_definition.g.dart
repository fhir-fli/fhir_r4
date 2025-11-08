// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'specimen_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SpecimenDefinitionCopyWith<T>
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
    Identifier? identifier,
    CodeableConcept? typeCollected,
    List<CodeableConcept>? patientPreparation,
    FhirString? timeAspect,
    List<CodeableConcept>? collection,
    List<SpecimenDefinitionTypeTested>? typeTested,
    bool? disallowExtensions,
  });
}

class _$SpecimenDefinitionCopyWithImpl<T>
    implements $SpecimenDefinitionCopyWith<T> {
  final SpecimenDefinition _value;
  final T Function(SpecimenDefinition) _then;

  _$SpecimenDefinitionCopyWithImpl(this._value, this._then);

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
    Object? typeCollected = fhirSentinel,
    Object? patientPreparation = fhirSentinel,
    Object? timeAspect = fhirSentinel,
    Object? collection = fhirSentinel,
    Object? typeTested = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenDefinition(
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
        typeCollected: identical(typeCollected, fhirSentinel)
            ? _value.typeCollected
            : typeCollected as CodeableConcept?,
        patientPreparation: identical(patientPreparation, fhirSentinel)
            ? _value.patientPreparation
            : patientPreparation as List<CodeableConcept>?,
        timeAspect: identical(timeAspect, fhirSentinel)
            ? _value.timeAspect
            : timeAspect as FhirString?,
        collection: identical(collection, fhirSentinel)
            ? _value.collection
            : collection as List<CodeableConcept>?,
        typeTested: identical(typeTested, fhirSentinel)
            ? _value.typeTested
            : typeTested as List<SpecimenDefinitionTypeTested>?,
      ),
    );
  }
}

extension SpecimenDefinitionCopyWithExtension on SpecimenDefinition {
  $SpecimenDefinitionCopyWith<SpecimenDefinition> get copyWith =>
      _$SpecimenDefinitionCopyWithImpl<SpecimenDefinition>(
        this,
        (value) => value,
      );
}

abstract class $SpecimenDefinitionTypeTestedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? isDerived,
    CodeableConcept? type,
    SpecimenContainedPreference? preference,
    SpecimenDefinitionContainer? container,
    FhirString? requirement,
    FhirDuration? retentionTime,
    List<CodeableConcept>? rejectionCriterion,
    List<SpecimenDefinitionHandling>? handling,
    bool? disallowExtensions,
  });
}

class _$SpecimenDefinitionTypeTestedCopyWithImpl<T>
    implements $SpecimenDefinitionTypeTestedCopyWith<T> {
  final SpecimenDefinitionTypeTested _value;
  final T Function(SpecimenDefinitionTypeTested) _then;

  _$SpecimenDefinitionTypeTestedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? isDerived = fhirSentinel,
    Object? type = fhirSentinel,
    Object? preference = fhirSentinel,
    Object? container = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? retentionTime = fhirSentinel,
    Object? rejectionCriterion = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenDefinitionTypeTested(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        isDerived: identical(isDerived, fhirSentinel)
            ? _value.isDerived
            : isDerived as FhirBoolean?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        preference: identical(preference, fhirSentinel)
            ? _value.preference
            : (preference as SpecimenContainedPreference?) ?? _value.preference,
        container: identical(container, fhirSentinel)
            ? _value.container
            : container as SpecimenDefinitionContainer?,
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : requirement as FhirString?,
        retentionTime: identical(retentionTime, fhirSentinel)
            ? _value.retentionTime
            : retentionTime as FhirDuration?,
        rejectionCriterion: identical(rejectionCriterion, fhirSentinel)
            ? _value.rejectionCriterion
            : rejectionCriterion as List<CodeableConcept>?,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as List<SpecimenDefinitionHandling>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenDefinitionTypeTestedCopyWithExtension
    on SpecimenDefinitionTypeTested {
  $SpecimenDefinitionTypeTestedCopyWith<SpecimenDefinitionTypeTested>
      get copyWith => _$SpecimenDefinitionTypeTestedCopyWithImpl<
              SpecimenDefinitionTypeTested>(
            this,
            (value) => value,
          );
}

abstract class $SpecimenDefinitionContainerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? material,
    CodeableConcept? type,
    CodeableConcept? cap,
    FhirString? description,
    Quantity? capacity,
    MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX,
    List<SpecimenDefinitionAdditive>? additive,
    FhirString? preparation,
    bool? disallowExtensions,
  });
}

class _$SpecimenDefinitionContainerCopyWithImpl<T>
    implements $SpecimenDefinitionContainerCopyWith<T> {
  final SpecimenDefinitionContainer _value;
  final T Function(SpecimenDefinitionContainer) _then;

  _$SpecimenDefinitionContainerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? material = fhirSentinel,
    Object? type = fhirSentinel,
    Object? cap = fhirSentinel,
    Object? description = fhirSentinel,
    Object? capacity = fhirSentinel,
    Object? minimumVolumeX = fhirSentinel,
    Object? additive = fhirSentinel,
    Object? preparation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenDefinitionContainer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        material: identical(material, fhirSentinel)
            ? _value.material
            : material as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        cap:
            identical(cap, fhirSentinel) ? _value.cap : cap as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        capacity: identical(capacity, fhirSentinel)
            ? _value.capacity
            : capacity as Quantity?,
        minimumVolumeX: identical(minimumVolumeX, fhirSentinel)
            ? _value.minimumVolumeX
            : minimumVolumeX as MinimumVolumeXSpecimenDefinitionContainer?,
        additive: identical(additive, fhirSentinel)
            ? _value.additive
            : additive as List<SpecimenDefinitionAdditive>?,
        preparation: identical(preparation, fhirSentinel)
            ? _value.preparation
            : preparation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenDefinitionContainerCopyWithExtension
    on SpecimenDefinitionContainer {
  $SpecimenDefinitionContainerCopyWith<SpecimenDefinitionContainer>
      get copyWith => _$SpecimenDefinitionContainerCopyWithImpl<
              SpecimenDefinitionContainer>(
            this,
            (value) => value,
          );
}

abstract class $SpecimenDefinitionAdditiveCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AdditiveXSpecimenDefinitionAdditive? additiveX,
    bool? disallowExtensions,
  });
}

class _$SpecimenDefinitionAdditiveCopyWithImpl<T>
    implements $SpecimenDefinitionAdditiveCopyWith<T> {
  final SpecimenDefinitionAdditive _value;
  final T Function(SpecimenDefinitionAdditive) _then;

  _$SpecimenDefinitionAdditiveCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? additiveX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenDefinitionAdditive(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        additiveX: identical(additiveX, fhirSentinel)
            ? _value.additiveX
            : (additiveX as AdditiveXSpecimenDefinitionAdditive?) ??
                _value.additiveX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenDefinitionAdditiveCopyWithExtension
    on SpecimenDefinitionAdditive {
  $SpecimenDefinitionAdditiveCopyWith<SpecimenDefinitionAdditive>
      get copyWith =>
          _$SpecimenDefinitionAdditiveCopyWithImpl<SpecimenDefinitionAdditive>(
            this,
            (value) => value,
          );
}

abstract class $SpecimenDefinitionHandlingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? temperatureQualifier,
    Range? temperatureRange,
    FhirDuration? maxDuration,
    FhirString? instruction,
    bool? disallowExtensions,
  });
}

class _$SpecimenDefinitionHandlingCopyWithImpl<T>
    implements $SpecimenDefinitionHandlingCopyWith<T> {
  final SpecimenDefinitionHandling _value;
  final T Function(SpecimenDefinitionHandling) _then;

  _$SpecimenDefinitionHandlingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? temperatureQualifier = fhirSentinel,
    Object? temperatureRange = fhirSentinel,
    Object? maxDuration = fhirSentinel,
    Object? instruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenDefinitionHandling(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        temperatureQualifier: identical(temperatureQualifier, fhirSentinel)
            ? _value.temperatureQualifier
            : temperatureQualifier as CodeableConcept?,
        temperatureRange: identical(temperatureRange, fhirSentinel)
            ? _value.temperatureRange
            : temperatureRange as Range?,
        maxDuration: identical(maxDuration, fhirSentinel)
            ? _value.maxDuration
            : maxDuration as FhirDuration?,
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

extension SpecimenDefinitionHandlingCopyWithExtension
    on SpecimenDefinitionHandling {
  $SpecimenDefinitionHandlingCopyWith<SpecimenDefinitionHandling>
      get copyWith =>
          _$SpecimenDefinitionHandlingCopyWithImpl<SpecimenDefinitionHandling>(
            this,
            (value) => value,
          );
}
