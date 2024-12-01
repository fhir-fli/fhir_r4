// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a subscription.
class SubscriptionStatusCodes {
  // Private constructor for internal use (like enum)
  SubscriptionStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [SubscriptionStatusCodes] from JSON.
  factory SubscriptionStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly.withElement(element);
    }
    return SubscriptionStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionStatusCodes values
  /// requested
  static final SubscriptionStatusCodes requested = SubscriptionStatusCodes._(
    'requested',
  );

  /// active
  static final SubscriptionStatusCodes active = SubscriptionStatusCodes._(
    'active',
  );

  /// error
  static final SubscriptionStatusCodes error = SubscriptionStatusCodes._(
    'error',
  );

  /// off
  static final SubscriptionStatusCodes off = SubscriptionStatusCodes._(
    'off',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionStatusCodes elementOnly =
      SubscriptionStatusCodes._('');

  /// List of all enum-like values
  static final List<SubscriptionStatusCodes> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Returns the enum value with an element attached
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
