// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of method used to execute a subscription.
class SubscriptionChannelType {
  // Private constructor for internal use (like enum)
  SubscriptionChannelType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionChannelType values
  /// rest_hook
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionChannelType rest_hook = SubscriptionChannelType._(
    'rest-hook',
  );

  /// websocket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionChannelType websocket = SubscriptionChannelType._(
    'websocket',
  );

  /// email
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionChannelType email = SubscriptionChannelType._(
    'email',
  );

  /// sms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionChannelType sms = SubscriptionChannelType._(
    'sms',
  );

  /// message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionChannelType message = SubscriptionChannelType._(
    'message',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionChannelType elementOnly =
      SubscriptionChannelType._('');

  /// List of all enum-like values
  static final List<SubscriptionChannelType> values = [
    rest_hook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Returns the enum value with an element attached
  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubscriptionChannelType] from JSON.
  static SubscriptionChannelType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType.elementOnly.withElement(element);
    }
    return SubscriptionChannelType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
