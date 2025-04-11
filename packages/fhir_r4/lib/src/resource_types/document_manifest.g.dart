// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'document_manifest.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DocumentManifestCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? created,
    List<Reference>? author,
    List<Reference>? recipient,
    FhirUri? source,
    FhirString? description,
    List<Reference>? content,
    List<DocumentManifestRelated>? related,
    bool? disallowExtensions,
  });
}

class _$DocumentManifestCopyWithImpl<T>
    implements $DocumentManifestCopyWith<T> {
  final DocumentManifest _value;
  final T Function(DocumentManifest) _then;

  _$DocumentManifestCopyWithImpl(this._value, this._then);

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
    Object? masterIdentifier = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? created = fhirSentinel,
    Object? author = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? source = fhirSentinel,
    Object? description = fhirSentinel,
    Object? content = fhirSentinel,
    Object? related = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentManifest(
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
        masterIdentifier: identical(masterIdentifier, fhirSentinel)
            ? _value.masterIdentifier
            : masterIdentifier as Identifier?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as DocumentReferenceStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        recipient: identical(recipient, fhirSentinel)
            ? _value.recipient
            : recipient as List<Reference>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirUri?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : (content as List<Reference>?) ?? _value.content,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<DocumentManifestRelated>?,
      ),
    );
  }
}

extension DocumentManifestCopyWithExtension on DocumentManifest {
  $DocumentManifestCopyWith<DocumentManifest> get copyWith =>
      _$DocumentManifestCopyWithImpl<DocumentManifest>(
        this,
        (value) => value,
      );
}

abstract class $DocumentManifestRelatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Reference? ref,
    bool? disallowExtensions,
  });
}

class _$DocumentManifestRelatedCopyWithImpl<T>
    implements $DocumentManifestRelatedCopyWith<T> {
  final DocumentManifestRelated _value;
  final T Function(DocumentManifestRelated) _then;

  _$DocumentManifestRelatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? ref = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentManifestRelated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        ref: identical(ref, fhirSentinel) ? _value.ref : ref as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentManifestRelatedCopyWithExtension on DocumentManifestRelated {
  $DocumentManifestRelatedCopyWith<DocumentManifestRelated> get copyWith =>
      _$DocumentManifestRelatedCopyWithImpl<DocumentManifestRelated>(
        this,
        (value) => value,
      );
}
