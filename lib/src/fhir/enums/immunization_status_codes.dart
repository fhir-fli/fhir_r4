// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the administered dose of vaccine.
class ImmunizationStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationStatusCodes] from JSON.
  factory ImmunizationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusCodes._(value, element);
  }

  /// preparation
  static final ImmunizationStatusCodes preparation = ImmunizationStatusCodes._(
    'preparation',
  );

  /// in_progress
  static final ImmunizationStatusCodes in_progress = ImmunizationStatusCodes._(
    'in-progress',
  );

  /// not_done
  static final ImmunizationStatusCodes not_done = ImmunizationStatusCodes._(
    'not-done',
  );

  /// on_hold
  static final ImmunizationStatusCodes on_hold = ImmunizationStatusCodes._(
    'on-hold',
  );

  /// stopped
  static final ImmunizationStatusCodes stopped = ImmunizationStatusCodes._(
    'stopped',
  );

  /// completed
  static final ImmunizationStatusCodes completed = ImmunizationStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final ImmunizationStatusCodes entered_in_error =
      ImmunizationStatusCodes._(
    'entered-in-error',
  );

  /// unknown
  static final ImmunizationStatusCodes unknown = ImmunizationStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationStatusCodes elementOnly =
      ImmunizationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationStatusCodes> values = [
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
  ImmunizationStatusCodes clone() => ImmunizationStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationStatusCodes withElement(Element? newElement) {
    return ImmunizationStatusCodes._(value, newElement);
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
  ImmunizationStatusCodes copyWith({
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
    return ImmunizationStatusCodes._(
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
