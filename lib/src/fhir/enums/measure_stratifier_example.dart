// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifier subgroups in a population for measuring purposes.
class MeasureStratifierExample extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureStratifierExample._(super.value, [super.element]);

  /// Factory constructor to create [MeasureStratifierExample] from JSON.
  factory MeasureStratifierExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly.withElement(element);
    }
    return MeasureStratifierExample._(value, element);
  }

  /// age
  static final MeasureStratifierExample age = MeasureStratifierExample._(
    'age',
  );

  /// gender
  static final MeasureStratifierExample gender = MeasureStratifierExample._(
    'gender',
  );

  /// region
  static final MeasureStratifierExample region = MeasureStratifierExample._(
    'region',
  );

  /// For instances where an Element is present but not value

  static final MeasureStratifierExample elementOnly =
      MeasureStratifierExample._('');

  /// List of all enum-like values
  static final List<MeasureStratifierExample> values = [
    age,
    gender,
    region,
  ];

  /// Clones the current instance
  @override
  MeasureStratifierExample clone() => MeasureStratifierExample._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureStratifierExample setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureStratifierExample._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample._(value, newElement);
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
  MeasureStratifierExample copyWith({
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
    return MeasureStratifierExample._(
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
