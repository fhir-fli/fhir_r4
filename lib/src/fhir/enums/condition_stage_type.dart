// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for the type of stages of cancer and other conditions
class ConditionStageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionStageType._(super.value, [super.element]);

  /// Factory constructor to create [ConditionStageType] from JSON.
  factory ConditionStageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionStageType.elementOnly.withElement(element);
    }
    return ConditionStageType._(value, element);
  }

  /// value261023001
  static final ConditionStageType value261023001 = ConditionStageType._(
    '261023001',
  );

  /// value260998006
  static final ConditionStageType value260998006 = ConditionStageType._(
    '260998006',
  );

  /// For instances where an Element is present but not value

  static final ConditionStageType elementOnly = ConditionStageType._('');

  /// List of all enum-like values
  static final List<ConditionStageType> values = [
    value261023001,
    value260998006,
  ];

  /// Clones the current instance
  @override
  ConditionStageType clone() => ConditionStageType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConditionStageType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConditionStageType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType._(value, newElement);
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
  ConditionStageType copyWith({
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
    return ConditionStageType._(
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
