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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.Subscription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Subscription.fromJson(
    Map<String, dynamic> json,
  ) {
    return Subscription(
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
      status: SubscriptionStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirInstant.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
      reason: FhirString.fromJson({
        'value': json['reason'],
        '_value': json['_reason'],
      }),
      criteria: FhirString.fromJson({
        'value': json['criteria'],
        '_value': json['_criteria'],
      }),
      error: (json['error'] != null || json['_error'] != null)
          ? FhirString.fromJson({
              'value': json['error'],
              '_value': json['_error'],
            })
          : null,
      channel: SubscriptionChannel.fromJson(
        json['channel'] as Map<String, dynamic>,
      ),
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('status', status);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('end', end);
    addField('reason', reason);
    addField('criteria', criteria);
    addField('error', error);
    json['channel'] = channel.toJson();

    return json;
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
    return Subscription(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      contact: contact ?? this.contact,
      end: end ?? this.end,
      reason: reason ?? this.reason,
      criteria: criteria ?? this.criteria,
      error: error ?? this.error,
      channel: channel ?? this.channel,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionChannel.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionChannel(
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
      type: SubscriptionChannelType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      endpoint: (json['endpoint'] != null || json['_endpoint'] != null)
          ? FhirUrl.fromJson({
              'value': json['endpoint'],
              '_value': json['_endpoint'],
            })
          : null,
      payload: (json['payload'] != null || json['_payload'] != null)
          ? FhirCode.fromJson({
              'value': json['payload'],
              '_value': json['_payload'],
            })
          : null,
      header: parsePrimitiveList<FhirString>(
        json['header'] as List<dynamic>?,
        json['_header'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('endpoint', endpoint);
    addField('payload', payload);
    if (header != null && header!.isNotEmpty) {
      final fieldJson0 = header!.map((e) => e.toJson()).toList();
      json['header'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_header'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    return json;
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
  }) {
    return SubscriptionChannel(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      endpoint: endpoint ?? this.endpoint,
      payload: payload ?? this.payload,
      header: header ?? this.header,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
