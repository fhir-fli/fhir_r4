// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Categories.
class ConditionCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionCategoryCodes._(super.value, [super.element]);

  /// Factory constructor to create [ConditionCategoryCodes] from JSON.
  factory ConditionCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionCategoryCodes.elementOnly.withElement(element);
    }
    return ConditionCategoryCodes._(value, element);
  }

  /// problem_list_item
  static final ConditionCategoryCodes problem_list_item =
      ConditionCategoryCodes._(
    'problem-list-item',
  );

  /// encounter_diagnosis
  static final ConditionCategoryCodes encounter_diagnosis =
      ConditionCategoryCodes._(
    'encounter-diagnosis',
  );

  /// For instances where an Element is present but not value

  static final ConditionCategoryCodes elementOnly =
      ConditionCategoryCodes._('');

  /// List of all enum-like values
  static final List<ConditionCategoryCodes> values = [
    problem_list_item,
    encounter_diagnosis,
  ];

  /// Clones the current instance
  @override
  ConditionCategoryCodes clone() => ConditionCategoryCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConditionCategoryCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConditionCategoryCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConditionCategoryCodes withElement(Element? newElement) {
    return ConditionCategoryCodes._(value, newElement);
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
  ConditionCategoryCodes copyWith({
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
    return ConditionCategoryCodes._(
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
