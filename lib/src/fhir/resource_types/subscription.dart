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

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.contact,
    this.end,

    /// Extensions for [end]
    this.endElement,
    required this.reason,

    /// Extensions for [reason]
    this.reasonElement,
    required this.criteria,

    /// Extensions for [criteria]
    this.criteriaElement,
    this.error,

    /// Extensions for [error]
    this.errorElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: SubscriptionStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>(
                (dynamic v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      end: json['end'] != null ? FhirInstant.fromJson(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(
              json['_end'] as Map<String, dynamic>,
            )
          : null,
      reason: FhirString.fromJson(json['reason']),
      reasonElement: json['_reason'] != null
          ? Element.fromJson(
              json['_reason'] as Map<String, dynamic>,
            )
          : null,
      criteria: FhirString.fromJson(json['criteria']),
      criteriaElement: json['_criteria'] != null
          ? Element.fromJson(
              json['_criteria'] as Map<String, dynamic>,
            )
          : null,
      error: json['error'] != null ? FhirString.fromJson(json['error']) : null,
      errorElement: json['_error'] != null
          ? Element.fromJson(
              json['_error'] as Map<String, dynamic>,
            )
          : null,
      channel: SubscriptionChannel.fromJson(
        json['channel'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [Subscription] from a [String] or [YamlMap] object
  factory Subscription.fromYaml(dynamic yaml) => yaml is String
      ? Subscription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Subscription.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Subscription cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Subscription] that takes in a [String]
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

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  final SubscriptionStatusCodes status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [contact]
  /// Contact details for a human to contact about the subscription. The
  /// primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [end]
  /// The time for the server to turn the subscription off.
  final FhirInstant? end;

  /// Extensions for [end]
  final Element? endElement;

  /// [reason]
  /// A description of why this subscription is defined.
  final FhirString reason;

  /// Extensions for [reason]
  final Element? reasonElement;

  /// [criteria]
  /// The rules that the server should use to determine when to generate
  /// notifications for this subscription.
  final FhirString criteria;

  /// Extensions for [criteria]
  final Element? criteriaElement;

  /// [error]
  /// A record of the last error that occurred when the server processed a
  /// notification.
  final FhirString? error;

  /// Extensions for [error]
  final Element? errorElement;

  /// [channel]
  /// Details where to send notifications when resources are received that
  /// meet the criteria.
  final SubscriptionChannel channel;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactPoint v) => v.toJson()).toList();
    }
    if (end?.value != null) {
      json['end'] = end!.toJson();
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    json['reason'] = reason.toJson();
    if (reasonElement != null) {
      json['_reason'] = reasonElement!.toJson();
    }
    json['criteria'] = criteria.toJson();
    if (criteriaElement != null) {
      json['_criteria'] = criteriaElement!.toJson();
    }
    if (error?.value != null) {
      json['error'] = error!.toJson();
    }
    if (errorElement != null) {
      json['_error'] = errorElement!.toJson();
    }
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SubscriptionStatusCodes? status,
    Element? statusElement,
    List<ContactPoint>? contact,
    FhirInstant? end,
    Element? endElement,
    FhirString? reason,
    Element? reasonElement,
    FhirString? criteria,
    Element? criteriaElement,
    FhirString? error,
    Element? errorElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      contact: contact ?? this.contact,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      reason: reason ?? this.reason,
      reasonElement: reasonElement ?? this.reasonElement,
      criteria: criteria ?? this.criteria,
      criteriaElement: criteriaElement ?? this.criteriaElement,
      error: error ?? this.error,
      errorElement: errorElement ?? this.errorElement,
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
    super.extension_,
    super.modifierExtension,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    this.endpoint,

    /// Extensions for [endpoint]
    this.endpointElement,
    this.payload,

    /// Extensions for [payload]
    this.payloadElement,
    this.header,

    /// Extensions for [header]
    this.headerElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: SubscriptionChannelType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      endpoint:
          json['endpoint'] != null ? FhirUrl.fromJson(json['endpoint']) : null,
      endpointElement: json['_endpoint'] != null
          ? Element.fromJson(
              json['_endpoint'] as Map<String, dynamic>,
            )
          : null,
      payload:
          json['payload'] != null ? FhirCode.fromJson(json['payload']) : null,
      payloadElement: json['_payload'] != null
          ? Element.fromJson(
              json['_payload'] as Map<String, dynamic>,
            )
          : null,
      header: json['header'] != null
          ? (json['header'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      headerElement: json['_header'] != null
          ? (json['_header'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionChannel] from a [String] or [YamlMap] object
  factory SubscriptionChannel.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionChannel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionChannel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionChannel cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionChannel] that takes in a [String]
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

  /// [type]
  /// The type of channel to send notifications on.
  final SubscriptionChannelType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [endpoint]
  /// The url that describes the actual end-point to send messages to.
  final FhirUrl? endpoint;

  /// Extensions for [endpoint]
  final Element? endpointElement;

  /// [payload]
  /// The mime type to send the payload in - either application/fhir+xml, or
  /// application/fhir+json. If the payload is not present, then there is no
  /// payload in the notification, just a notification. The mime type
  /// "text/plain" may also be used for Email and SMS subscriptions.
  final FhirCode? payload;

  /// Extensions for [payload]
  final Element? payloadElement;

  /// [header]
  /// Additional headers / information to send as part of the notification.
  final List<FhirString>? header;

  /// Extensions for [header]
  final List<Element>? headerElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (endpoint?.value != null) {
      json['endpoint'] = endpoint!.toJson();
    }
    if (endpointElement != null) {
      json['_endpoint'] = endpointElement!.toJson();
    }
    if (payload?.value != null) {
      json['payload'] = payload!.toJson();
    }
    if (payloadElement != null) {
      json['_payload'] = payloadElement!.toJson();
    }
    if (header != null && header!.isNotEmpty) {
      json['header'] = header!.map((FhirString v) => v.toJson()).toList();
    }
    if (headerElement != null && headerElement!.isNotEmpty) {
      json['_header'] = headerElement!.map((Element v) => v.toJson()).toList();
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
    Element? typeElement,
    FhirUrl? endpoint,
    Element? endpointElement,
    FhirCode? payload,
    Element? payloadElement,
    List<FhirString>? header,
    List<Element>? headerElement,
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
      typeElement: typeElement ?? this.typeElement,
      endpoint: endpoint ?? this.endpoint,
      endpointElement: endpointElement ?? this.endpointElement,
      payload: payload ?? this.payload,
      payloadElement: payloadElement ?? this.payloadElement,
      header: header ?? this.header,
      headerElement: headerElement ?? this.headerElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
