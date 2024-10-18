// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of notification represented by the status message.
enum SubscriptionNotificationType {
  /// Display: Handshake
  /// Definition: The status was generated as part of the setup or verification of a communications channel.
  handshake('handshake'),

  /// Display: Heartbeat
  /// Definition: The status was generated to perform a heartbeat notification to the subscriber.
  heartbeat('heartbeat'),

  /// Display: Event Notification
  /// Definition: The status was generated for an event to the subscriber.
  event_notification('event-notification'),

  /// Display: Query Status
  /// Definition: The status was generated in response to a status query/request.
  query_status('query-status'),

  /// Display: Query Event
  /// Definition: The status was generated in response to an event query/request.
  query_event('query-event'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubscriptionNotificationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubscriptionNotificationType] instances.
  static SubscriptionNotificationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationType.elementOnly.withElement(element);
    }
    return SubscriptionNotificationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
