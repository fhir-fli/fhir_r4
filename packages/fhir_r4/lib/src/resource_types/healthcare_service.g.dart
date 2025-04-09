// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'healthcare_service.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $HealthcareServiceCopyWith<T>
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
    FhirBoolean? active,
    Reference? providedBy,
    List<CodeableConcept>? category,
    List<CodeableConcept>? type,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    FhirString? name,
    FhirString? comment,
    FhirMarkdown? extraDetails,
    Attachment? photo,
    List<ContactPoint>? telecom,
    List<Reference>? coverageArea,
    List<CodeableConcept>? serviceProvisionCode,
    List<HealthcareServiceEligibility>? eligibility,
    List<CodeableConcept>? program,
    List<CodeableConcept>? characteristic,
    List<CodeableConcept>? communication,
    List<CodeableConcept>? referralMethod,
    FhirBoolean? appointmentRequired,
    List<HealthcareServiceAvailableTime>? availableTime,
    List<HealthcareServiceNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    bool? disallowExtensions,
  });
}

class _$HealthcareServiceCopyWithImpl<T>
    implements $HealthcareServiceCopyWith<T> {
  final HealthcareService _value;
  final T Function(HealthcareService) _then;

  _$HealthcareServiceCopyWithImpl(this._value, this._then);

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
    Object? providedBy = fhirSentinel,
    Object? category = fhirSentinel,
    Object? type = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? location = fhirSentinel,
    Object? name = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? extraDetails = fhirSentinel,
    Object? photo = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? coverageArea = fhirSentinel,
    Object? serviceProvisionCode = fhirSentinel,
    Object? eligibility = fhirSentinel,
    Object? program = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? referralMethod = fhirSentinel,
    Object? appointmentRequired = fhirSentinel,
    Object? availableTime = fhirSentinel,
    Object? notAvailable = fhirSentinel,
    Object? availabilityExceptions = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      HealthcareService(
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
        providedBy: identical(providedBy, fhirSentinel)
            ? _value.providedBy
            : providedBy as Reference?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<Reference>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        extraDetails: identical(extraDetails, fhirSentinel)
            ? _value.extraDetails
            : extraDetails as FhirMarkdown?,
        photo: identical(photo, fhirSentinel)
            ? _value.photo
            : photo as Attachment?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        coverageArea: identical(coverageArea, fhirSentinel)
            ? _value.coverageArea
            : coverageArea as List<Reference>?,
        serviceProvisionCode: identical(serviceProvisionCode, fhirSentinel)
            ? _value.serviceProvisionCode
            : serviceProvisionCode as List<CodeableConcept>?,
        eligibility: identical(eligibility, fhirSentinel)
            ? _value.eligibility
            : eligibility as List<HealthcareServiceEligibility>?,
        program: identical(program, fhirSentinel)
            ? _value.program
            : program as List<CodeableConcept>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<CodeableConcept>?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<CodeableConcept>?,
        referralMethod: identical(referralMethod, fhirSentinel)
            ? _value.referralMethod
            : referralMethod as List<CodeableConcept>?,
        appointmentRequired: identical(appointmentRequired, fhirSentinel)
            ? _value.appointmentRequired
            : appointmentRequired as FhirBoolean?,
        availableTime: identical(availableTime, fhirSentinel)
            ? _value.availableTime
            : availableTime as List<HealthcareServiceAvailableTime>?,
        notAvailable: identical(notAvailable, fhirSentinel)
            ? _value.notAvailable
            : notAvailable as List<HealthcareServiceNotAvailable>?,
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

extension HealthcareServiceCopyWithExtension on HealthcareService {
  $HealthcareServiceCopyWith<HealthcareService> get copyWith =>
      _$HealthcareServiceCopyWithImpl<HealthcareService>(
        this,
        (value) => value,
      );
}

abstract class $HealthcareServiceEligibilityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirMarkdown? comment,
    bool? disallowExtensions,
  });
}

class _$HealthcareServiceEligibilityCopyWithImpl<T>
    implements $HealthcareServiceEligibilityCopyWith<T> {
  final HealthcareServiceEligibility _value;
  final T Function(HealthcareServiceEligibility) _then;

  _$HealthcareServiceEligibilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      HealthcareServiceEligibility(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension HealthcareServiceEligibilityCopyWithExtension
    on HealthcareServiceEligibility {
  $HealthcareServiceEligibilityCopyWith<HealthcareServiceEligibility>
      get copyWith => _$HealthcareServiceEligibilityCopyWithImpl<
              HealthcareServiceEligibility>(
            this,
            (value) => value,
          );
}

abstract class $HealthcareServiceAvailableTimeCopyWith<T>
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

class _$HealthcareServiceAvailableTimeCopyWithImpl<T>
    implements $HealthcareServiceAvailableTimeCopyWith<T> {
  final HealthcareServiceAvailableTime _value;
  final T Function(HealthcareServiceAvailableTime) _then;

  _$HealthcareServiceAvailableTimeCopyWithImpl(this._value, this._then);

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
      HealthcareServiceAvailableTime(
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

extension HealthcareServiceAvailableTimeCopyWithExtension
    on HealthcareServiceAvailableTime {
  $HealthcareServiceAvailableTimeCopyWith<HealthcareServiceAvailableTime>
      get copyWith => _$HealthcareServiceAvailableTimeCopyWithImpl<
              HealthcareServiceAvailableTime>(
            this,
            (value) => value,
          );
}

abstract class $HealthcareServiceNotAvailableCopyWith<T>
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

class _$HealthcareServiceNotAvailableCopyWithImpl<T>
    implements $HealthcareServiceNotAvailableCopyWith<T> {
  final HealthcareServiceNotAvailable _value;
  final T Function(HealthcareServiceNotAvailable) _then;

  _$HealthcareServiceNotAvailableCopyWithImpl(this._value, this._then);

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
      HealthcareServiceNotAvailable(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: description as FhirString? ?? _value.description,
        during:
            identical(during, fhirSentinel) ? _value.during : during as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension HealthcareServiceNotAvailableCopyWithExtension
    on HealthcareServiceNotAvailable {
  $HealthcareServiceNotAvailableCopyWith<HealthcareServiceNotAvailable>
      get copyWith => _$HealthcareServiceNotAvailableCopyWithImpl<
              HealthcareServiceNotAvailable>(
            this,
            (value) => value,
          );
}
