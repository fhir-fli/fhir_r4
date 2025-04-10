// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'slot.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SlotCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    Reference? schedule,
    SlotStatus? status,
    FhirInstant? start,
    FhirInstant? end,
    FhirBoolean? overbooked,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$SlotCopyWithImpl<T> implements $SlotCopyWith<T> {
  final Slot _value;
  final T Function(Slot) _then;

  _$SlotCopyWithImpl(this._value, this._then);

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
    Object? serviceCategory = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? appointmentType = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? status = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? overbooked = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Slot(
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
        serviceCategory: identical(serviceCategory, fhirSentinel)
            ? _value.serviceCategory
            : serviceCategory as List<CodeableConcept>?,
        serviceType: identical(serviceType, fhirSentinel)
            ? _value.serviceType
            : serviceType as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        appointmentType: identical(appointmentType, fhirSentinel)
            ? _value.appointmentType
            : appointmentType as CodeableConcept?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : (schedule as Reference?) ?? _value.schedule,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as SlotStatus?) ?? _value.status,
        start: identical(start, fhirSentinel)
            ? _value.start
            : (start as FhirInstant?) ?? _value.start,
        end: identical(end, fhirSentinel)
            ? _value.end
            : (end as FhirInstant?) ?? _value.end,
        overbooked: identical(overbooked, fhirSentinel)
            ? _value.overbooked
            : overbooked as FhirBoolean?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
      ),
    );
  }
}

extension SlotCopyWithExtension on Slot {
  $SlotCopyWith<Slot> get copyWith => _$SlotCopyWithImpl<Slot>(
        this,
        (value) => value,
      );
}
