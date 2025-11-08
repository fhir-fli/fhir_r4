// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'communication_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CommunicationRequestCopyWith<T>
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
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    List<CodeableConcept>? medium,
    Reference? subject,
    List<Reference>? about,
    Reference? encounter,
    List<CommunicationRequestPayload>? payload,
    OccurrenceXCommunicationRequest? occurrenceX,
    FhirDateTime? authoredOn,
    Reference? requester,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$CommunicationRequestCopyWithImpl<T>
    implements $CommunicationRequestCopyWith<T> {
  final CommunicationRequest _value;
  final T Function(CommunicationRequest) _then;

  _$CommunicationRequestCopyWithImpl(this._value, this._then);

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
    Object? replaces = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? medium = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? about = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? payload = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? sender = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CommunicationRequest(
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
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        medium: identical(medium, fhirSentinel)
            ? _value.medium
            : medium as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        about: identical(about, fhirSentinel)
            ? _value.about
            : about as List<Reference>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        payload: identical(payload, fhirSentinel)
            ? _value.payload
            : payload as List<CommunicationRequestPayload>?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as OccurrenceXCommunicationRequest?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        recipient: identical(recipient, fhirSentinel)
            ? _value.recipient
            : recipient as List<Reference>?,
        sender: identical(sender, fhirSentinel)
            ? _value.sender
            : sender as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension CommunicationRequestCopyWithExtension on CommunicationRequest {
  $CommunicationRequestCopyWith<CommunicationRequest> get copyWith =>
      _$CommunicationRequestCopyWithImpl<CommunicationRequest>(
        this,
        (value) => value,
      );
}

abstract class $CommunicationRequestPayloadCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXCommunicationRequestPayload? contentX,
    bool? disallowExtensions,
  });
}

class _$CommunicationRequestPayloadCopyWithImpl<T>
    implements $CommunicationRequestPayloadCopyWith<T> {
  final CommunicationRequestPayload _value;
  final T Function(CommunicationRequestPayload) _then;

  _$CommunicationRequestPayloadCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? contentX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CommunicationRequestPayload(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        contentX: identical(contentX, fhirSentinel)
            ? _value.contentX
            : (contentX as ContentXCommunicationRequestPayload?) ??
                _value.contentX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CommunicationRequestPayloadCopyWithExtension
    on CommunicationRequestPayload {
  $CommunicationRequestPayloadCopyWith<CommunicationRequestPayload>
      get copyWith => _$CommunicationRequestPayloadCopyWithImpl<
              CommunicationRequestPayload>(
            this,
            (value) => value,
          );
}
