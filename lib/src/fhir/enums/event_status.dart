// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an event.
class EventStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EventStatus._(super.value, [super.element]);

  /// Factory constructor to create [EventStatus] from JSON.
  factory EventStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatus.elementOnly.withElement(element);
    }
    return EventStatus._(value, element);
  }

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

  /// Clones the current instance
  @override
  EventStatus clone() => EventStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EventStatus setElement(String name, dynamic elementValue) {
    return EventStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EventStatus withElement(Element? newElement) {
    return EventStatus._(value, newElement);
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
    return EventStatus._(
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
