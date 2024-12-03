// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
class CarePlanActivityStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CarePlanActivityStatus._(super.value, [super.element]);

  /// Factory constructor to create [CarePlanActivityStatus] from JSON.
  factory CarePlanActivityStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityStatus cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityStatus._(value, element);
  }

  /// not_started
  static final CarePlanActivityStatus not_started = CarePlanActivityStatus._(
    'not-started',
  );

  /// scheduled
  static final CarePlanActivityStatus scheduled = CarePlanActivityStatus._(
    'scheduled',
  );

  /// in_progress
  static final CarePlanActivityStatus in_progress = CarePlanActivityStatus._(
    'in-progress',
  );

  /// on_hold
  static final CarePlanActivityStatus on_hold = CarePlanActivityStatus._(
    'on-hold',
  );

  /// completed
  static final CarePlanActivityStatus completed = CarePlanActivityStatus._(
    'completed',
  );

  /// cancelled
  static final CarePlanActivityStatus cancelled = CarePlanActivityStatus._(
    'cancelled',
  );

  /// stopped
  static final CarePlanActivityStatus stopped = CarePlanActivityStatus._(
    'stopped',
  );

  /// unknown
  static final CarePlanActivityStatus unknown = CarePlanActivityStatus._(
    'unknown',
  );

  /// entered_in_error
  static final CarePlanActivityStatus entered_in_error =
      CarePlanActivityStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityStatus elementOnly =
      CarePlanActivityStatus._('');

  /// List of all enum-like values
  static final List<CarePlanActivityStatus> values = [
    not_started,
    scheduled,
    in_progress,
    on_hold,
    completed,
    cancelled,
    stopped,
    unknown,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CarePlanActivityStatus clone() => CarePlanActivityStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CarePlanActivityStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return CarePlanActivityStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(value, newElement);
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
  CarePlanActivityStatus copyWith({
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
    return CarePlanActivityStatus._(
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
