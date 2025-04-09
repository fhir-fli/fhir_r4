// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'schedule.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ScheduleCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirBoolean? active,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    List<Reference>? actor,
    Period? planningHorizon,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$ScheduleCopyWithImpl<T> implements $ScheduleCopyWith<T> {
  final Schedule _value;
  final T Function(Schedule) _then;

  _$ScheduleCopyWithImpl(this._value, this._then);

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
    Object? active = fhirSentinel,
    Object? serviceCategory = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? planningHorizon = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Schedule(
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
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        serviceCategory: identical(serviceCategory, fhirSentinel)
            ? _value.serviceCategory
            : serviceCategory as List<CodeableConcept>?,
        serviceType: identical(serviceType, fhirSentinel)
            ? _value.serviceType
            : serviceType as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        actor: actor as List<Reference>? ?? _value.actor,
        planningHorizon: identical(planningHorizon, fhirSentinel)
            ? _value.planningHorizon
            : planningHorizon as Period?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
      ),
    );
  }
}

extension ScheduleCopyWithExtension on Schedule {
  $ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(
        this,
        (value) => value,
      );
}
