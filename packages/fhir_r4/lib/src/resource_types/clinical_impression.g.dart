// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'clinical_impression.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClinicalImpressionCopyWith<T>
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
    ClinicalImpressionStatus? status,
    CodeableConcept? statusReason,
    CodeableConcept? code,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveX,
    FhirDateTime? date,
    Reference? assessor,
    Reference? previous,
    List<Reference>? problem,
    List<ClinicalImpressionInvestigation>? investigation,
    List<FhirUri>? protocol,
    FhirString? summary,
    List<ClinicalImpressionFinding>? finding,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$ClinicalImpressionCopyWithImpl<T>
    implements $ClinicalImpressionCopyWith<T> {
  final ClinicalImpression _value;
  final T Function(ClinicalImpression) _then;

  _$ClinicalImpressionCopyWithImpl(this._value, this._then);

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
    Object? statusReason = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? effectiveX = fhirSentinel,
    Object? date = fhirSentinel,
    Object? assessor = fhirSentinel,
    Object? previous = fhirSentinel,
    Object? problem = fhirSentinel,
    Object? investigation = fhirSentinel,
    Object? protocol = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? finding = fhirSentinel,
    Object? prognosisCodeableConcept = fhirSentinel,
    Object? prognosisReference = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalImpression(
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
        status: status as ClinicalImpressionStatus? ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        subject: subject as Reference? ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        effectiveX: identical(effectiveX, fhirSentinel)
            ? _value.effectiveX
            : effectiveX as FhirDateTime?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        assessor: identical(assessor, fhirSentinel)
            ? _value.assessor
            : assessor as Reference?,
        previous: identical(previous, fhirSentinel)
            ? _value.previous
            : previous as Reference?,
        problem: identical(problem, fhirSentinel)
            ? _value.problem
            : problem as List<Reference>?,
        investigation: identical(investigation, fhirSentinel)
            ? _value.investigation
            : investigation as List<ClinicalImpressionInvestigation>?,
        protocol: identical(protocol, fhirSentinel)
            ? _value.protocol
            : protocol as List<FhirUri>?,
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as FhirString?,
        finding: identical(finding, fhirSentinel)
            ? _value.finding
            : finding as List<ClinicalImpressionFinding>?,
        prognosisCodeableConcept:
            identical(prognosisCodeableConcept, fhirSentinel)
                ? _value.prognosisCodeableConcept
                : prognosisCodeableConcept as List<CodeableConcept>?,
        prognosisReference: identical(prognosisReference, fhirSentinel)
            ? _value.prognosisReference
            : prognosisReference as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension ClinicalImpressionCopyWithExtension on ClinicalImpression {
  $ClinicalImpressionCopyWith<ClinicalImpression> get copyWith =>
      _$ClinicalImpressionCopyWithImpl<ClinicalImpression>(
        this,
        (value) => value,
      );
}

abstract class $ClinicalImpressionInvestigationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<Reference>? item,
    bool? disallowExtensions,
  });
}

class _$ClinicalImpressionInvestigationCopyWithImpl<T>
    implements $ClinicalImpressionInvestigationCopyWith<T> {
  final ClinicalImpressionInvestigation _value;
  final T Function(ClinicalImpressionInvestigation) _then;

  _$ClinicalImpressionInvestigationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalImpressionInvestigation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as CodeableConcept? ?? _value.code,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalImpressionInvestigationCopyWithExtension
    on ClinicalImpressionInvestigation {
  $ClinicalImpressionInvestigationCopyWith<ClinicalImpressionInvestigation>
      get copyWith => _$ClinicalImpressionInvestigationCopyWithImpl<
              ClinicalImpressionInvestigation>(
            this,
            (value) => value,
          );
}

abstract class $ClinicalImpressionFindingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirString? basis,
    bool? disallowExtensions,
  });
}

class _$ClinicalImpressionFindingCopyWithImpl<T>
    implements $ClinicalImpressionFindingCopyWith<T> {
  final ClinicalImpressionFinding _value;
  final T Function(ClinicalImpressionFinding) _then;

  _$ClinicalImpressionFindingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemCodeableConcept = fhirSentinel,
    Object? itemReference = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalImpressionFinding(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemCodeableConcept: identical(itemCodeableConcept, fhirSentinel)
            ? _value.itemCodeableConcept
            : itemCodeableConcept as CodeableConcept?,
        itemReference: identical(itemReference, fhirSentinel)
            ? _value.itemReference
            : itemReference as Reference?,
        basis: identical(basis, fhirSentinel)
            ? _value.basis
            : basis as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalImpressionFindingCopyWithExtension
    on ClinicalImpressionFinding {
  $ClinicalImpressionFindingCopyWith<ClinicalImpressionFinding> get copyWith =>
      _$ClinicalImpressionFindingCopyWithImpl<ClinicalImpressionFinding>(
        this,
        (value) => value,
      );
}
