// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
class ImmunizationEvaluationStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes] from JSON.
  factory ImmunizationEvaluationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationStatusCodes._(value, element);
  }

  /// in_progress
  static final ImmunizationEvaluationStatusCodes in_progress =
      ImmunizationEvaluationStatusCodes._(
    'in-progress',
  );

  /// not_done
  static final ImmunizationEvaluationStatusCodes not_done =
      ImmunizationEvaluationStatusCodes._(
    'not-done',
  );

  /// on_hold
  static final ImmunizationEvaluationStatusCodes on_hold =
      ImmunizationEvaluationStatusCodes._(
    'on-hold',
  );

  /// completed
  static final ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final ImmunizationEvaluationStatusCodes entered_in_error =
      ImmunizationEvaluationStatusCodes._(
    'entered-in-error',
  );

  /// stopped
  static final ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes._(
    'stopped',
  );

  /// unknown
  static final ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationStatusCodes elementOnly =
      ImmunizationEvaluationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationStatusCodes clone() =>
      ImmunizationEvaluationStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationEvaluationStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationEvaluationStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes._(value, newElement);
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
  ImmunizationEvaluationStatusCodes copyWith({
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
    return ImmunizationEvaluationStatusCodes._(
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
