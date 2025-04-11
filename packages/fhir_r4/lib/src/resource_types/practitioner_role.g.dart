// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'practitioner_role.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PractitionerRoleCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Period? period,
    Reference? practitioner,
    Reference? organization,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<PractitionerRoleAvailableTime>? availableTime,
    List<PractitionerRoleNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    bool? disallowExtensions,
  });
}

class _$PractitionerRoleCopyWithImpl<T>
    implements $PractitionerRoleCopyWith<T> {
  final PractitionerRole _value;
  final T Function(PractitionerRole) _then;

  _$PractitionerRoleCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? practitioner = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? code = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? location = fhirSentinel,
    Object? healthcareService = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? availableTime = fhirSentinel,
    Object? notAvailable = fhirSentinel,
    Object? availabilityExceptions = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PractitionerRole(
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
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        practitioner: identical(practitioner, fhirSentinel)
            ? _value.practitioner
            : practitioner as Reference?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<Reference>?,
        healthcareService: identical(healthcareService, fhirSentinel)
            ? _value.healthcareService
            : healthcareService as List<Reference>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        availableTime: identical(availableTime, fhirSentinel)
            ? _value.availableTime
            : availableTime as List<PractitionerRoleAvailableTime>?,
        notAvailable: identical(notAvailable, fhirSentinel)
            ? _value.notAvailable
            : notAvailable as List<PractitionerRoleNotAvailable>?,
        availabilityExceptions: identical(availabilityExceptions, fhirSentinel)
            ? _value.availabilityExceptions
            : availabilityExceptions as FhirString?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
      ),
    );
  }
}

extension PractitionerRoleCopyWithExtension on PractitionerRole {
  $PractitionerRoleCopyWith<PractitionerRole> get copyWith =>
      _$PractitionerRoleCopyWithImpl<PractitionerRole>(
        this,
        (value) => value,
      );
}

abstract class $PractitionerRoleAvailableTimeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
    bool? disallowExtensions,
  });
}

class _$PractitionerRoleAvailableTimeCopyWithImpl<T>
    implements $PractitionerRoleAvailableTimeCopyWith<T> {
  final PractitionerRoleAvailableTime _value;
  final T Function(PractitionerRoleAvailableTime) _then;

  _$PractitionerRoleAvailableTimeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? daysOfWeek = fhirSentinel,
    Object? allDay = fhirSentinel,
    Object? availableStartTime = fhirSentinel,
    Object? availableEndTime = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PractitionerRoleAvailableTime(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        daysOfWeek: identical(daysOfWeek, fhirSentinel)
            ? _value.daysOfWeek
            : daysOfWeek as List<DaysOfWeek>?,
        allDay: identical(allDay, fhirSentinel)
            ? _value.allDay
            : allDay as FhirBoolean?,
        availableStartTime: identical(availableStartTime, fhirSentinel)
            ? _value.availableStartTime
            : availableStartTime as FhirTime?,
        availableEndTime: identical(availableEndTime, fhirSentinel)
            ? _value.availableEndTime
            : availableEndTime as FhirTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PractitionerRoleAvailableTimeCopyWithExtension
    on PractitionerRoleAvailableTime {
  $PractitionerRoleAvailableTimeCopyWith<PractitionerRoleAvailableTime>
      get copyWith => _$PractitionerRoleAvailableTimeCopyWithImpl<
              PractitionerRoleAvailableTime>(
            this,
            (value) => value,
          );
}

abstract class $PractitionerRoleNotAvailableCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Period? during,
    bool? disallowExtensions,
  });
}

class _$PractitionerRoleNotAvailableCopyWithImpl<T>
    implements $PractitionerRoleNotAvailableCopyWith<T> {
  final PractitionerRoleNotAvailable _value;
  final T Function(PractitionerRoleNotAvailable) _then;

  _$PractitionerRoleNotAvailableCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? during = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PractitionerRoleNotAvailable(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : (description as FhirString?) ?? _value.description,
        during:
            identical(during, fhirSentinel) ? _value.during : during as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PractitionerRoleNotAvailableCopyWithExtension
    on PractitionerRoleNotAvailable {
  $PractitionerRoleNotAvailableCopyWith<PractitionerRoleNotAvailable>
      get copyWith => _$PractitionerRoleNotAvailableCopyWithImpl<
              PractitionerRoleNotAvailable>(
            this,
            (value) => value,
          );
}
