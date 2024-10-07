import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Subscription] /// The subscription resource is used to define a push-based subscription from
/// a server to another system. Once a subscription is registered with the
/// server, the server checks every resource that is created or updated, and if
/// the resource matches the given criteria, it sends a message on the defined
/// "channel" so that another system can take an appropriate action.
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
  }) : super(resourceType: R4ResourceType.Subscription);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status of the subscription, which marks the server state for managing
  /// the subscription.
  final FhirCode status;
  final Element? statusElement;

  /// [contact] /// Contact details for a human to contact about the subscription. The primary
  /// use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [end] /// The time for the server to turn the subscription off.
  final FhirInstant? end;
  final Element? endElement;

  /// [reason] /// A description of why this subscription is defined.
  final FhirString reason;
  final Element? reasonElement;

  /// [criteria] /// The rules that the server should use to determine when to generate
  /// notifications for this subscription.
  final FhirString criteria;
  final Element? criteriaElement;

  /// [error] /// A record of the last error that occurred when the server processed a
  /// notification.
  final FhirString? error;
  final Element? errorElement;

  /// [channel] /// Details where to send notifications when resources are received that meet
  /// the criteria.
  final SubscriptionChannel channel;
  @override
  Subscription clone() => throw UnimplementedError();
  Subscription copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionChannel] /// Details where to send notifications when resources are received that meet
/// the criteria.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of channel to send notifications on.
  final FhirCode type;
  final Element? typeElement;

  /// [endpoint] /// The url that describes the actual end-point to send messages to.
  final FhirUrl? endpoint;
  final Element? endpointElement;

  /// [payload] /// The mime type to send the payload in - either application/fhir+xml, or
  /// application/fhir+json. If the payload is not present, then there is no
  /// payload in the notification, just a notification. The mime type
  /// "text/plain" may also be used for Email and SMS subscriptions.
  final FhirCode? payload;
  final Element? payloadElement;

  /// [header] /// Additional headers / information to send as part of the notification.
  final List<FhirString>? header;
  final List<Element>? headerElement;
  @override
  SubscriptionChannel clone() => throw UnimplementedError();
  SubscriptionChannel copy({
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
    );
  }
}
