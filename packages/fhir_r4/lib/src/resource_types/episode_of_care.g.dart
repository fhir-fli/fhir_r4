// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'episode_of_care.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EpisodeOfCareCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    EpisodeOfCareStatus? status,
    List<EpisodeOfCareStatusHistory>? statusHistory,
    List<CodeableConcept>? type,
    List<EpisodeOfCareDiagnosis>? diagnosis,
    Reference? patient,
    Reference? managingOrganization,
    Period? period,
    List<Reference>? referralRequest,
    Reference? careManager,
    List<Reference>? team,
    List<Reference>? account,
    bool? disallowExtensions,
  });
}

class _$EpisodeOfCareCopyWithImpl<T> implements $EpisodeOfCareCopyWith<T> {
  final EpisodeOfCare _value;
  final T Function(EpisodeOfCare) _then;

  _$EpisodeOfCareCopyWithImpl(this._value, this._then);

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
    Object? statusHistory = fhirSentinel,
    Object? type = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? period = fhirSentinel,
    Object? referralRequest = fhirSentinel,
    Object? careManager = fhirSentinel,
    Object? team = fhirSentinel,
    Object? account = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EpisodeOfCare(
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
            : (status as EpisodeOfCareStatus?) ?? _value.status,
        statusHistory: identical(statusHistory, fhirSentinel)
            ? _value.statusHistory
            : statusHistory as List<EpisodeOfCareStatusHistory>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<EpisodeOfCareDiagnosis>?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        referralRequest: identical(referralRequest, fhirSentinel)
            ? _value.referralRequest
            : referralRequest as List<Reference>?,
        careManager: identical(careManager, fhirSentinel)
            ? _value.careManager
            : careManager as Reference?,
        team: identical(team, fhirSentinel)
            ? _value.team
            : team as List<Reference>?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as List<Reference>?,
      ),
    );
  }
}

extension EpisodeOfCareCopyWithExtension on EpisodeOfCare {
  $EpisodeOfCareCopyWith<EpisodeOfCare> get copyWith =>
      _$EpisodeOfCareCopyWithImpl<EpisodeOfCare>(
        this,
        (value) => value,
      );
}

abstract class $EpisodeOfCareStatusHistoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EpisodeOfCareStatus? status,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EpisodeOfCareStatusHistoryCopyWithImpl<T>
    implements $EpisodeOfCareStatusHistoryCopyWith<T> {
  final EpisodeOfCareStatusHistory _value;
  final T Function(EpisodeOfCareStatusHistory) _then;

  _$EpisodeOfCareStatusHistoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? status = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EpisodeOfCareStatusHistory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as EpisodeOfCareStatus?) ?? _value.status,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Period?) ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EpisodeOfCareStatusHistoryCopyWithExtension
    on EpisodeOfCareStatusHistory {
  $EpisodeOfCareStatusHistoryCopyWith<EpisodeOfCareStatusHistory>
      get copyWith =>
          _$EpisodeOfCareStatusHistoryCopyWithImpl<EpisodeOfCareStatusHistory>(
            this,
            (value) => value,
          );
}

abstract class $EpisodeOfCareDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? role,
    FhirPositiveInt? rank,
    bool? disallowExtensions,
  });
}

class _$EpisodeOfCareDiagnosisCopyWithImpl<T>
    implements $EpisodeOfCareDiagnosisCopyWith<T> {
  final EpisodeOfCareDiagnosis _value;
  final T Function(EpisodeOfCareDiagnosis) _then;

  _$EpisodeOfCareDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? role = fhirSentinel,
    Object? rank = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EpisodeOfCareDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : (condition as Reference?) ?? _value.condition,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        rank: identical(rank, fhirSentinel)
            ? _value.rank
            : rank as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EpisodeOfCareDiagnosisCopyWithExtension on EpisodeOfCareDiagnosis {
  $EpisodeOfCareDiagnosisCopyWith<EpisodeOfCareDiagnosis> get copyWith =>
      _$EpisodeOfCareDiagnosisCopyWithImpl<EpisodeOfCareDiagnosis>(
        this,
        (value) => value,
      );
}
