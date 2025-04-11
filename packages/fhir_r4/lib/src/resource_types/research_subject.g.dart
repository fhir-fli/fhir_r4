// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'research_subject.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ResearchSubjectCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ResearchSubjectStatus? status,
    Period? period,
    Reference? study,
    Reference? individual,
    FhirString? assignedArm,
    FhirString? actualArm,
    Reference? consent,
    bool? disallowExtensions,
  });
}

class _$ResearchSubjectCopyWithImpl<T> implements $ResearchSubjectCopyWith<T> {
  final ResearchSubject _value;
  final T Function(ResearchSubject) _then;

  _$ResearchSubjectCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? study = fhirSentinel,
    Object? individual = fhirSentinel,
    Object? assignedArm = fhirSentinel,
    Object? actualArm = fhirSentinel,
    Object? consent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchSubject(
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
            : (status as ResearchSubjectStatus?) ?? _value.status,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : (study as Reference?) ?? _value.study,
        individual: identical(individual, fhirSentinel)
            ? _value.individual
            : (individual as Reference?) ?? _value.individual,
        assignedArm: identical(assignedArm, fhirSentinel)
            ? _value.assignedArm
            : assignedArm as FhirString?,
        actualArm: identical(actualArm, fhirSentinel)
            ? _value.actualArm
            : actualArm as FhirString?,
        consent: identical(consent, fhirSentinel)
            ? _value.consent
            : consent as Reference?,
      ),
    );
  }
}

extension ResearchSubjectCopyWithExtension on ResearchSubject {
  $ResearchSubjectCopyWith<ResearchSubject> get copyWith =>
      _$ResearchSubjectCopyWithImpl<ResearchSubject>(
        this,
        (value) => value,
      );
}
