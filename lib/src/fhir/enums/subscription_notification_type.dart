// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of notification represented by the status message.
class SubscriptionNotificationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubscriptionNotificationType._(super.value, [super.element]);

  /// Factory constructor to create [SubscriptionNotificationType] from JSON.
  factory SubscriptionNotificationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationType.elementOnly.withElement(element);
    }
    return SubscriptionNotificationType._(value, element);
  }

  /// handshake
  static final SubscriptionNotificationType handshake =
      SubscriptionNotificationType._(
    'handshake',
  );

  /// heartbeat
  static final SubscriptionNotificationType heartbeat =
      SubscriptionNotificationType._(
    'heartbeat',
  );

  /// event_notification
  static final SubscriptionNotificationType event_notification =
      SubscriptionNotificationType._(
    'event-notification',
  );

  /// query_status
  static final SubscriptionNotificationType query_status =
      SubscriptionNotificationType._(
    'query-status',
  );

  /// query_event
  static final SubscriptionNotificationType query_event =
      SubscriptionNotificationType._(
    'query-event',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionNotificationType elementOnly =
      SubscriptionNotificationType._('');

  /// List of all enum-like values
  static final List<SubscriptionNotificationType> values = [
    handshake,
    heartbeat,
    event_notification,
    query_status,
    query_event,
  ];

  /// Clones the current instance
  @override
  SubscriptionNotificationType clone() => SubscriptionNotificationType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubscriptionNotificationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubscriptionNotificationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  SubscriptionNotificationType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SubscriptionNotificationType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
