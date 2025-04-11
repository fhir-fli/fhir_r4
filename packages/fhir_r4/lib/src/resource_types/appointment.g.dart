// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'appointment.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AppointmentCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    AppointmentStatus? status,
    CodeableConcept? cancelationReason,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirUnsignedInt? priority,
    FhirString? description,
    List<Reference>? supportingInformation,
    FhirInstant? start,
    FhirInstant? end,
    FhirPositiveInt? minutesDuration,
    List<Reference>? slot,
    FhirDateTime? created,
    FhirString? comment,
    FhirString? patientInstruction,
    List<Reference>? basedOn,
    List<AppointmentParticipant>? participant,
    List<Period>? requestedPeriod,
    bool? disallowExtensions,
  });
}

class _$AppointmentCopyWithImpl<T> implements $AppointmentCopyWith<T> {
  final Appointment _value;
  final T Function(Appointment) _then;

  _$AppointmentCopyWithImpl(this._value, this._then);

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
    Object? cancelationReason = fhirSentinel,
    Object? serviceCategory = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? appointmentType = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? description = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? minutesDuration = fhirSentinel,
    Object? slot = fhirSentinel,
    Object? created = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? patientInstruction = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? requestedPeriod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Appointment(
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
            : (status as AppointmentStatus?) ?? _value.status,
        cancelationReason: identical(cancelationReason, fhirSentinel)
            ? _value.cancelationReason
            : cancelationReason as CodeableConcept?,
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
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as FhirUnsignedInt?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInstant?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInstant?,
        minutesDuration: identical(minutesDuration, fhirSentinel)
            ? _value.minutesDuration
            : minutesDuration as FhirPositiveInt?,
        slot: identical(slot, fhirSentinel)
            ? _value.slot
            : slot as List<Reference>?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        patientInstruction: identical(patientInstruction, fhirSentinel)
            ? _value.patientInstruction
            : patientInstruction as FhirString?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : (participant as List<AppointmentParticipant>?) ??
                _value.participant,
        requestedPeriod: identical(requestedPeriod, fhirSentinel)
            ? _value.requestedPeriod
            : requestedPeriod as List<Period>?,
      ),
    );
  }
}

extension AppointmentCopyWithExtension on Appointment {
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(
        this,
        (value) => value,
      );
}

abstract class $AppointmentParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Reference? actor,
    ParticipantRequired? required_,
    ParticipationStatus? status,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$AppointmentParticipantCopyWithImpl<T>
    implements $AppointmentParticipantCopyWith<T> {
  final AppointmentParticipant _value;
  final T Function(AppointmentParticipant) _then;

  _$AppointmentParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? required_ = fhirSentinel,
    Object? status = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentParticipant(
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
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        required_: identical(required_, fhirSentinel)
            ? _value.required_
            : required_ as ParticipantRequired?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ParticipationStatus?) ?? _value.status,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AppointmentParticipantCopyWithExtension on AppointmentParticipant {
  $AppointmentParticipantCopyWith<AppointmentParticipant> get copyWith =>
      _$AppointmentParticipantCopyWithImpl<AppointmentParticipant>(
        this,
        (value) => value,
      );
}
