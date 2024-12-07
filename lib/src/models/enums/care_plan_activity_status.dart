// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
class CarePlanActivityStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CarePlanActivityStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
    return CarePlanActivityStatus._(value: value, element: element);
  }

  /// not_started
  static final CarePlanActivityStatus not_started = CarePlanActivityStatus._(
    value: 'not-started',
  );

  /// scheduled
  static final CarePlanActivityStatus scheduled = CarePlanActivityStatus._(
    value: 'scheduled',
  );

  /// in_progress
  static final CarePlanActivityStatus in_progress = CarePlanActivityStatus._(
    value: 'in-progress',
  );

  /// on_hold
  static final CarePlanActivityStatus on_hold = CarePlanActivityStatus._(
    value: 'on-hold',
  );

  /// completed
  static final CarePlanActivityStatus completed = CarePlanActivityStatus._(
    value: 'completed',
  );

  /// cancelled
  static final CarePlanActivityStatus cancelled = CarePlanActivityStatus._(
    value: 'cancelled',
  );

  /// stopped
  static final CarePlanActivityStatus stopped = CarePlanActivityStatus._(
    value: 'stopped',
  );

  /// unknown
  static final CarePlanActivityStatus unknown = CarePlanActivityStatus._(
    value: 'unknown',
  );

  /// entered_in_error
  static final CarePlanActivityStatus entered_in_error =
      CarePlanActivityStatus._(
    value: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityStatus elementOnly =
      CarePlanActivityStatus._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(value: value, element: newElement);
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CarePlanActivityStatus._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
