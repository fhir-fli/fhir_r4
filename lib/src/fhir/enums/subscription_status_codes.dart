// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubscriptionStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubscriptionStatusCodes] instances.
  static SubscriptionStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly.withElement(
        element,
      );
    }
    return SubscriptionStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
