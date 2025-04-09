// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'basic.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BasicCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? code,
    Reference? subject,
    FhirDate? created,
    Reference? author,
    bool? disallowExtensions,
  });
}

class _$BasicCopyWithImpl<T> implements $BasicCopyWith<T> {
  final Basic _value;
  final T Function(Basic) _then;

  _$BasicCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? created = fhirSentinel,
    Object? author = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Basic(
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
        code: code as CodeableConcept? ?? _value.code,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDate?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
      ),
    );
  }
}

extension BasicCopyWithExtension on Basic {
  $BasicCopyWith<Basic> get copyWith => _$BasicCopyWithImpl<Basic>(
        this,
        (value) => value,
      );
}
