import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'subscription.g.dart';

/// [Subscription] /// The subscription resource is used to define a push-based subscription from
/// a server to another system. Once a subscription is registered with the
/// server, the server checks every resource that is created or updated, and if
/// the resource matches the given criteria, it sends a message on the defined
/// "channel" so that another system can take an appropriate action.
@JsonSerializable()
class Subscription extends DomainResource {
  Subscription({
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
    required this.status,
    this.statusElement,
    this.contact,
    this.end,
    this.endElement,
    required this.reason,
    this.reasonElement,
    required this.criteria,
    this.criteriaElement,
    this.error,
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
            fhirType: 'Subscription');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status of the subscription, which marks the server state for managing
  /// the subscription.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [contact] /// Contact details for a human to contact about the subscription. The primary
  /// use of this for system administrator troubleshooting.
  @JsonKey(name: 'contact')
  final List<ContactPoint>? contact;

  /// [end] /// The time for the server to turn the subscription off.
  @JsonKey(name: 'end')
  final FhirInstant? end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [reason] /// A description of why this subscription is defined.
  @JsonKey(name: 'reason')
  final FhirString reason;
  @JsonKey(name: '_reason')
  final Element? reasonElement;

  /// [criteria] /// The rules that the server should use to determine when to generate
  /// notifications for this subscription.
  @JsonKey(name: 'criteria')
  final FhirString criteria;
  @JsonKey(name: '_criteria')
  final Element? criteriaElement;

  /// [error] /// A record of the last error that occurred when the server processed a
  /// notification.
  @JsonKey(name: 'error')
  final FhirString? error;
  @JsonKey(name: '_error')
  final Element? errorElement;

  /// [channel] /// Details where to send notifications when resources are received that meet
  /// the criteria.
  @JsonKey(name: 'channel')
  final SubscriptionChannel channel;
  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @override
  Subscription clone() => throw UnimplementedError();
  @override
  Subscription copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
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

  factory Subscription.fromYaml(dynamic yaml) => yaml is String
      ? Subscription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Subscription.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Subscription cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Subscription.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Subscription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionChannel] /// Details where to send notifications when resources are received that meet
/// the criteria.
@JsonSerializable()
class SubscriptionChannel extends BackboneElement {
  SubscriptionChannel({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.endpoint,
    this.endpointElement,
    this.payload,
    this.payloadElement,
    this.header,
    this.headerElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionChannel');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of channel to send notifications on.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [endpoint] /// The url that describes the actual end-point to send messages to.
  @JsonKey(name: 'endpoint')
  final FhirUrl? endpoint;
  @JsonKey(name: '_endpoint')
  final Element? endpointElement;

  /// [payload] /// The mime type to send the payload in - either application/fhir+xml, or
  /// application/fhir+json. If the payload is not present, then there is no
  /// payload in the notification, just a notification. The mime type
  /// "text/plain" may also be used for Email and SMS subscriptions.
  @JsonKey(name: 'payload')
  final FhirCode? payload;
  @JsonKey(name: '_payload')
  final Element? payloadElement;

  /// [header] /// Additional headers / information to send as part of the notification.
  @JsonKey(name: 'header')
  final List<FhirString>? header;
  @JsonKey(name: '_header')
  final List<Element>? headerElement;
  factory SubscriptionChannel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionChannelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionChannelToJson(this);

  @override
  SubscriptionChannel clone() => throw UnimplementedError();
  @override
  SubscriptionChannel copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
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

  factory SubscriptionChannel.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionChannel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionChannel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionChannel cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionChannel.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionChannel.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
