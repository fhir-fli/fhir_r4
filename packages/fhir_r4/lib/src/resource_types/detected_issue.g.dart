// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'detected_issue.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DetectedIssueCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ObservationStatus? status,
    CodeableConcept? code,
    DetectedIssueSeverity? severity,
    Reference? patient,
    FhirDateTime? identifiedX,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    FhirUri? reference,
    List<DetectedIssueMitigation>? mitigation,
    bool? disallowExtensions,
  });
}

class _$DetectedIssueCopyWithImpl<T> implements $DetectedIssueCopyWith<T> {
  final DetectedIssue _value;
  final T Function(DetectedIssue) _then;

  _$DetectedIssueCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? identifiedX = fhirSentinel,
    Object? author = fhirSentinel,
    Object? implicated = fhirSentinel,
    Object? evidence = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? mitigation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DetectedIssue(
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
        status: status as ObservationStatus? ?? _value.status,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as DetectedIssueSeverity?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        identifiedX: identical(identifiedX, fhirSentinel)
            ? _value.identifiedX
            : identifiedX as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        implicated: identical(implicated, fhirSentinel)
            ? _value.implicated
            : implicated as List<Reference>?,
        evidence: identical(evidence, fhirSentinel)
            ? _value.evidence
            : evidence as List<DetectedIssueEvidence>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as FhirString?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as FhirUri?,
        mitigation: identical(mitigation, fhirSentinel)
            ? _value.mitigation
            : mitigation as List<DetectedIssueMitigation>?,
      ),
    );
  }
}

extension DetectedIssueCopyWithExtension on DetectedIssue {
  $DetectedIssueCopyWith<DetectedIssue> get copyWith =>
      _$DetectedIssueCopyWithImpl<DetectedIssue>(
        this,
        (value) => value,
      );
}

abstract class $DetectedIssueEvidenceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    bool? disallowExtensions,
  });
}

class _$DetectedIssueEvidenceCopyWithImpl<T>
    implements $DetectedIssueEvidenceCopyWith<T> {
  final DetectedIssueEvidence _value;
  final T Function(DetectedIssueEvidence) _then;

  _$DetectedIssueEvidenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DetectedIssueEvidence(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DetectedIssueEvidenceCopyWithExtension on DetectedIssueEvidence {
  $DetectedIssueEvidenceCopyWith<DetectedIssueEvidence> get copyWith =>
      _$DetectedIssueEvidenceCopyWithImpl<DetectedIssueEvidence>(
        this,
        (value) => value,
      );
}

abstract class $DetectedIssueMitigationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Reference? author,
    bool? disallowExtensions,
  });
}

class _$DetectedIssueMitigationCopyWithImpl<T>
    implements $DetectedIssueMitigationCopyWith<T> {
  final DetectedIssueMitigation _value;
  final T Function(DetectedIssueMitigation) _then;

  _$DetectedIssueMitigationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? date = fhirSentinel,
    Object? author = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DetectedIssueMitigation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: action as CodeableConcept? ?? _value.action,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DetectedIssueMitigationCopyWithExtension on DetectedIssueMitigation {
  $DetectedIssueMitigationCopyWith<DetectedIssueMitigation> get copyWith =>
      _$DetectedIssueMitigationCopyWithImpl<DetectedIssueMitigation>(
        this,
        (value) => value,
      );
}
