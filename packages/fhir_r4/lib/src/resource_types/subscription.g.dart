// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'subscription.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubscriptionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<ContactPoint>? contact,
    FhirInstant? end,
    FhirString? reason,
    FhirString? criteria,
    FhirString? error,
    SubscriptionChannel? channel,
    bool? disallowExtensions,
  });
}

class _$SubscriptionCopyWithImpl<T> implements $SubscriptionCopyWith<T> {
  final Subscription _value;
  final T Function(Subscription) _then;

  _$SubscriptionCopyWithImpl(this._value, this._then);

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
    Object? contact = fhirSentinel,
    Object? end = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? error = fhirSentinel,
    Object? channel = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Subscription(
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
        status: status as SubscriptionStatusCodes? ?? _value.status,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInstant?,
        reason: reason as FhirString? ?? _value.reason,
        criteria: criteria as FhirString? ?? _value.criteria,
        error: identical(error, fhirSentinel)
            ? _value.error
            : error as FhirString?,
        channel: channel as SubscriptionChannel? ?? _value.channel,
      ),
    );
  }
}

extension SubscriptionCopyWithExtension on Subscription {
  $SubscriptionCopyWith<Subscription> get copyWith =>
      _$SubscriptionCopyWithImpl<Subscription>(
        this,
        (value) => value,
      );
}

abstract class $SubscriptionChannelCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SubscriptionChannelType? type,
    FhirUrl? endpoint,
    FhirCode? payload,
    List<FhirString>? header,
    bool? disallowExtensions,
  });
}

class _$SubscriptionChannelCopyWithImpl<T>
    implements $SubscriptionChannelCopyWith<T> {
  final SubscriptionChannel _value;
  final T Function(SubscriptionChannel) _then;

  _$SubscriptionChannelCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? payload = fhirSentinel,
    Object? header = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionChannel(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as SubscriptionChannelType? ?? _value.type,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as FhirUrl?,
        payload: identical(payload, fhirSentinel)
            ? _value.payload
            : payload as FhirCode?,
        header: identical(header, fhirSentinel)
            ? _value.header
            : header as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionChannelCopyWithExtension on SubscriptionChannel {
  $SubscriptionChannelCopyWith<SubscriptionChannel> get copyWith =>
      _$SubscriptionChannelCopyWithImpl<SubscriptionChannel>(
        this,
        (value) => value,
      );
}
