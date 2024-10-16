import 'package:fhir_r4/fhir_r4.dart';

/// The type of method used to execute a subscription.
enum SubscriptionChannelType {
  /// Display: Rest Hook
  /// Definition: The channel is executed by making a post to the URI. If a payload is included, the URL is interpreted as the service base, and an update (PUT) is made.
  rest_hook('rest-hook'),

  /// Display: Websocket
  /// Definition: The channel is executed by sending a packet across a web socket connection maintained by the client. The URL identifies the websocket, and the client binds to this URL.
  websocket('websocket'),

  /// Display: Email
  /// Definition: The channel is executed by sending an email to the email addressed in the URI (which must be a mailto:).
  email('email'),

  /// Display: SMS
  /// Definition: The channel is executed by sending an SMS message to the phone number identified in the URL (tel:).
  sms('sms'),

  /// Display: Message
  /// Definition: The channel is executed by sending a message (e.g. a Bundle with a MessageHeader resource etc.) to the application identified in the URI.
  message('message'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubscriptionChannelType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubscriptionChannelType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType.elementOnly.withElement(element);
    }
    return SubscriptionChannelType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
