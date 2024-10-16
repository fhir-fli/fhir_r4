import 'package:fhir_r4/fhir_r4.dart';

/// The status of a subscription.
enum SubscriptionStatusCodes {
  /// Display: Requested
  /// Definition: The client has requested the subscription, and the server has not yet set it up.
  requested('requested'),

  /// Display: Active
  /// Definition: The subscription is active.
  active('active'),

  /// Display: Error
  /// Definition: The server has an error executing the notification.
  error('error'),

  /// Display: Off
  /// Definition: Too many errors have occurred or the subscription has expired.
  off('off'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubscriptionStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubscriptionStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly.withElement(element);
    }
    return SubscriptionStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
