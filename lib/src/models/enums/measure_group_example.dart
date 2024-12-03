// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Groups for the Measure Resource.
class MeasureGroupExample extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureGroupExample._(super.value, [super.element]);

  /// Factory constructor to create [MeasureGroupExample] from JSON.
  factory MeasureGroupExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureGroupExample.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureGroupExample cannot be constructed from JSON.',
      );
    }
    return MeasureGroupExample._(value, element);
  }

  /// primary_rate
  static final MeasureGroupExample primary_rate = MeasureGroupExample._(
    'primary-rate',
  );

  /// secondary_rate
  static final MeasureGroupExample secondary_rate = MeasureGroupExample._(
    'secondary-rate',
  );

  /// For instances where an Element is present but not value

  static final MeasureGroupExample elementOnly = MeasureGroupExample._('');

  /// List of all enum-like values
  static final List<MeasureGroupExample> values = [
    primary_rate,
    secondary_rate,
  ];

  /// Clones the current instance
  @override
  MeasureGroupExample clone() => MeasureGroupExample._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureGroupExample setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureGroupExample._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureGroupExample withElement(Element? newElement) {
    return MeasureGroupExample._(value, newElement);
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
  MeasureGroupExample copyWith({
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
    return MeasureGroupExample._(
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
