import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SubscriptionStatus]
/// The SubscriptionStatus resource describes the state of a Subscription
/// during notifications.
class SubscriptionStatus extends DomainResource {
  /// Primary constructor for
  /// [SubscriptionStatus]

  const SubscriptionStatus({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.status,
    required this.type,
    this.eventsSinceSubscriptionStart,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.error,
  }) : super(
          objectPath: 'SubscriptionStatus',
          resourceType: R4ResourceType.SubscriptionStatus,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionStatus';
    return SubscriptionStatus(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<SubscriptionStatusCodes>(
        json,
        'status',
        SubscriptionStatusCodes.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parsePrimitive<SubscriptionNotificationType>(
        json,
        'type',
        SubscriptionNotificationType.fromJson,
        '$objectPath.type',
      )!,
      eventsSinceSubscriptionStart: JsonParser.parsePrimitive<FhirString>(
        json,
        'eventsSinceSubscriptionStart',
        FhirString.fromJson,
        '$objectPath.eventsSinceSubscriptionStart',
      ),
      notificationEvent: (json['notificationEvent'] as List<dynamic>?)
          ?.map<SubscriptionStatusNotificationEvent>(
            (v) => SubscriptionStatusNotificationEvent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notificationEvent',
              },
            ),
          )
          .toList(),
      subscription: JsonParser.parseObject<Reference>(
        json,
        'subscription',
        Reference.fromJson,
        '$objectPath.subscription',
      )!,
      topic: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'topic',
        FhirCanonical.fromJson,
        '$objectPath.topic',
      ),
      error: (json['error'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.error',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubscriptionStatus]
  /// from a [String] or [YamlMap] object
  factory SubscriptionStatus.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionStatus.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionStatus.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionStatus '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionStatus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionStatus.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionStatus';

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  final SubscriptionStatusCodes? status;

  /// [type]
  /// The type of event being conveyed with this notificaiton.
  final SubscriptionNotificationType type;

  /// [eventsSinceSubscriptionStart]
  /// The total number of actual events which have been generated since the
  /// Subscription was created (inclusive of this notification) - regardless
  /// of how many have been successfully communicated. This number is NOT
  /// incremented for handshake and heartbeat notifications.
  final FhirString? eventsSinceSubscriptionStart;

  /// [notificationEvent]
  /// Detailed information about events relevant to this subscription
  /// notification.
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;

  /// [subscription]
  /// The reference to the Subscription which generated this notification.
  final Reference subscription;

  /// [topic]
  /// The reference to the SubscriptionTopic for the Subscription which
  /// generated this notification.
  final FhirCanonical? topic;

  /// [error]
  /// A record of errors that occurred when the server processed a
  /// notification.
  final List<CodeableConcept>? error;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('status', status);
    addField('type', type);
    addField('eventsSinceSubscriptionStart', eventsSinceSubscriptionStart);
    addField('notificationEvent', notificationEvent);
    addField('subscription', subscription);
    addField('topic', topic);
    addField('error', error);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'status',
      'type',
      'eventsSinceSubscriptionStart',
      'notificationEvent',
      'subscription',
      'topic',
      'error',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        fields.add(type);
      case 'eventsSinceSubscriptionStart':
        if (eventsSinceSubscriptionStart != null) {
          fields.add(eventsSinceSubscriptionStart!);
        }
      case 'notificationEvent':
        if (notificationEvent != null) {
          fields.addAll(notificationEvent!);
        }
      case 'subscription':
        fields.add(subscription);
      case 'topic':
        if (topic != null) {
          fields.add(topic!);
        }
      case 'error':
        if (error != null) {
          fields.addAll(error!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SubscriptionStatus(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      eventsSinceSubscriptionStart: eventsSinceSubscriptionStart?.copyWith(
            objectPath: '$newObjectPath.eventsSinceSubscriptionStart',
          ) ??
          this.eventsSinceSubscriptionStart,
      notificationEvent: notificationEvent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.notificationEvent',
                ),
              )
              .toList() ??
          this.notificationEvent,
      subscription: subscription?.copyWith(
            objectPath: '$newObjectPath.subscription',
          ) ??
          this.subscription,
      topic: topic?.copyWith(
            objectPath: '$newObjectPath.topic',
          ) ??
          this.topic,
      error: error
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.error',
                ),
              )
              .toList() ??
          this.error,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionStatus) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(
      eventsSinceSubscriptionStart,
      o.eventsSinceSubscriptionStart,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionStatusNotificationEvent>(
      notificationEvent,
      o.notificationEvent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subscription, o.subscription)) {
      return false;
    }
    if (!equalsDeepWithNull(topic, o.topic)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      error,
      o.error,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubscriptionStatusNotificationEvent]
/// Detailed information about events relevant to this subscription
/// notification.
class SubscriptionStatusNotificationEvent extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionStatusNotificationEvent]

  const SubscriptionStatusNotificationEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.eventNumber,
    this.timestamp,
    this.focus,
    this.additionalContext,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubscriptionStatus.notificationEvent',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionStatusNotificationEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionStatus.notificationEvent';
    return SubscriptionStatusNotificationEvent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      eventNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'eventNumber',
        FhirString.fromJson,
        '$objectPath.eventNumber',
      )!,
      timestamp: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'timestamp',
        FhirInstant.fromJson,
        '$objectPath.timestamp',
      ),
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
        '$objectPath.focus',
      ),
      additionalContext: (json['additionalContext'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalContext',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubscriptionStatusNotificationEvent]
  /// from a [String] or [YamlMap] object
  factory SubscriptionStatusNotificationEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionStatusNotificationEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionStatusNotificationEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionStatusNotificationEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionStatusNotificationEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionStatusNotificationEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionStatusNotificationEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionStatusNotificationEvent';

  /// [eventNumber]
  /// The sequential number of this event in this subscription context. Note
  /// that this value is a 64-bit integer value, encoded as a string.
  final FhirString eventNumber;

  /// [timestamp]
  /// The actual time this event occured on the server.
  final FhirInstant? timestamp;

  /// [focus]
  /// The focus of this event. While this will usually be a reference to the
  /// focus resource of the event, it MAY contain a reference to a non-FHIR
  /// object.
  final Reference? focus;

  /// [additionalContext]
  /// Additional context information for this event. Generally, this will
  /// contain references to additional resources included with the event
  /// (e.g., the Patient relevant to an Encounter), however it MAY refer to
  /// non-FHIR objects.
  final List<Reference>? additionalContext;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('eventNumber', eventNumber);
    addField('timestamp', timestamp);
    addField('focus', focus);
    addField('additionalContext', additionalContext);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'eventNumber',
      'timestamp',
      'focus',
      'additionalContext',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'eventNumber':
        fields.add(eventNumber);
      case 'timestamp':
        if (timestamp != null) {
          fields.add(timestamp!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'additionalContext':
        if (additionalContext != null) {
          fields.addAll(additionalContext!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionStatusNotificationEvent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      eventNumber: eventNumber?.copyWith(
            objectPath: '$newObjectPath.eventNumber',
          ) ??
          this.eventNumber,
      timestamp: timestamp?.copyWith(
            objectPath: '$newObjectPath.timestamp',
          ) ??
          this.timestamp,
      focus: focus?.copyWith(
            objectPath: '$newObjectPath.focus',
          ) ??
          this.focus,
      additionalContext: additionalContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalContext',
                ),
              )
              .toList() ??
          this.additionalContext,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionStatusNotificationEvent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(eventNumber, o.eventNumber)) {
      return false;
    }
    if (!equalsDeepWithNull(timestamp, o.timestamp)) {
      return false;
    }
    if (!equalsDeepWithNull(focus, o.focus)) {
      return false;
    }
    if (!listEquals<Reference>(
      additionalContext,
      o.additionalContext,
    )) {
      return false;
    }
    return true;
  }
}
