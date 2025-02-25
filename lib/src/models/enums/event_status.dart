// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an event.
class EventStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  EventStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [EventStatus] with element only
  factory EventStatus.empty() => EventStatus._('');

  /// Factory constructor to create [EventStatus] from JSON.
  factory EventStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventStatus cannot be constructed from JSON.',
      );
    }
    return EventStatus._(
      value,
      element: element,
    );
  }

  /// preparation
  static final EventStatus preparation = EventStatus._(
    'preparation',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preparation'.toFhirString,
  );

  /// in_progress
  static final EventStatus in_progress = EventStatus._(
    'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final EventStatus not_done = EventStatus._(
    'not-done',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final EventStatus on_hold = EventStatus._(
    'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// stopped
  static final EventStatus stopped = EventStatus._(
    'stopped',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// completed
  static final EventStatus completed = EventStatus._(
    'completed',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final EventStatus entered_in_error = EventStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final EventStatus unknown = EventStatus._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/event-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
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

  /// Clones the current instance
  @override
  EventStatus clone() => EventStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventStatus withElement(Element? newElement) {
    return EventStatus._(
      value,
      element: newElement,
    );
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
  EventStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EventStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
