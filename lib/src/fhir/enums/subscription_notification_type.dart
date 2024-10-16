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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubscriptionNotificationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubscriptionNotificationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationType.elementOnly.withElement(element);
    }
    return SubscriptionNotificationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
