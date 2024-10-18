// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubscriptionChannelType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubscriptionChannelType] instances.
  static SubscriptionChannelType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType.elementOnly.withElement(element);
    }
    return SubscriptionChannelType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
