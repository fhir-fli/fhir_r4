// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'immunization_evaluation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImmunizationEvaluationCopyWith<T>
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
    ImmunizationEvaluationStatusCodes? status,
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
    FhirString? description,
    FhirString? series,
    FhirPositiveInt? doseNumberX,
    FhirPositiveInt? seriesDosesX,
    bool? disallowExtensions,
  });
}

class _$ImmunizationEvaluationCopyWithImpl<T>
    implements $ImmunizationEvaluationCopyWith<T> {
  final ImmunizationEvaluation _value;
  final T Function(ImmunizationEvaluation) _then;

  _$ImmunizationEvaluationCopyWithImpl(this._value, this._then);

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
    Object? patient = fhirSentinel,
    Object? date = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? targetDisease = fhirSentinel,
    Object? immunizationEvent = fhirSentinel,
    Object? doseStatus = fhirSentinel,
    Object? doseStatusReason = fhirSentinel,
    Object? description = fhirSentinel,
    Object? series = fhirSentinel,
    Object? doseNumberX = fhirSentinel,
    Object? seriesDosesX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationEvaluation(
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
            : (status as ImmunizationEvaluationStatusCodes?) ?? _value.status,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as Reference?,
        targetDisease: identical(targetDisease, fhirSentinel)
            ? _value.targetDisease
            : (targetDisease as CodeableConcept?) ?? _value.targetDisease,
        immunizationEvent: identical(immunizationEvent, fhirSentinel)
            ? _value.immunizationEvent
            : (immunizationEvent as Reference?) ?? _value.immunizationEvent,
        doseStatus: identical(doseStatus, fhirSentinel)
            ? _value.doseStatus
            : (doseStatus as CodeableConcept?) ?? _value.doseStatus,
        doseStatusReason: identical(doseStatusReason, fhirSentinel)
            ? _value.doseStatusReason
            : doseStatusReason as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        series: identical(series, fhirSentinel)
            ? _value.series
            : series as FhirString?,
        doseNumberX: identical(doseNumberX, fhirSentinel)
            ? _value.doseNumberX
            : doseNumberX as FhirPositiveInt?,
        seriesDosesX: identical(seriesDosesX, fhirSentinel)
            ? _value.seriesDosesX
            : seriesDosesX as FhirPositiveInt?,
      ),
    );
  }
}

extension ImmunizationEvaluationCopyWithExtension on ImmunizationEvaluation {
  $ImmunizationEvaluationCopyWith<ImmunizationEvaluation> get copyWith =>
      _$ImmunizationEvaluationCopyWithImpl<ImmunizationEvaluation>(
        this,
        (value) => value,
      );
}
