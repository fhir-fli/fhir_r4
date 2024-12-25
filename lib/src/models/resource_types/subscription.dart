import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Subscription]
/// The subscription resource is used to define a push-based subscription
/// from a server to another system. Once a subscription is registered with
/// the server, the server checks every resource that is created or
/// updated, and if the resource matches the given criteria, it sends a
/// message on the defined "channel" so that another system can take an
/// appropriate action.
class Subscription extends DomainResource {
  /// Primary constructor for
  /// [Subscription]

  const Subscription({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.contact,
    this.end,
    required this.reason,
    required this.criteria,
    this.error,
    required this.channel,
  }) : super(
          objectPath: 'Subscription',
          resourceType: R4ResourceType.Subscription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Subscription.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Subscription';
    return Subscription(
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contained',
                  },
                ),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<SubscriptionStatusCodes>(
        json,
        'status',
        SubscriptionStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contact',
                  },
                ),
            ),
          )
          .toList(),
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
        '$objectPath.end',
      ),
      reason: JsonParser.parsePrimitive<FhirString>(
        json,
        'reason',
        FhirString.fromJson,
        '$objectPath.reason',
      )!,
      criteria: JsonParser.parsePrimitive<FhirString>(
        json,
        'criteria',
        FhirString.fromJson,
        '$objectPath.criteria',
      )!,
      error: JsonParser.parsePrimitive<FhirString>(
        json,
        'error',
        FhirString.fromJson,
        '$objectPath.error',
      ),
      channel: JsonParser.parseObject<SubscriptionChannel>(
        json,
        'channel',
        SubscriptionChannel.fromJson,
        '$objectPath.channel',
      )!,
    );
  }

  /// Deserialize [Subscription]
  /// from a [String] or [YamlMap] object
  factory Subscription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Subscription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Subscription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Subscription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Subscription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Subscription.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Subscription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Subscription';

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  final SubscriptionStatusCodes status;

  /// [contact]
  /// Contact details for a human to contact about the subscription. The
  /// primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [end]
  /// The time for the server to turn the subscription off.
  final FhirInstant? end;

  /// [reason]
  /// A description of why this subscription is defined.
  final FhirString reason;

  /// [criteria]
  /// The rules that the server should use to determine when to generate
  /// notifications for this subscription.
  final FhirString criteria;

  /// [error]
  /// A record of the last error that occurred when the server processed a
  /// notification.
  final FhirString? error;

  /// [channel]
  /// Details where to send notifications when resources are received that
  /// meet the criteria.
  final SubscriptionChannel channel;
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
    addField('contact', contact);
    addField('end', end);
    addField('reason', reason);
    addField('criteria', criteria);
    addField('error', error);
    addField('channel', channel);
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
      'contact',
      'end',
      'reason',
      'criteria',
      'error',
      'channel',
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
        fields.add(status);
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'reason':
        fields.add(reason);
      case 'criteria':
        fields.add(criteria);
      case 'error':
        if (error != null) {
          fields.add(error!);
        }
      case 'channel':
        fields.add(channel);
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
  Subscription clone() => throw UnimplementedError();
  @override
  Subscription copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Subscription(
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
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
      criteria: criteria?.copyWith(
            objectPath: '$newObjectPath.criteria',
          ) ??
          this.criteria,
      error: error?.copyWith(
            objectPath: '$newObjectPath.error',
          ) ??
          this.error,
      channel: channel?.copyWith(
            objectPath: '$newObjectPath.channel',
          ) ??
          this.channel,
    );
  }
}

/// [SubscriptionChannel]
/// Details where to send notifications when resources are received that
/// meet the criteria.
class SubscriptionChannel extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionChannel]

  const SubscriptionChannel({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.endpoint,
    this.payload,
    this.header,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Subscription.channel',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionChannel.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Subscription.channel';
    return SubscriptionChannel(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<SubscriptionChannelType>(
        json,
        'type',
        SubscriptionChannelType.fromJson,
        '$objectPath.type',
      )!,
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
        '$objectPath.endpoint',
      ),
      payload: JsonParser.parsePrimitive<FhirCode>(
        json,
        'payload',
        FhirCode.fromJson,
        '$objectPath.payload',
      ),
      header: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'header',
        FhirString.fromJson,
        '$objectPath.header',
      ),
    );
  }

  /// Deserialize [SubscriptionChannel]
  /// from a [String] or [YamlMap] object
  factory SubscriptionChannel.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionChannel.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionChannel.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionChannel '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionChannel]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionChannel.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionChannel.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionChannel';

  /// [type]
  /// The type of channel to send notifications on.
  final SubscriptionChannelType type;

  /// [endpoint]
  /// The url that describes the actual end-point to send messages to.
  final FhirUrl? endpoint;

  /// [payload]
  /// The mime type to send the payload in - either application/fhir+xml, or
  /// application/fhir+json. If the payload is not present, then there is no
  /// payload in the notification, just a notification. The mime type
  /// "text/plain" may also be used for Email and SMS subscriptions.
  final FhirCode? payload;

  /// [header]
  /// Additional headers / information to send as part of the notification.
  final List<FhirString>? header;
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
    addField('type', type);
    addField('endpoint', endpoint);
    addField('payload', payload);
    addField('header', header);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'endpoint',
      'payload',
      'header',
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
      case 'type':
        fields.add(type);
      case 'endpoint':
        if (endpoint != null) {
          fields.add(endpoint!);
        }
      case 'payload':
        if (payload != null) {
          fields.add(payload!);
        }
      case 'header':
        if (header != null) {
          fields.addAll(header!);
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
  SubscriptionChannel clone() => throw UnimplementedError();
  @override
  SubscriptionChannel copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SubscriptionChannelType? type,
    FhirUrl? endpoint,
    FhirCode? payload,
    List<FhirString>? header,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionChannel(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      endpoint: endpoint?.copyWith(
            objectPath: '$newObjectPath.endpoint',
          ) ??
          this.endpoint,
      payload: payload?.copyWith(
            objectPath: '$newObjectPath.payload',
          ) ??
          this.payload,
      header: header
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.header',
                ),
              )
              .toList() ??
          this.header,
    );
  }
}
