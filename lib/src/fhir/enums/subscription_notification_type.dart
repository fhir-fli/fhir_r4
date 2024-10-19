// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of notification represented by the status message.
@collection
class SubscriptionNotificationType {
  /// Constructor for internal use (like enum)
  SubscriptionNotificationType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionNotificationType values
  /// handshake
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionNotificationType handshake =
      SubscriptionNotificationType(
    fhirCode: 'handshake',
  );

  /// heartbeat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionNotificationType heartbeat =
      SubscriptionNotificationType(
    fhirCode: 'heartbeat',
  );

  /// event_notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionNotificationType event_notification =
      SubscriptionNotificationType(
    fhirCode: 'event-notification',
  );

  /// query_status
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionNotificationType query_status =
      SubscriptionNotificationType(
    fhirCode: 'query-status',
  );

  /// query_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionNotificationType query_event =
      SubscriptionNotificationType(
    fhirCode: 'query-event',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionNotificationType elementOnly =
      SubscriptionNotificationType();

  /// List of all enum-like values
  static final List<SubscriptionNotificationType> values = [
    handshake,
    heartbeat,
    event_notification,
    query_status,
    query_event,
  ];

  /// Returns the enum value with an element attached
  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubscriptionNotificationType] from JSON.
  static SubscriptionNotificationType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriptionNotificationType.$fhirCode';
}
