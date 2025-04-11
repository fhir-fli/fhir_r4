// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'adverse_event.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AdverseEventCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    AdverseEventActuality? actuality,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    FhirDateTime? detected,
    FhirDateTime? recordedDate,
    List<Reference>? resultingCondition,
    Reference? location,
    CodeableConcept? seriousness,
    CodeableConcept? severity,
    CodeableConcept? outcome,
    Reference? recorder,
    List<Reference>? contributor,
    List<AdverseEventSuspectEntity>? suspectEntity,
    List<Reference>? subjectMedicalHistory,
    List<Reference>? referenceDocument,
    List<Reference>? study,
    bool? disallowExtensions,
  });
}

class _$AdverseEventCopyWithImpl<T> implements $AdverseEventCopyWith<T> {
  final AdverseEvent _value;
  final T Function(AdverseEvent) _then;

  _$AdverseEventCopyWithImpl(this._value, this._then);

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
    Object? actuality = fhirSentinel,
    Object? category = fhirSentinel,
    Object? event = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? date = fhirSentinel,
    Object? detected = fhirSentinel,
    Object? recordedDate = fhirSentinel,
    Object? resultingCondition = fhirSentinel,
    Object? location = fhirSentinel,
    Object? seriousness = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? contributor = fhirSentinel,
    Object? suspectEntity = fhirSentinel,
    Object? subjectMedicalHistory = fhirSentinel,
    Object? referenceDocument = fhirSentinel,
    Object? study = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEvent(
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
        actuality: identical(actuality, fhirSentinel)
            ? _value.actuality
            : (actuality as AdverseEventActuality?) ?? _value.actuality,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        detected: identical(detected, fhirSentinel)
            ? _value.detected
            : detected as FhirDateTime?,
        recordedDate: identical(recordedDate, fhirSentinel)
            ? _value.recordedDate
            : recordedDate as FhirDateTime?,
        resultingCondition: identical(resultingCondition, fhirSentinel)
            ? _value.resultingCondition
            : resultingCondition as List<Reference>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        seriousness: identical(seriousness, fhirSentinel)
            ? _value.seriousness
            : seriousness as CodeableConcept?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as CodeableConcept?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as CodeableConcept?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as Reference?,
        contributor: identical(contributor, fhirSentinel)
            ? _value.contributor
            : contributor as List<Reference>?,
        suspectEntity: identical(suspectEntity, fhirSentinel)
            ? _value.suspectEntity
            : suspectEntity as List<AdverseEventSuspectEntity>?,
        subjectMedicalHistory: identical(subjectMedicalHistory, fhirSentinel)
            ? _value.subjectMedicalHistory
            : subjectMedicalHistory as List<Reference>?,
        referenceDocument: identical(referenceDocument, fhirSentinel)
            ? _value.referenceDocument
            : referenceDocument as List<Reference>?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : study as List<Reference>?,
      ),
    );
  }
}

extension AdverseEventCopyWithExtension on AdverseEvent {
  $AdverseEventCopyWith<AdverseEvent> get copyWith =>
      _$AdverseEventCopyWithImpl<AdverseEvent>(
        this,
        (value) => value,
      );
}

abstract class $AdverseEventSuspectEntityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? instance,
    List<AdverseEventCausality>? causality,
    bool? disallowExtensions,
  });
}

class _$AdverseEventSuspectEntityCopyWithImpl<T>
    implements $AdverseEventSuspectEntityCopyWith<T> {
  final AdverseEventSuspectEntity _value;
  final T Function(AdverseEventSuspectEntity) _then;

  _$AdverseEventSuspectEntityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? causality = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEventSuspectEntity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : (instance as Reference?) ?? _value.instance,
        causality: identical(causality, fhirSentinel)
            ? _value.causality
            : causality as List<AdverseEventCausality>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdverseEventSuspectEntityCopyWithExtension
    on AdverseEventSuspectEntity {
  $AdverseEventSuspectEntityCopyWith<AdverseEventSuspectEntity> get copyWith =>
      _$AdverseEventSuspectEntityCopyWithImpl<AdverseEventSuspectEntity>(
        this,
        (value) => value,
      );
}

abstract class $AdverseEventCausalityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessment,
    FhirString? productRelatedness,
    Reference? author,
    CodeableConcept? method,
    bool? disallowExtensions,
  });
}

class _$AdverseEventCausalityCopyWithImpl<T>
    implements $AdverseEventCausalityCopyWith<T> {
  final AdverseEventCausality _value;
  final T Function(AdverseEventCausality) _then;

  _$AdverseEventCausalityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? assessment = fhirSentinel,
    Object? productRelatedness = fhirSentinel,
    Object? author = fhirSentinel,
    Object? method = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEventCausality(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        assessment: identical(assessment, fhirSentinel)
            ? _value.assessment
            : assessment as CodeableConcept?,
        productRelatedness: identical(productRelatedness, fhirSentinel)
            ? _value.productRelatedness
            : productRelatedness as FhirString?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdverseEventCausalityCopyWithExtension on AdverseEventCausality {
  $AdverseEventCausalityCopyWith<AdverseEventCausality> get copyWith =>
      _$AdverseEventCausalityCopyWithImpl<AdverseEventCausality>(
        this,
        (value) => value,
      );
}
