// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'encounter.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EncounterCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    EncounterStatus? status,
    List<EncounterStatusHistory>? statusHistory,
    Coding? class_,
    List<EncounterClassHistory>? classHistory,
    List<CodeableConcept>? type,
    CodeableConcept? serviceType,
    CodeableConcept? priority,
    Reference? subject,
    List<Reference>? episodeOfCare,
    List<Reference>? basedOn,
    List<EncounterParticipant>? participant,
    List<Reference>? appointment,
    Period? period,
    FhirDuration? length,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<EncounterDiagnosis>? diagnosis,
    List<Reference>? account,
    EncounterHospitalization? hospitalization,
    List<EncounterLocation>? location,
    Reference? serviceProvider,
    Reference? partOf,
    bool? disallowExtensions,
  });
}

class _$EncounterCopyWithImpl<T> implements $EncounterCopyWith<T> {
  final Encounter _value;
  final T Function(Encounter) _then;

  _$EncounterCopyWithImpl(this._value, this._then);

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
    Object? class_ = fhirSentinel,
    Object? classHistory = fhirSentinel,
    Object? type = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? episodeOfCare = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? appointment = fhirSentinel,
    Object? period = fhirSentinel,
    Object? length = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? account = fhirSentinel,
    Object? hospitalization = fhirSentinel,
    Object? location = fhirSentinel,
    Object? serviceProvider = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Encounter(
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
        status: status as EncounterStatus? ?? _value.status,
        statusHistory: identical(statusHistory, fhirSentinel)
            ? _value.statusHistory
            : statusHistory as List<EncounterStatusHistory>?,
        class_: class_ as Coding? ?? _value.class_,
        classHistory: identical(classHistory, fhirSentinel)
            ? _value.classHistory
            : classHistory as List<EncounterClassHistory>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        serviceType: identical(serviceType, fhirSentinel)
            ? _value.serviceType
            : serviceType as CodeableConcept?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        episodeOfCare: identical(episodeOfCare, fhirSentinel)
            ? _value.episodeOfCare
            : episodeOfCare as List<Reference>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<EncounterParticipant>?,
        appointment: identical(appointment, fhirSentinel)
            ? _value.appointment
            : appointment as List<Reference>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        length: identical(length, fhirSentinel)
            ? _value.length
            : length as FhirDuration?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<EncounterDiagnosis>?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as List<Reference>?,
        hospitalization: identical(hospitalization, fhirSentinel)
            ? _value.hospitalization
            : hospitalization as EncounterHospitalization?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<EncounterLocation>?,
        serviceProvider: identical(serviceProvider, fhirSentinel)
            ? _value.serviceProvider
            : serviceProvider as Reference?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as Reference?,
      ),
    );
  }
}

extension EncounterCopyWithExtension on Encounter {
  $EncounterCopyWith<Encounter> get copyWith =>
      _$EncounterCopyWithImpl<Encounter>(
        this,
        (value) => value,
      );
}

abstract class $EncounterStatusHistoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EncounterStatus? status,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EncounterStatusHistoryCopyWithImpl<T>
    implements $EncounterStatusHistoryCopyWith<T> {
  final EncounterStatusHistory _value;
  final T Function(EncounterStatusHistory) _then;

  _$EncounterStatusHistoryCopyWithImpl(this._value, this._then);

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
      EncounterStatusHistory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        status: status as EncounterStatus? ?? _value.status,
        period: period as Period? ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterStatusHistoryCopyWithExtension on EncounterStatusHistory {
  $EncounterStatusHistoryCopyWith<EncounterStatusHistory> get copyWith =>
      _$EncounterStatusHistoryCopyWithImpl<EncounterStatusHistory>(
        this,
        (value) => value,
      );
}

abstract class $EncounterClassHistoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? class_,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EncounterClassHistoryCopyWithImpl<T>
    implements $EncounterClassHistoryCopyWith<T> {
  final EncounterClassHistory _value;
  final T Function(EncounterClassHistory) _then;

  _$EncounterClassHistoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterClassHistory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        class_: class_ as Coding? ?? _value.class_,
        period: period as Period? ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterClassHistoryCopyWithExtension on EncounterClassHistory {
  $EncounterClassHistoryCopyWith<EncounterClassHistory> get copyWith =>
      _$EncounterClassHistoryCopyWithImpl<EncounterClassHistory>(
        this,
        (value) => value,
      );
}

abstract class $EncounterParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Period? period,
    Reference? individual,
    bool? disallowExtensions,
  });
}

class _$EncounterParticipantCopyWithImpl<T>
    implements $EncounterParticipantCopyWith<T> {
  final EncounterParticipant _value;
  final T Function(EncounterParticipant) _then;

  _$EncounterParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? individual = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterParticipant(
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
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        individual: identical(individual, fhirSentinel)
            ? _value.individual
            : individual as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterParticipantCopyWithExtension on EncounterParticipant {
  $EncounterParticipantCopyWith<EncounterParticipant> get copyWith =>
      _$EncounterParticipantCopyWithImpl<EncounterParticipant>(
        this,
        (value) => value,
      );
}

abstract class $EncounterDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? use,
    FhirPositiveInt? rank,
    bool? disallowExtensions,
  });
}

class _$EncounterDiagnosisCopyWithImpl<T>
    implements $EncounterDiagnosisCopyWith<T> {
  final EncounterDiagnosis _value;
  final T Function(EncounterDiagnosis) _then;

  _$EncounterDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? use = fhirSentinel,
    Object? rank = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        condition: condition as Reference? ?? _value.condition,
        use:
            identical(use, fhirSentinel) ? _value.use : use as CodeableConcept?,
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

extension EncounterDiagnosisCopyWithExtension on EncounterDiagnosis {
  $EncounterDiagnosisCopyWith<EncounterDiagnosis> get copyWith =>
      _$EncounterDiagnosisCopyWithImpl<EncounterDiagnosis>(
        this,
        (value) => value,
      );
}

abstract class $EncounterHospitalizationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? preAdmissionIdentifier,
    Reference? origin,
    CodeableConcept? admitSource,
    CodeableConcept? reAdmission,
    List<CodeableConcept>? dietPreference,
    List<CodeableConcept>? specialCourtesy,
    List<CodeableConcept>? specialArrangement,
    Reference? destination,
    CodeableConcept? dischargeDisposition,
    bool? disallowExtensions,
  });
}

class _$EncounterHospitalizationCopyWithImpl<T>
    implements $EncounterHospitalizationCopyWith<T> {
  final EncounterHospitalization _value;
  final T Function(EncounterHospitalization) _then;

  _$EncounterHospitalizationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? preAdmissionIdentifier = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? admitSource = fhirSentinel,
    Object? reAdmission = fhirSentinel,
    Object? dietPreference = fhirSentinel,
    Object? specialCourtesy = fhirSentinel,
    Object? specialArrangement = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? dischargeDisposition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterHospitalization(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        preAdmissionIdentifier: identical(preAdmissionIdentifier, fhirSentinel)
            ? _value.preAdmissionIdentifier
            : preAdmissionIdentifier as Identifier?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as Reference?,
        admitSource: identical(admitSource, fhirSentinel)
            ? _value.admitSource
            : admitSource as CodeableConcept?,
        reAdmission: identical(reAdmission, fhirSentinel)
            ? _value.reAdmission
            : reAdmission as CodeableConcept?,
        dietPreference: identical(dietPreference, fhirSentinel)
            ? _value.dietPreference
            : dietPreference as List<CodeableConcept>?,
        specialCourtesy: identical(specialCourtesy, fhirSentinel)
            ? _value.specialCourtesy
            : specialCourtesy as List<CodeableConcept>?,
        specialArrangement: identical(specialArrangement, fhirSentinel)
            ? _value.specialArrangement
            : specialArrangement as List<CodeableConcept>?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as Reference?,
        dischargeDisposition: identical(dischargeDisposition, fhirSentinel)
            ? _value.dischargeDisposition
            : dischargeDisposition as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterHospitalizationCopyWithExtension
    on EncounterHospitalization {
  $EncounterHospitalizationCopyWith<EncounterHospitalization> get copyWith =>
      _$EncounterHospitalizationCopyWithImpl<EncounterHospitalization>(
        this,
        (value) => value,
      );
}

abstract class $EncounterLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    EncounterLocationStatus? status,
    CodeableConcept? physicalType,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EncounterLocationCopyWithImpl<T>
    implements $EncounterLocationCopyWith<T> {
  final EncounterLocation _value;
  final T Function(EncounterLocation) _then;

  _$EncounterLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? location = fhirSentinel,
    Object? status = fhirSentinel,
    Object? physicalType = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        location: location as Reference? ?? _value.location,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as EncounterLocationStatus?,
        physicalType: identical(physicalType, fhirSentinel)
            ? _value.physicalType
            : physicalType as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterLocationCopyWithExtension on EncounterLocation {
  $EncounterLocationCopyWith<EncounterLocation> get copyWith =>
      _$EncounterLocationCopyWithImpl<EncounterLocation>(
        this,
        (value) => value,
      );
}
