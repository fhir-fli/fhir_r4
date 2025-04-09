// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'immunization_recommendation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImmunizationRecommendationCopyWith<T>
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
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    List<ImmunizationRecommendationRecommendation>? recommendation,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationCopyWithImpl<T>
    implements $ImmunizationRecommendationCopyWith<T> {
  final ImmunizationRecommendation _value;
  final T Function(ImmunizationRecommendation) _then;

  _$ImmunizationRecommendationCopyWithImpl(this._value, this._then);

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
    Object? patient = fhirSentinel,
    Object? date = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? recommendation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendation(
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
        patient: patient as Reference? ?? _value.patient,
        date: date as FhirDateTime? ?? _value.date,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as Reference?,
        recommendation:
            recommendation as List<ImmunizationRecommendationRecommendation>? ??
                _value.recommendation,
      ),
    );
  }
}

extension ImmunizationRecommendationCopyWithExtension
    on ImmunizationRecommendation {
  $ImmunizationRecommendationCopyWith<ImmunizationRecommendation>
      get copyWith =>
          _$ImmunizationRecommendationCopyWithImpl<ImmunizationRecommendation>(
            this,
            (value) => value,
          );
}

abstract class $ImmunizationRecommendationRecommendationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? vaccineCode,
    CodeableConcept? targetDisease,
    List<CodeableConcept>? contraindicatedVaccineCode,
    CodeableConcept? forecastStatus,
    List<CodeableConcept>? forecastReason,
    List<ImmunizationRecommendationDateCriterion>? dateCriterion,
    FhirString? description,
    FhirString? series,
    FhirPositiveInt? doseNumberX,
    FhirPositiveInt? seriesDosesX,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationRecommendationCopyWithImpl<T>
    implements $ImmunizationRecommendationRecommendationCopyWith<T> {
  final ImmunizationRecommendationRecommendation _value;
  final T Function(ImmunizationRecommendationRecommendation) _then;

  _$ImmunizationRecommendationRecommendationCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? vaccineCode = fhirSentinel,
    Object? targetDisease = fhirSentinel,
    Object? contraindicatedVaccineCode = fhirSentinel,
    Object? forecastStatus = fhirSentinel,
    Object? forecastReason = fhirSentinel,
    Object? dateCriterion = fhirSentinel,
    Object? description = fhirSentinel,
    Object? series = fhirSentinel,
    Object? doseNumberX = fhirSentinel,
    Object? seriesDosesX = fhirSentinel,
    Object? supportingImmunization = fhirSentinel,
    Object? supportingPatientInformation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendationRecommendation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        vaccineCode: identical(vaccineCode, fhirSentinel)
            ? _value.vaccineCode
            : vaccineCode as List<CodeableConcept>?,
        targetDisease: identical(targetDisease, fhirSentinel)
            ? _value.targetDisease
            : targetDisease as CodeableConcept?,
        contraindicatedVaccineCode:
            identical(contraindicatedVaccineCode, fhirSentinel)
                ? _value.contraindicatedVaccineCode
                : contraindicatedVaccineCode as List<CodeableConcept>?,
        forecastStatus:
            forecastStatus as CodeableConcept? ?? _value.forecastStatus,
        forecastReason: identical(forecastReason, fhirSentinel)
            ? _value.forecastReason
            : forecastReason as List<CodeableConcept>?,
        dateCriterion: identical(dateCriterion, fhirSentinel)
            ? _value.dateCriterion
            : dateCriterion as List<ImmunizationRecommendationDateCriterion>?,
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
        supportingImmunization: identical(supportingImmunization, fhirSentinel)
            ? _value.supportingImmunization
            : supportingImmunization as List<Reference>?,
        supportingPatientInformation:
            identical(supportingPatientInformation, fhirSentinel)
                ? _value.supportingPatientInformation
                : supportingPatientInformation as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationRecommendationRecommendationCopyWithExtension
    on ImmunizationRecommendationRecommendation {
  $ImmunizationRecommendationRecommendationCopyWith<
          ImmunizationRecommendationRecommendation>
      get copyWith => _$ImmunizationRecommendationRecommendationCopyWithImpl<
              ImmunizationRecommendationRecommendation>(
            this,
            (value) => value,
          );
}

abstract class $ImmunizationRecommendationDateCriterionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirDateTime? value,
    bool? disallowExtensions,
  });
}

class _$ImmunizationRecommendationDateCriterionCopyWithImpl<T>
    implements $ImmunizationRecommendationDateCriterionCopyWith<T> {
  final ImmunizationRecommendationDateCriterion _value;
  final T Function(ImmunizationRecommendationDateCriterion) _then;

  _$ImmunizationRecommendationDateCriterionCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationRecommendationDateCriterion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as CodeableConcept? ?? _value.code,
        value: value as FhirDateTime? ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationRecommendationDateCriterionCopyWithExtension
    on ImmunizationRecommendationDateCriterion {
  $ImmunizationRecommendationDateCriterionCopyWith<
          ImmunizationRecommendationDateCriterion>
      get copyWith => _$ImmunizationRecommendationDateCriterionCopyWithImpl<
              ImmunizationRecommendationDateCriterion>(
            this,
            (value) => value,
          );
}
