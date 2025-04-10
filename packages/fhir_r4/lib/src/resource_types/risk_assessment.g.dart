// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'risk_assessment.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RiskAssessmentCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Reference? basedOn,
    Reference? parent,
    ObservationStatus? status,
    CodeableConcept? method,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceX,
    Reference? condition,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? basis,
    List<RiskAssessmentPrediction>? prediction,
    FhirString? mitigation,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$RiskAssessmentCopyWithImpl<T> implements $RiskAssessmentCopyWith<T> {
  final RiskAssessment _value;
  final T Function(RiskAssessment) _then;

  _$RiskAssessmentCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? status = fhirSentinel,
    Object? method = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? prediction = fhirSentinel,
    Object? mitigation = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RiskAssessment(
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
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as Reference?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as Reference?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ObservationStatus?) ?? _value.status,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as FhirDateTime?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        basis: identical(basis, fhirSentinel)
            ? _value.basis
            : basis as List<Reference>?,
        prediction: identical(prediction, fhirSentinel)
            ? _value.prediction
            : prediction as List<RiskAssessmentPrediction>?,
        mitigation: identical(mitigation, fhirSentinel)
            ? _value.mitigation
            : mitigation as FhirString?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension RiskAssessmentCopyWithExtension on RiskAssessment {
  $RiskAssessmentCopyWith<RiskAssessment> get copyWith =>
      _$RiskAssessmentCopyWithImpl<RiskAssessment>(
        this,
        (value) => value,
      );
}

abstract class $RiskAssessmentPredictionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? outcome,
    FhirDecimal? probabilityX,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    Period? whenX,
    FhirString? rationale,
    bool? disallowExtensions,
  });
}

class _$RiskAssessmentPredictionCopyWithImpl<T>
    implements $RiskAssessmentPredictionCopyWith<T> {
  final RiskAssessmentPrediction _value;
  final T Function(RiskAssessmentPrediction) _then;

  _$RiskAssessmentPredictionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? probabilityX = fhirSentinel,
    Object? qualitativeRisk = fhirSentinel,
    Object? relativeRisk = fhirSentinel,
    Object? whenX = fhirSentinel,
    Object? rationale = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RiskAssessmentPrediction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as CodeableConcept?,
        probabilityX: identical(probabilityX, fhirSentinel)
            ? _value.probabilityX
            : probabilityX as FhirDecimal?,
        qualitativeRisk: identical(qualitativeRisk, fhirSentinel)
            ? _value.qualitativeRisk
            : qualitativeRisk as CodeableConcept?,
        relativeRisk: identical(relativeRisk, fhirSentinel)
            ? _value.relativeRisk
            : relativeRisk as FhirDecimal?,
        whenX: identical(whenX, fhirSentinel) ? _value.whenX : whenX as Period?,
        rationale: identical(rationale, fhirSentinel)
            ? _value.rationale
            : rationale as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RiskAssessmentPredictionCopyWithExtension
    on RiskAssessmentPrediction {
  $RiskAssessmentPredictionCopyWith<RiskAssessmentPrediction> get copyWith =>
      _$RiskAssessmentPredictionCopyWithImpl<RiskAssessmentPrediction>(
        this,
        (value) => value,
      );
}
