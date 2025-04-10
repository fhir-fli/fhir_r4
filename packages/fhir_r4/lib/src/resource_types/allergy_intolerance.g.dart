// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'allergy_intolerance.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AllergyIntoleranceCopyWith<T>
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
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    AllergyIntoleranceType? type,
    List<AllergyIntoleranceCategory>? category,
    AllergyIntoleranceCriticality? criticality,
    CodeableConcept? code,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? onsetX,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
    List<Annotation>? note,
    List<AllergyIntoleranceReaction>? reaction,
    bool? disallowExtensions,
  });
}

class _$AllergyIntoleranceCopyWithImpl<T>
    implements $AllergyIntoleranceCopyWith<T> {
  final AllergyIntolerance _value;
  final T Function(AllergyIntolerance) _then;

  _$AllergyIntoleranceCopyWithImpl(this._value, this._then);

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
    Object? clinicalStatus = fhirSentinel,
    Object? verificationStatus = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? criticality = fhirSentinel,
    Object? code = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? onsetX = fhirSentinel,
    Object? recordedDate = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? asserter = fhirSentinel,
    Object? lastOccurrence = fhirSentinel,
    Object? note = fhirSentinel,
    Object? reaction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AllergyIntolerance(
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
        clinicalStatus: identical(clinicalStatus, fhirSentinel)
            ? _value.clinicalStatus
            : clinicalStatus as CodeableConcept?,
        verificationStatus: identical(verificationStatus, fhirSentinel)
            ? _value.verificationStatus
            : verificationStatus as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as AllergyIntoleranceType?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<AllergyIntoleranceCategory>?,
        criticality: identical(criticality, fhirSentinel)
            ? _value.criticality
            : criticality as AllergyIntoleranceCriticality?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        onsetX: identical(onsetX, fhirSentinel)
            ? _value.onsetX
            : onsetX as FhirDateTime?,
        recordedDate: identical(recordedDate, fhirSentinel)
            ? _value.recordedDate
            : recordedDate as FhirDateTime?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as Reference?,
        asserter: identical(asserter, fhirSentinel)
            ? _value.asserter
            : asserter as Reference?,
        lastOccurrence: identical(lastOccurrence, fhirSentinel)
            ? _value.lastOccurrence
            : lastOccurrence as FhirDateTime?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        reaction: identical(reaction, fhirSentinel)
            ? _value.reaction
            : reaction as List<AllergyIntoleranceReaction>?,
      ),
    );
  }
}

extension AllergyIntoleranceCopyWithExtension on AllergyIntolerance {
  $AllergyIntoleranceCopyWith<AllergyIntolerance> get copyWith =>
      _$AllergyIntoleranceCopyWithImpl<AllergyIntolerance>(
        this,
        (value) => value,
      );
}

abstract class $AllergyIntoleranceReactionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    List<CodeableConcept>? manifestation,
    FhirString? description,
    FhirDateTime? onset,
    AllergyIntoleranceSeverity? severity,
    CodeableConcept? exposureRoute,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$AllergyIntoleranceReactionCopyWithImpl<T>
    implements $AllergyIntoleranceReactionCopyWith<T> {
  final AllergyIntoleranceReaction _value;
  final T Function(AllergyIntoleranceReaction) _then;

  _$AllergyIntoleranceReactionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? substance = fhirSentinel,
    Object? manifestation = fhirSentinel,
    Object? description = fhirSentinel,
    Object? onset = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? exposureRoute = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AllergyIntoleranceReaction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        substance: identical(substance, fhirSentinel)
            ? _value.substance
            : substance as CodeableConcept?,
        manifestation: identical(manifestation, fhirSentinel)
            ? _value.manifestation
            : (manifestation as List<CodeableConcept>?) ?? _value.manifestation,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        onset: identical(onset, fhirSentinel)
            ? _value.onset
            : onset as FhirDateTime?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as AllergyIntoleranceSeverity?,
        exposureRoute: identical(exposureRoute, fhirSentinel)
            ? _value.exposureRoute
            : exposureRoute as CodeableConcept?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AllergyIntoleranceReactionCopyWithExtension
    on AllergyIntoleranceReaction {
  $AllergyIntoleranceReactionCopyWith<AllergyIntoleranceReaction>
      get copyWith =>
          _$AllergyIntoleranceReactionCopyWithImpl<AllergyIntoleranceReaction>(
            this,
            (value) => value,
          );
}
