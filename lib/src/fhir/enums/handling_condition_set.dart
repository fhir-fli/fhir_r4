// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Set of handling instructions prior testing of the specimen.
class HandlingConditionSet extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  HandlingConditionSet._(super.value, [super.element]);

  /// Factory constructor to create [HandlingConditionSet] from JSON.
  factory HandlingConditionSet.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HandlingConditionSet.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'HandlingConditionSet cannot be constructed from JSON.');
    }
    return HandlingConditionSet._(value, element);
  }

  /// room
  static final HandlingConditionSet room = HandlingConditionSet._(
    'room',
  );

  /// refrigerated
  static final HandlingConditionSet refrigerated = HandlingConditionSet._(
    'refrigerated',
  );

  /// frozen
  static final HandlingConditionSet frozen = HandlingConditionSet._(
    'frozen',
  );

  /// For instances where an Element is present but not value

  static final HandlingConditionSet elementOnly = HandlingConditionSet._('');

  /// List of all enum-like values
  static final List<HandlingConditionSet> values = [
    room,
    refrigerated,
    frozen,
  ];

  /// Clones the current instance
  @override
  HandlingConditionSet clone() => HandlingConditionSet._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  HandlingConditionSet setElement(
    String name,
    dynamic elementValue,
  ) {
    return HandlingConditionSet._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  HandlingConditionSet withElement(Element? newElement) {
    return HandlingConditionSet._(value, newElement);
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
  HandlingConditionSet copyWith({
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
    return HandlingConditionSet._(
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
