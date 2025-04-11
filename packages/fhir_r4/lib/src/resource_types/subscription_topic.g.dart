// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'subscription_topic.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubscriptionTopicCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
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
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? title,
    List<FhirCanonical>? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<SubscriptionTopicResourceTrigger>? resourceTrigger,
    List<SubscriptionTopicEventTrigger>? eventTrigger,
    List<SubscriptionTopicCanFilterBy>? canFilterBy,
    List<SubscriptionTopicNotificationShape>? notificationShape,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicCopyWithImpl<T>
    implements $SubscriptionTopicCopyWith<T> {
  final SubscriptionTopic _value;
  final T Function(SubscriptionTopic) _then;

  _$SubscriptionTopicCopyWithImpl(this._value, this._then);

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
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? title = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? resourceTrigger = fhirSentinel,
    Object? eventTrigger = fhirSentinel,
    Object? canFilterBy = fhirSentinel,
    Object? notificationShape = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopic(
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
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<FhirCanonical>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        resourceTrigger: identical(resourceTrigger, fhirSentinel)
            ? _value.resourceTrigger
            : resourceTrigger as List<SubscriptionTopicResourceTrigger>?,
        eventTrigger: identical(eventTrigger, fhirSentinel)
            ? _value.eventTrigger
            : eventTrigger as List<SubscriptionTopicEventTrigger>?,
        canFilterBy: identical(canFilterBy, fhirSentinel)
            ? _value.canFilterBy
            : canFilterBy as List<SubscriptionTopicCanFilterBy>?,
        notificationShape: identical(notificationShape, fhirSentinel)
            ? _value.notificationShape
            : notificationShape as List<SubscriptionTopicNotificationShape>?,
      ),
    );
  }
}

extension SubscriptionTopicCopyWithExtension on SubscriptionTopic {
  $SubscriptionTopicCopyWith<SubscriptionTopic> get copyWith =>
      _$SubscriptionTopicCopyWithImpl<SubscriptionTopic>(
        this,
        (value) => value,
      );
}

abstract class $SubscriptionTopicResourceTriggerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    FhirUri? resource,
    List<InteractionTrigger>? supportedInteraction,
    SubscriptionTopicQueryCriteria? queryCriteria,
    FhirString? fhirPathCriteria,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicResourceTriggerCopyWithImpl<T>
    implements $SubscriptionTopicResourceTriggerCopyWith<T> {
  final SubscriptionTopicResourceTrigger _value;
  final T Function(SubscriptionTopicResourceTrigger) _then;

  _$SubscriptionTopicResourceTriggerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? supportedInteraction = fhirSentinel,
    Object? queryCriteria = fhirSentinel,
    Object? fhirPathCriteria = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopicResourceTrigger(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as FhirUri?) ?? _value.resource,
        supportedInteraction: identical(supportedInteraction, fhirSentinel)
            ? _value.supportedInteraction
            : supportedInteraction as List<InteractionTrigger>?,
        queryCriteria: identical(queryCriteria, fhirSentinel)
            ? _value.queryCriteria
            : queryCriteria as SubscriptionTopicQueryCriteria?,
        fhirPathCriteria: identical(fhirPathCriteria, fhirSentinel)
            ? _value.fhirPathCriteria
            : fhirPathCriteria as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionTopicResourceTriggerCopyWithExtension
    on SubscriptionTopicResourceTrigger {
  $SubscriptionTopicResourceTriggerCopyWith<SubscriptionTopicResourceTrigger>
      get copyWith => _$SubscriptionTopicResourceTriggerCopyWithImpl<
              SubscriptionTopicResourceTrigger>(
            this,
            (value) => value,
          );
}

abstract class $SubscriptionTopicQueryCriteriaCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? previous,
    CriteriaNotExistsBehavior? resultForCreate,
    FhirString? current,
    CriteriaNotExistsBehavior? resultForDelete,
    FhirBoolean? requireBoth,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicQueryCriteriaCopyWithImpl<T>
    implements $SubscriptionTopicQueryCriteriaCopyWith<T> {
  final SubscriptionTopicQueryCriteria _value;
  final T Function(SubscriptionTopicQueryCriteria) _then;

  _$SubscriptionTopicQueryCriteriaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? previous = fhirSentinel,
    Object? resultForCreate = fhirSentinel,
    Object? current = fhirSentinel,
    Object? resultForDelete = fhirSentinel,
    Object? requireBoth = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopicQueryCriteria(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        previous: identical(previous, fhirSentinel)
            ? _value.previous
            : previous as FhirString?,
        resultForCreate: identical(resultForCreate, fhirSentinel)
            ? _value.resultForCreate
            : resultForCreate as CriteriaNotExistsBehavior?,
        current: identical(current, fhirSentinel)
            ? _value.current
            : current as FhirString?,
        resultForDelete: identical(resultForDelete, fhirSentinel)
            ? _value.resultForDelete
            : resultForDelete as CriteriaNotExistsBehavior?,
        requireBoth: identical(requireBoth, fhirSentinel)
            ? _value.requireBoth
            : requireBoth as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionTopicQueryCriteriaCopyWithExtension
    on SubscriptionTopicQueryCriteria {
  $SubscriptionTopicQueryCriteriaCopyWith<SubscriptionTopicQueryCriteria>
      get copyWith => _$SubscriptionTopicQueryCriteriaCopyWithImpl<
              SubscriptionTopicQueryCriteria>(
            this,
            (value) => value,
          );
}

abstract class $SubscriptionTopicEventTriggerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    CodeableConcept? event,
    FhirUri? resource,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicEventTriggerCopyWithImpl<T>
    implements $SubscriptionTopicEventTriggerCopyWith<T> {
  final SubscriptionTopicEventTrigger _value;
  final T Function(SubscriptionTopicEventTrigger) _then;

  _$SubscriptionTopicEventTriggerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? event = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopicEventTrigger(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : (event as CodeableConcept?) ?? _value.event,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as FhirUri?) ?? _value.resource,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionTopicEventTriggerCopyWithExtension
    on SubscriptionTopicEventTrigger {
  $SubscriptionTopicEventTriggerCopyWith<SubscriptionTopicEventTrigger>
      get copyWith => _$SubscriptionTopicEventTriggerCopyWithImpl<
              SubscriptionTopicEventTrigger>(
            this,
            (value) => value,
          );
}

abstract class $SubscriptionTopicCanFilterByCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    FhirUri? resource,
    FhirString? filterParameter,
    FhirUri? filterDefinition,
    List<SubscriptionSearchModifier>? modifier,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicCanFilterByCopyWithImpl<T>
    implements $SubscriptionTopicCanFilterByCopyWith<T> {
  final SubscriptionTopicCanFilterBy _value;
  final T Function(SubscriptionTopicCanFilterBy) _then;

  _$SubscriptionTopicCanFilterByCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? filterParameter = fhirSentinel,
    Object? filterDefinition = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopicCanFilterBy(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as FhirUri?,
        filterParameter: identical(filterParameter, fhirSentinel)
            ? _value.filterParameter
            : (filterParameter as FhirString?) ?? _value.filterParameter,
        filterDefinition: identical(filterDefinition, fhirSentinel)
            ? _value.filterDefinition
            : filterDefinition as FhirUri?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<SubscriptionSearchModifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionTopicCanFilterByCopyWithExtension
    on SubscriptionTopicCanFilterBy {
  $SubscriptionTopicCanFilterByCopyWith<SubscriptionTopicCanFilterBy>
      get copyWith => _$SubscriptionTopicCanFilterByCopyWithImpl<
              SubscriptionTopicCanFilterBy>(
            this,
            (value) => value,
          );
}

abstract class $SubscriptionTopicNotificationShapeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? resource,
    List<FhirString>? include,
    List<FhirString>? revInclude,
    bool? disallowExtensions,
  });
}

class _$SubscriptionTopicNotificationShapeCopyWithImpl<T>
    implements $SubscriptionTopicNotificationShapeCopyWith<T> {
  final SubscriptionTopicNotificationShape _value;
  final T Function(SubscriptionTopicNotificationShape) _then;

  _$SubscriptionTopicNotificationShapeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? include = fhirSentinel,
    Object? revInclude = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionTopicNotificationShape(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as FhirUri?) ?? _value.resource,
        include: identical(include, fhirSentinel)
            ? _value.include
            : include as List<FhirString>?,
        revInclude: identical(revInclude, fhirSentinel)
            ? _value.revInclude
            : revInclude as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionTopicNotificationShapeCopyWithExtension
    on SubscriptionTopicNotificationShape {
  $SubscriptionTopicNotificationShapeCopyWith<
          SubscriptionTopicNotificationShape>
      get copyWith => _$SubscriptionTopicNotificationShapeCopyWithImpl<
              SubscriptionTopicNotificationShape>(
            this,
            (value) => value,
          );
}
