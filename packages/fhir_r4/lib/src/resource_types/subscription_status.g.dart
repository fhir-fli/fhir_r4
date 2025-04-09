// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'subscription_status.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubscriptionStatusCopyWith<T>
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
    SubscriptionStatusCodes? status,
    SubscriptionNotificationType? type,
    FhirString? eventsSinceSubscriptionStart,
    List<SubscriptionStatusNotificationEvent>? notificationEvent,
    Reference? subscription,
    FhirCanonical? topic,
    List<CodeableConcept>? error,
    bool? disallowExtensions,
  });
}

class _$SubscriptionStatusCopyWithImpl<T>
    implements $SubscriptionStatusCopyWith<T> {
  final SubscriptionStatus _value;
  final T Function(SubscriptionStatus) _then;

  _$SubscriptionStatusCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? eventsSinceSubscriptionStart = fhirSentinel,
    Object? notificationEvent = fhirSentinel,
    Object? subscription = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? error = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionStatus(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as SubscriptionStatusCodes?,
        type: type as SubscriptionNotificationType? ?? _value.type,
        eventsSinceSubscriptionStart:
            identical(eventsSinceSubscriptionStart, fhirSentinel)
                ? _value.eventsSinceSubscriptionStart
                : eventsSinceSubscriptionStart as FhirString?,
        notificationEvent: identical(notificationEvent, fhirSentinel)
            ? _value.notificationEvent
            : notificationEvent as List<SubscriptionStatusNotificationEvent>?,
        subscription: subscription as Reference? ?? _value.subscription,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : topic as FhirCanonical?,
        error: identical(error, fhirSentinel)
            ? _value.error
            : error as List<CodeableConcept>?,
      ),
    );
  }
}

extension SubscriptionStatusCopyWithExtension on SubscriptionStatus {
  $SubscriptionStatusCopyWith<SubscriptionStatus> get copyWith =>
      _$SubscriptionStatusCopyWithImpl<SubscriptionStatus>(
        this,
        (value) => value,
      );
}

abstract class $SubscriptionStatusNotificationEventCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? eventNumber,
    FhirInstant? timestamp,
    Reference? focus,
    List<Reference>? additionalContext,
    bool? disallowExtensions,
  });
}

class _$SubscriptionStatusNotificationEventCopyWithImpl<T>
    implements $SubscriptionStatusNotificationEventCopyWith<T> {
  final SubscriptionStatusNotificationEvent _value;
  final T Function(SubscriptionStatusNotificationEvent) _then;

  _$SubscriptionStatusNotificationEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? eventNumber = fhirSentinel,
    Object? timestamp = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? additionalContext = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionStatusNotificationEvent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        eventNumber: eventNumber as FhirString? ?? _value.eventNumber,
        timestamp: identical(timestamp, fhirSentinel)
            ? _value.timestamp
            : timestamp as FhirInstant?,
        focus:
            identical(focus, fhirSentinel) ? _value.focus : focus as Reference?,
        additionalContext: identical(additionalContext, fhirSentinel)
            ? _value.additionalContext
            : additionalContext as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionStatusNotificationEventCopyWithExtension
    on SubscriptionStatusNotificationEvent {
  $SubscriptionStatusNotificationEventCopyWith<
          SubscriptionStatusNotificationEvent>
      get copyWith => _$SubscriptionStatusNotificationEventCopyWithImpl<
              SubscriptionStatusNotificationEvent>(
            this,
            (value) => value,
          );
}
