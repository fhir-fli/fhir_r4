// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an event.
class EventStatus {
  // Private constructor for internal use (like enum)
  EventStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [EventStatus] from JSON.
  factory EventStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatus.elementOnly.withElement(element);
    }
    return EventStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EventStatus values
  /// preparation
  static final EventStatus preparation = EventStatus._(
    'preparation',
  );

  /// in_progress
  static final EventStatus in_progress = EventStatus._(
    'in-progress',
  );

  /// not_done
  static final EventStatus not_done = EventStatus._(
    'not-done',
  );

  /// on_hold
  static final EventStatus on_hold = EventStatus._(
    'on-hold',
  );

  /// stopped
  static final EventStatus stopped = EventStatus._(
    'stopped',
  );

  /// completed
  static final EventStatus completed = EventStatus._(
    'completed',
  );

  /// entered_in_error
  static final EventStatus entered_in_error = EventStatus._(
    'entered-in-error',
  );

  /// unknown
  static final EventStatus unknown = EventStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final EventStatus elementOnly = EventStatus._('');

  /// List of all enum-like values
  static final List<EventStatus> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  EventStatus withElement(Element? newElement) {
    return EventStatus._(fhirCode, element: newElement);
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
