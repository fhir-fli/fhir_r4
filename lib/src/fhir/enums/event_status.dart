// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an event.
enum EventStatus {
  /// Display: Preparation
  /// Definition: The core event has not started yet, but some staging activities have begun (e.g. surgical suite preparation). Preparation stages may be tracked for billing purposes.
  preparation('preparation'),

  /// Display: In Progress
  /// Definition: The event is currently occurring.
  in_progress('in-progress'),

  /// Display: Not Done
  /// Definition: The event was terminated prior to any activity beyond preparation. I.e. The 'main' activity has not yet begun. The boundary between preparatory and the 'main' activity is context-specific.
  not_done('not-done'),

  /// Display: On Hold
  /// Definition: The event has been temporarily stopped but is expected to resume in the future.
  on_hold('on-hold'),

  /// Display: Stopped
  /// Definition: The event was terminated prior to the full completion of the intended activity but after at least some of the 'main' activity (beyond preparation) has occurred.
  stopped('stopped'),

  /// Display: Completed
  /// Definition: The event has now concluded.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "stopped" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this event. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EventStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EventStatus] instances.
  static EventStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatus.elementOnly.withElement(element);
    }
    return EventStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EventStatus withElement(Element? newElement) {
    return EventStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
