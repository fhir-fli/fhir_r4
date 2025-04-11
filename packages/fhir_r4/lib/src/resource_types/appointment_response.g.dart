// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'appointment_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AppointmentResponseCopyWith<T>
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
    Reference? appointment,
    FhirInstant? start,
    FhirInstant? end,
    List<CodeableConcept>? participantType,
    Reference? actor,
    ParticipationStatus? participantStatus,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$AppointmentResponseCopyWithImpl<T>
    implements $AppointmentResponseCopyWith<T> {
  final AppointmentResponse _value;
  final T Function(AppointmentResponse) _then;

  _$AppointmentResponseCopyWithImpl(this._value, this._then);

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
    Object? appointment = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? participantType = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? participantStatus = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AppointmentResponse(
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
        appointment: identical(appointment, fhirSentinel)
            ? _value.appointment
            : (appointment as Reference?) ?? _value.appointment,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInstant?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInstant?,
        participantType: identical(participantType, fhirSentinel)
            ? _value.participantType
            : participantType as List<CodeableConcept>?,
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        participantStatus: identical(participantStatus, fhirSentinel)
            ? _value.participantStatus
            : (participantStatus as ParticipationStatus?) ??
                _value.participantStatus,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
      ),
    );
  }
}

extension AppointmentResponseCopyWithExtension on AppointmentResponse {
  $AppointmentResponseCopyWith<AppointmentResponse> get copyWith =>
      _$AppointmentResponseCopyWithImpl<AppointmentResponse>(
        this,
        (value) => value,
      );
}
