// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The optical rotation type of a substance.
class OpticalActivity extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  OpticalActivity._(super.value, [super.element]);

  /// Factory constructor to create [OpticalActivity] from JSON.
  factory OpticalActivity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OpticalActivity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OpticalActivity cannot be constructed from JSON.',
      );
    }
    return OpticalActivity._(value, element);
  }

  /// plus
  static final OpticalActivity plus = OpticalActivity._(
    '+',
  );

  /// minus
  static final OpticalActivity minus = OpticalActivity._(
    '-',
  );

  /// For instances where an Element is present but not value

  static final OpticalActivity elementOnly = OpticalActivity._('');

  /// List of all enum-like values
  static final List<OpticalActivity> values = [
    plus,
    minus,
  ];

  /// Clones the current instance
  @override
  OpticalActivity clone() => OpticalActivity._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  OpticalActivity setElement(
    String name,
    dynamic elementValue,
  ) {
    return OpticalActivity._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  OpticalActivity withElement(Element? newElement) {
    return OpticalActivity._(value, newElement);
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
  OpticalActivity copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return OpticalActivity._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
