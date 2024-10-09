import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [SubscriptionStatus] /// The SubscriptionStatus resource describes the state of a Subscription
/// during notifications.
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
  }) : super(resourceType: R4ResourceType.SubscriptionStatus);

  @override
  String get fhirType => 'SubscriptionStatus';

  @Id()
  int dbId = 0;

  /// [status] /// The status of the subscription, which marks the server state for managing
  /// the subscription.
  final SubscriptionStatusCodes? status;
  final Element? statusElement;

  /// [type] /// The type of event being conveyed with this notificaiton.
  final SubscriptionNotificationType type;
  final Element? typeElement;

  /// [eventsSinceSubscriptionStart] /// The total number of actual events which have been generated since the
  /// Subscription was created (inclusive of this notification) - regardless of
  /// how many have been successfully communicated. This number is NOT
  /// incremented for handshake and heartbeat notifications.
  final FhirString? eventsSinceSubscriptionStart;
  final Element? eventsSinceSubscriptionStartElement;

  /// [notificationEvent] /// Detailed information about events relevant to this subscription
  /// notification.
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;

  /// [subscription] /// The reference to the Subscription which generated this notification.
  final Reference subscription;

  /// [topic] /// The reference to the SubscriptionTopic for the Subscription which generated
  /// this notification.
  final FhirCanonical? topic;
  final Element? topicElement;

  /// [error] /// A record of errors that occurred when the server processed a notification.
  final List<CodeableConcept>? error;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    json['type'] = type.toJson();
    if (eventsSinceSubscriptionStart?.value != null) {
      json['eventsSinceSubscriptionStart'] =
          eventsSinceSubscriptionStart!.value;
    }
    if (eventsSinceSubscriptionStartElement != null) {
      json['_eventsSinceSubscriptionStart'] =
          eventsSinceSubscriptionStartElement!.toJson();
    }
    if (notificationEvent != null && notificationEvent!.isNotEmpty) {
      json['notificationEvent'] = notificationEvent!
          .map<dynamic>((SubscriptionStatusNotificationEvent v) => v.toJson())
          .toList();
    }
    json['subscription'] = subscription.toJson();
    if (topic?.value != null) {
      json['topic'] = topic!.value;
    }
    if (topicElement != null) {
      json['_topic'] = topicElement!.toJson();
    }
    if (error != null && error!.isNotEmpty) {
      json['error'] =
          error!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    return json;
  }

  factory SubscriptionStatus.fromJson(Map<String, dynamic> json) {
    return SubscriptionStatus(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: json['status'] != null
          ? SubscriptionStatusCodes.fromJson(
              json['status'] as Map<String, dynamic>)
          : null,
      type: SubscriptionNotificationType.fromJson(
          json['type'] as Map<String, dynamic>),
      eventsSinceSubscriptionStart: json['eventsSinceSubscriptionStart'] != null
          ? FhirString(json['eventsSinceSubscriptionStart'])
          : null,
      eventsSinceSubscriptionStartElement:
          json['_eventsSinceSubscriptionStart'] != null
              ? Element.fromJson(
                  json['_eventsSinceSubscriptionStart'] as Map<String, dynamic>)
              : null,
      notificationEvent: json['notificationEvent'] != null
          ? (json['notificationEvent'] as List<dynamic>)
              .map<SubscriptionStatusNotificationEvent>((dynamic v) =>
                  SubscriptionStatusNotificationEvent.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      subscription:
          Reference.fromJson(json['subscription'] as Map<String, dynamic>),
      topic: json['topic'] != null ? FhirCanonical(json['topic']) : null,
      topicElement: json['_topic'] != null
          ? Element.fromJson(json['_topic'] as Map<String, dynamic>)
          : null,
      error: json['error'] != null
          ? (json['error'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [eventNumber] /// The sequential number of this event in this subscription context. Note that
  /// this value is a 64-bit integer value, encoded as a string.
  final FhirString eventNumber;
  final Element? eventNumberElement;

  /// [timestamp] /// The actual time this event occured on the server.
  final FhirInstant? timestamp;
  final Element? timestampElement;

  /// [focus] /// The focus of this event. While this will usually be a reference to the
  /// focus resource of the event, it MAY contain a reference to a non-FHIR
  /// object.
  final Reference? focus;

  /// [additionalContext] /// Additional context information for this event. Generally, this will contain
  /// references to additional resources included with the event (e.g., the
  /// Patient relevant to an Encounter), however it MAY refer to non-FHIR
  /// objects.
  final List<Reference>? additionalContext;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['eventNumber'] = eventNumber.value;
    if (eventNumberElement != null) {
      json['_eventNumber'] = eventNumberElement!.toJson();
    }
    if (timestamp?.value != null) {
      json['timestamp'] = timestamp!.value;
    }
    if (timestampElement != null) {
      json['_timestamp'] = timestampElement!.toJson();
    }
    if (focus != null) {
      json['focus'] = focus!.toJson();
    }
    if (additionalContext != null && additionalContext!.isNotEmpty) {
      json['additionalContext'] =
          additionalContext!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory SubscriptionStatusNotificationEvent.fromJson(
      Map<String, dynamic> json) {
    return SubscriptionStatusNotificationEvent(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      eventNumber: FhirString(json['eventNumber']),
      eventNumberElement:
          Element.fromJson(json['_eventNumber'] as Map<String, dynamic>),
      timestamp:
          json['timestamp'] != null ? FhirInstant(json['timestamp']) : null,
      timestampElement: json['_timestamp'] != null
          ? Element.fromJson(json['_timestamp'] as Map<String, dynamic>)
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(json['focus'] as Map<String, dynamic>)
          : null,
      additionalContext: json['additionalContext'] != null
          ? (json['additionalContext'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
