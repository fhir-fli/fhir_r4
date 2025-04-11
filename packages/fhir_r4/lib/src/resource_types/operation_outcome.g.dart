// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'operation_outcome.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $OperationOutcomeCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<OperationOutcomeIssue>? issue,
    bool? disallowExtensions,
  });
}

class _$OperationOutcomeCopyWithImpl<T>
    implements $OperationOutcomeCopyWith<T> {
  final OperationOutcome _value;
  final T Function(OperationOutcome) _then;

  _$OperationOutcomeCopyWithImpl(this._value, this._then);

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
    Object? issue = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationOutcome(
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
        issue: identical(issue, fhirSentinel)
            ? _value.issue
            : (issue as List<OperationOutcomeIssue>?) ?? _value.issue,
      ),
    );
  }
}

extension OperationOutcomeCopyWithExtension on OperationOutcome {
  $OperationOutcomeCopyWith<OperationOutcome> get copyWith =>
      _$OperationOutcomeCopyWithImpl<OperationOutcome>(
        this,
        (value) => value,
      );
}

abstract class $OperationOutcomeIssueCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IssueSeverity? severity,
    IssueType? code,
    CodeableConcept? details,
    FhirString? diagnostics,
    List<FhirString>? location,
    List<FhirString>? expression,
    bool? disallowExtensions,
  });
}

class _$OperationOutcomeIssueCopyWithImpl<T>
    implements $OperationOutcomeIssueCopyWith<T> {
  final OperationOutcomeIssue _value;
  final T Function(OperationOutcomeIssue) _then;

  _$OperationOutcomeIssueCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? code = fhirSentinel,
    Object? details = fhirSentinel,
    Object? diagnostics = fhirSentinel,
    Object? location = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationOutcomeIssue(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : (severity as IssueSeverity?) ?? _value.severity,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as IssueType?) ?? _value.code,
        details: identical(details, fhirSentinel)
            ? _value.details
            : details as CodeableConcept?,
        diagnostics: identical(diagnostics, fhirSentinel)
            ? _value.diagnostics
            : diagnostics as FhirString?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<FhirString>?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OperationOutcomeIssueCopyWithExtension on OperationOutcomeIssue {
  $OperationOutcomeIssueCopyWith<OperationOutcomeIssue> get copyWith =>
      _$OperationOutcomeIssueCopyWithImpl<OperationOutcomeIssue>(
        this,
        (value) => value,
      );
}
