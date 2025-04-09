// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'document_reference.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DocumentReferenceCopyWith<T>
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
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    CompositionStatus? docStatus,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    FhirInstant? date,
    List<Reference>? author,
    Reference? authenticator,
    Reference? custodian,
    List<DocumentReferenceRelatesTo>? relatesTo,
    FhirString? description,
    List<CodeableConcept>? securityLabel,
    List<DocumentReferenceContent>? content,
    DocumentReferenceContext? context,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceCopyWithImpl<T>
    implements $DocumentReferenceCopyWith<T> {
  final DocumentReference _value;
  final T Function(DocumentReference) _then;

  _$DocumentReferenceCopyWithImpl(this._value, this._then);

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
    Object? docStatus = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? date = fhirSentinel,
    Object? author = fhirSentinel,
    Object? authenticator = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? description = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? content = fhirSentinel,
    Object? context = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReference(
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
        status: status as DocumentReferenceStatus? ?? _value.status,
        docStatus: identical(docStatus, fhirSentinel)
            ? _value.docStatus
            : docStatus as CompositionStatus?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirInstant?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        authenticator: identical(authenticator, fhirSentinel)
            ? _value.authenticator
            : authenticator as Reference?,
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<DocumentReferenceRelatesTo>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<CodeableConcept>?,
        content: content as List<DocumentReferenceContent>? ?? _value.content,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as DocumentReferenceContext?,
      ),
    );
  }
}

extension DocumentReferenceCopyWithExtension on DocumentReference {
  $DocumentReferenceCopyWith<DocumentReference> get copyWith =>
      _$DocumentReferenceCopyWithImpl<DocumentReference>(
        this,
        (value) => value,
      );
}

abstract class $DocumentReferenceRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
    Reference? target,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceRelatesToCopyWithImpl<T>
    implements $DocumentReferenceRelatesToCopyWith<T> {
  final DocumentReferenceRelatesTo _value;
  final T Function(DocumentReferenceRelatesTo) _then;

  _$DocumentReferenceRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceRelatesTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as DocumentRelationshipType? ?? _value.code,
        target: target as Reference? ?? _value.target,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceRelatesToCopyWithExtension
    on DocumentReferenceRelatesTo {
  $DocumentReferenceRelatesToCopyWith<DocumentReferenceRelatesTo>
      get copyWith =>
          _$DocumentReferenceRelatesToCopyWithImpl<DocumentReferenceRelatesTo>(
            this,
            (value) => value,
          );
}

abstract class $DocumentReferenceContentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? attachment,
    Coding? format,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceContentCopyWithImpl<T>
    implements $DocumentReferenceContentCopyWith<T> {
  final DocumentReferenceContent _value;
  final T Function(DocumentReferenceContent) _then;

  _$DocumentReferenceContentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? attachment = fhirSentinel,
    Object? format = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceContent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        attachment: attachment as Attachment? ?? _value.attachment,
        format:
            identical(format, fhirSentinel) ? _value.format : format as Coding?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceContentCopyWithExtension
    on DocumentReferenceContent {
  $DocumentReferenceContentCopyWith<DocumentReferenceContent> get copyWith =>
      _$DocumentReferenceContentCopyWithImpl<DocumentReferenceContent>(
        this,
        (value) => value,
      );
}

abstract class $DocumentReferenceContextCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? encounter,
    List<CodeableConcept>? event,
    Period? period,
    CodeableConcept? facilityType,
    CodeableConcept? practiceSetting,
    Reference? sourcePatientInfo,
    List<Reference>? related,
    bool? disallowExtensions,
  });
}

class _$DocumentReferenceContextCopyWithImpl<T>
    implements $DocumentReferenceContextCopyWith<T> {
  final DocumentReferenceContext _value;
  final T Function(DocumentReferenceContext) _then;

  _$DocumentReferenceContextCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? event = fhirSentinel,
    Object? period = fhirSentinel,
    Object? facilityType = fhirSentinel,
    Object? practiceSetting = fhirSentinel,
    Object? sourcePatientInfo = fhirSentinel,
    Object? related = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DocumentReferenceContext(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as List<Reference>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<CodeableConcept>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        facilityType: identical(facilityType, fhirSentinel)
            ? _value.facilityType
            : facilityType as CodeableConcept?,
        practiceSetting: identical(practiceSetting, fhirSentinel)
            ? _value.practiceSetting
            : practiceSetting as CodeableConcept?,
        sourcePatientInfo: identical(sourcePatientInfo, fhirSentinel)
            ? _value.sourcePatientInfo
            : sourcePatientInfo as Reference?,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DocumentReferenceContextCopyWithExtension
    on DocumentReferenceContext {
  $DocumentReferenceContextCopyWith<DocumentReferenceContext> get copyWith =>
      _$DocumentReferenceContextCopyWithImpl<DocumentReferenceContext>(
        this,
        (value) => value,
      );
}
