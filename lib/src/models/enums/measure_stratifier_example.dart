// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifier subgroups in a population for measuring purposes.
class MeasureStratifierExample extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureStratifierExample._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MeasureStratifierExample] from JSON.
  factory MeasureStratifierExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureStratifierExample cannot be constructed from JSON.',
      );
    }
    return MeasureStratifierExample._(value: value, element: element);
  }

  /// age
  static final MeasureStratifierExample age = MeasureStratifierExample._(
    value: 'age',
  );

  /// gender
  static final MeasureStratifierExample gender = MeasureStratifierExample._(
    value: 'gender',
  );

  /// region
  static final MeasureStratifierExample region = MeasureStratifierExample._(
    value: 'region',
  );

  /// For instances where an Element is present but not value

  static final MeasureStratifierExample elementOnly =
      MeasureStratifierExample._(value: '');

  /// List of all enum-like values
  static final List<MeasureStratifierExample> values = [
    age,
    gender,
    region,
  ];

  /// Clones the current instance
  @override
  MeasureStratifierExample clone() => MeasureStratifierExample._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample._(value: value, element: newElement);
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
    return MeasureStratifierExample._(
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
