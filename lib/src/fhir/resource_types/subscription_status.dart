// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [SubscriptionStatus]
/// The SubscriptionStatus resource describes the state of a Subscription
/// during notifications.
@Entity()
class SubscriptionStatus extends DomainResource {
  /// Primary constructor for
  /// [SubscriptionStatus]

  SubscriptionStatus({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.status,
    required this.type,
    this.eventsSinceSubscriptionStart,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.error,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SubscriptionStatus,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionStatus(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: (json['status'] != null || json['_status'] != null)
          ? SubscriptionStatusCodes.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      type: SubscriptionNotificationType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      eventsSinceSubscriptionStart:
          (json['eventsSinceSubscriptionStart'] != null ||
                  json['_eventsSinceSubscriptionStart'] != null)
              ? FhirString.fromJson({
                  'value': json['eventsSinceSubscriptionStart'],
                  '_value': json['_eventsSinceSubscriptionStart'],
                })
              : null,
      notificationEvent: json['notificationEvent'] != null
          ? (json['notificationEvent'] as List<dynamic>)
              .map<SubscriptionStatusNotificationEvent>(
                (v) => SubscriptionStatusNotificationEvent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subscription: Reference.fromJson(
        json['subscription'] as Map<String, dynamic>,
      ),
      topic: (json['topic'] != null || json['_topic'] != null)
          ? FhirCanonical.fromJson({
              'value': json['topic'],
              '_value': json['_topic'],
            })
          : null,
      error: json['error'] != null
          ? (json['error'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionStatus]
  /// from a [String] or [YamlMap] object
  factory SubscriptionStatus.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? SubscriptionStatus.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? SubscriptionStatus.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'SubscriptionStatus '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [SubscriptionStatus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionStatus.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'SubscriptionStatus';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  SubscriptionStatusCodes? status;

  /// [type]
  /// The type of event being conveyed with this notificaiton.
  SubscriptionNotificationType type;

  /// [eventsSinceSubscriptionStart]
  /// The total number of actual events which have been generated since the
  /// Subscription was created (inclusive of this notification) - regardless
  /// of how many have been successfully communicated. This number is NOT
  /// incremented for handshake and heartbeat notifications.
  FhirString? eventsSinceSubscriptionStart;

  /// [notificationEvent]
  /// Detailed information about events relevant to this subscription
  /// notification.
  List<SubscriptionStatusNotificationEvent>? notificationEvent;

  /// [subscription]
  /// The reference to the Subscription which generated this notification.
  Reference subscription;

  /// [topic]
  /// The reference to the SubscriptionTopic for the Subscription which
  /// generated this notification.
  FhirCanonical? topic;

  /// [error]
  /// A record of errors that occurred when the server processed a
  /// notification.
  List<CodeableConcept>? error;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      final fieldJson7 = status!.toJson();
      json['status'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_status'] = fieldJson7['_value'];
      }
    }

    final fieldJson8 = type.toJson();
    json['type'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_type'] = fieldJson8['_value'];
    }

    if (eventsSinceSubscriptionStart != null) {
      final fieldJson9 = eventsSinceSubscriptionStart!.toJson();
      json['eventsSinceSubscriptionStart'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_eventsSinceSubscriptionStart'] = fieldJson9['_value'];
      }
    }

    if (notificationEvent != null && notificationEvent!.isNotEmpty) {
      json['notificationEvent'] =
          notificationEvent!.map((e) => e.toJson()).toList();
    }

    json['subscription'] = subscription.toJson();

    if (topic != null) {
      final fieldJson12 = topic!.toJson();
      json['topic'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_topic'] = fieldJson12['_value'];
      }
    }

    if (error != null && error!.isNotEmpty) {
      json['error'] = error!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  SubscriptionStatus clone() => throw UnimplementedError();
  @override
  SubscriptionStatus copyWith({
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      type: type ?? this.type,
      eventsSinceSubscriptionStart:
          eventsSinceSubscriptionStart ?? this.eventsSinceSubscriptionStart,
      notificationEvent: notificationEvent ?? this.notificationEvent,
      subscription: subscription ?? this.subscription,
      topic: topic ?? this.topic,
      error: error ?? this.error,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubscriptionStatusNotificationEvent]
/// Detailed information about events relevant to this subscription
/// notification.
@Entity()
class SubscriptionStatusNotificationEvent extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionStatusNotificationEvent]

  SubscriptionStatusNotificationEvent({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.eventNumber,
    this.timestamp,
    this.focus,
    this.additionalContext,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatusNotificationEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionStatusNotificationEvent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eventNumber: FhirString.fromJson({
        'value': json['eventNumber'],
        '_value': json['_eventNumber'],
      }),
      timestamp: (json['timestamp'] != null || json['_timestamp'] != null)
          ? FhirInstant.fromJson({
              'value': json['timestamp'],
              '_value': json['_timestamp'],
            })
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(
              json['focus'] as Map<String, dynamic>,
            )
          : null,
      additionalContext: json['additionalContext'] != null
          ? (json['additionalContext'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionStatusNotificationEvent]
  /// from a [String] or [YamlMap] object
  factory SubscriptionStatusNotificationEvent.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? SubscriptionStatusNotificationEvent.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? SubscriptionStatusNotificationEvent.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'SubscriptionStatusNotificationEvent '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [SubscriptionStatusNotificationEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionStatusNotificationEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionStatusNotificationEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'SubscriptionStatusNotificationEvent';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [eventNumber]
  /// The sequential number of this event in this subscription context. Note
  /// that this value is a 64-bit integer value, encoded as a string.
  FhirString eventNumber;

  /// [timestamp]
  /// The actual time this event occured on the server.
  FhirInstant? timestamp;

  /// [focus]
  /// The focus of this event. While this will usually be a reference to the
  /// focus resource of the event, it MAY contain a reference to a non-FHIR
  /// object.
  Reference? focus;

  /// [additionalContext]
  /// Additional context information for this event. Generally, this will
  /// contain references to additional resources included with the event
  /// (e.g., the Patient relevant to an Encounter), however it MAY refer to
  /// non-FHIR objects.
  List<Reference>? additionalContext;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = eventNumber.toJson();
    json['eventNumber'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_eventNumber'] = fieldJson2['_value'];
    }

    if (timestamp != null) {
      final fieldJson3 = timestamp!.toJson();
      json['timestamp'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_timestamp'] = fieldJson3['_value'];
      }
    }

    if (focus != null) {
      json['focus'] = focus!.toJson();
    }

    if (additionalContext != null && additionalContext!.isNotEmpty) {
      json['additionalContext'] =
          additionalContext!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
  @override
  SubscriptionStatusNotificationEvent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? eventNumber,
    FhirInstant? timestamp,
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
      timestamp: timestamp ?? this.timestamp,
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
}
