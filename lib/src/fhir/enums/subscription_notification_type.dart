// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of notification represented by the status message.
@Entity()
class SubscriptionNotificationType extends FhirCode {
  /// Factory constructor to create [SubscriptionNotificationType] from JSON.
  factory SubscriptionNotificationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubscriptionNotificationType._(value, element);
    }
    throw ArgumentError(
      'SubscriptionNotificationType.fromJson: JSON value is not a valid value',
    );
  }

  /// handshake
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionNotificationType.handshake([this.element])
      : dbValue = 'handshake',
        super('handshake', element);

  /// heartbeat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionNotificationType.heartbeat([this.element])
      : dbValue = 'heartbeat',
        super('heartbeat', element);

  /// event_notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionNotificationType.event_notification([this.element])
      : dbValue = 'event-notification',
        super('event-notification', element);

  /// query_status
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionNotificationType.query_status([this.element])
      : dbValue = 'query-status',
        super('query-status', element);

  /// query_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionNotificationType.query_event([this.element])
      : dbValue = 'query-event',
        super('query-event', element);

  /// For instances where an Element is present but not value

  SubscriptionNotificationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubscriptionNotificationType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'handshake',
    'heartbeat',
    'event-notification',
    'query-status',
    'query-event',
  ];

  /// Returns the enum value with an element attached
  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriptionNotificationType.$value';
}
