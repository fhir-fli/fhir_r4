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
  /// Primary constructor for [Subscription]

  Subscription({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Subscription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      end: json['end'] != null
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
      error: json['error'] != null
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

  /// Deserialize [Subscription] from a [String]
  /// or [YamlMap] object
  factory Subscription.fromYaml(dynamic yaml) => yaml is String
      ? Subscription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Subscription.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Subscription cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Subscription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Subscription.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (text != null) {
      final primitiveJson = text!.toJson();
      json['text'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_text'] = primitiveJson['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final primitiveList = contained!.map((e) => e.toJson()).toList();
      json['contained'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contained'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final primitiveJson = status!.toJson();
      json['status'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_status'] = primitiveJson['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final primitiveList = contact!.map((e) => e.toJson()).toList();
      json['contact'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contact'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (end != null) {
      final primitiveJson = end!.toJson();
      json['end'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_end'] = primitiveJson['_value'];
      }
    }

    if (reason != null) {
      final primitiveJson = reason!.toJson();
      json['reason'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_reason'] = primitiveJson['_value'];
      }
    }

    if (criteria != null) {
      final primitiveJson = criteria!.toJson();
      json['criteria'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_criteria'] = primitiveJson['_value'];
      }
    }

    if (error != null) {
      final primitiveJson = error!.toJson();
      json['error'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_error'] = primitiveJson['_value'];
      }
    }

    if (channel != null) {
      final primitiveJson = channel!.toJson();
      json['channel'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_channel'] = primitiveJson['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubscriptionChannel]
/// Details where to send notifications when resources are received that
/// meet the criteria.
class SubscriptionChannel extends BackboneElement {
  /// Primary constructor for [SubscriptionChannel]

  SubscriptionChannel({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.endpoint,
    this.payload,
    this.header,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionChannel.fromJson(Map<String, dynamic> json) {
    return SubscriptionChannel(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      endpoint: json['endpoint'] != null
          ? FhirUrl.fromJson({
              'value': json['endpoint'],
              '_value': json['_endpoint'],
            })
          : null,
      payload: json['payload'] != null
          ? FhirCode.fromJson({
              'value': json['payload'],
              '_value': json['_payload'],
            })
          : null,
      header: parsePrimitiveList<FhirString>(
          json['header'] as List<dynamic>?, json['_header'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
    );
  }

  /// Deserialize [SubscriptionChannel] from a [String]
  /// or [YamlMap] object
  factory SubscriptionChannel.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionChannel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionChannel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionChannel cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionChannel]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionChannel.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final primitiveJson = type!.toJson();
      json['type'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_type'] = primitiveJson['_value'];
      }
    }

    if (endpoint != null) {
      final primitiveJson = endpoint!.toJson();
      json['endpoint'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_endpoint'] = primitiveJson['_value'];
      }
    }

    if (payload != null) {
      final primitiveJson = payload!.toJson();
      json['payload'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_payload'] = primitiveJson['_value'];
      }
    }

    if (header != null && header!.isNotEmpty) {
      final primitiveList = header!.map((e) => e.toJson()).toList();
      json['header'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_header'] = primitiveList.map((e) => e['_value']).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
