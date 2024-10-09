import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'subscription_status.g.dart';

/// [SubscriptionStatus] /// The SubscriptionStatus resource describes the state of a Subscription
/// during notifications.
@JsonSerializable()
class SubscriptionStatus extends DomainResource {
  SubscriptionStatus({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.status,
    this.statusElement,
    required this.type,
    this.typeElement,
    this.eventsSinceSubscriptionStart,
    this.eventsSinceSubscriptionStartElement,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.topicElement,
    this.error,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.SubscriptionStatus);
  @override
  String get fhirType => 'SubscriptionStatus';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status of the subscription, which marks the server state for managing
  /// the subscription.
  @JsonKey(name: 'status')
  final SubscriptionStatusCodes? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The type of event being conveyed with this notificaiton.
  @JsonKey(name: 'type')
  final SubscriptionNotificationType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [eventsSinceSubscriptionStart] /// The total number of actual events which have been generated since the
  /// Subscription was created (inclusive of this notification) - regardless of
  /// how many have been successfully communicated. This number is NOT
  /// incremented for handshake and heartbeat notifications.
  @JsonKey(name: 'eventsSinceSubscriptionStart')
  final FhirString? eventsSinceSubscriptionStart;
  @JsonKey(name: '_eventsSinceSubscriptionStart')
  final Element? eventsSinceSubscriptionStartElement;

  /// [notificationEvent] /// Detailed information about events relevant to this subscription
  /// notification.
  @JsonKey(name: 'notificationEvent')
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;

  /// [subscription] /// The reference to the Subscription which generated this notification.
  @JsonKey(name: 'subscription')
  final Reference subscription;

  /// [topic] /// The reference to the SubscriptionTopic for the Subscription which generated
  /// this notification.
  @JsonKey(name: 'topic')
  final FhirCanonical? topic;
  @JsonKey(name: '_topic')
  final Element? topicElement;

  /// [error] /// A record of errors that occurred when the server processed a notification.
  @JsonKey(name: 'error')
  final List<CodeableConcept>? error;
  factory SubscriptionStatus.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatusFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionStatusToJson(this);

  @override
  SubscriptionStatus clone() => throw UnimplementedError();
  @override
  SubscriptionStatus copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SubscriptionStatusCodes? status,
    Element? statusElement,
    SubscriptionNotificationType? type,
    Element? typeElement,
    FhirString? eventsSinceSubscriptionStart,
    Element? eventsSinceSubscriptionStartElement,
    List<SubscriptionStatusNotificationEvent>? notificationEvent,
    Reference? subscription,
    FhirCanonical? topic,
    Element? topicElement,
    List<CodeableConcept>? error,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubscriptionStatus(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      eventsSinceSubscriptionStart:
          eventsSinceSubscriptionStart ?? this.eventsSinceSubscriptionStart,
      eventsSinceSubscriptionStartElement:
          eventsSinceSubscriptionStartElement ??
              this.eventsSinceSubscriptionStartElement,
      notificationEvent: notificationEvent ?? this.notificationEvent,
      subscription: subscription ?? this.subscription,
      topic: topic ?? this.topic,
      topicElement: topicElement ?? this.topicElement,
      error: error ?? this.error,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionStatus.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionStatus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionStatus cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionStatusNotificationEvent] /// Detailed information about events relevant to this subscription
/// notification.
@JsonSerializable()
class SubscriptionStatusNotificationEvent extends BackboneElement {
  SubscriptionStatusNotificationEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.eventNumber,
    this.eventNumberElement,
    this.timestamp,
    this.timestampElement,
    this.focus,
    this.additionalContext,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SubscriptionStatusNotificationEvent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [eventNumber] /// The sequential number of this event in this subscription context. Note that
  /// this value is a 64-bit integer value, encoded as a string.
  @JsonKey(name: 'eventNumber')
  final FhirString eventNumber;
  @JsonKey(name: '_eventNumber')
  final Element? eventNumberElement;

  /// [timestamp] /// The actual time this event occured on the server.
  @JsonKey(name: 'timestamp')
  final FhirInstant? timestamp;
  @JsonKey(name: '_timestamp')
  final Element? timestampElement;

  /// [focus] /// The focus of this event. While this will usually be a reference to the
  /// focus resource of the event, it MAY contain a reference to a non-FHIR
  /// object.
  @JsonKey(name: 'focus')
  final Reference? focus;

  /// [additionalContext] /// Additional context information for this event. Generally, this will contain
  /// references to additional resources included with the event (e.g., the
  /// Patient relevant to an Encounter), however it MAY refer to non-FHIR
  /// objects.
  @JsonKey(name: 'additionalContext')
  final List<Reference>? additionalContext;
  factory SubscriptionStatusNotificationEvent.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionStatusNotificationEventFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionStatusNotificationEventToJson(this);

  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
  @override
  SubscriptionStatusNotificationEvent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? eventNumber,
    Element? eventNumberElement,
    FhirInstant? timestamp,
    Element? timestampElement,
    Reference? focus,
    List<Reference>? additionalContext,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubscriptionStatusNotificationEvent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventNumber: eventNumber ?? this.eventNumber,
      eventNumberElement: eventNumberElement ?? this.eventNumberElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      focus: focus ?? this.focus,
      additionalContext: additionalContext ?? this.additionalContext,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionStatusNotificationEvent.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionStatusNotificationEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionStatusNotificationEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionStatusNotificationEvent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionStatusNotificationEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionStatusNotificationEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
