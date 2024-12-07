// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of substance weight measurement.
class WeightType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  WeightType._(super.value, [super.element]);

  /// Factory constructor to create [WeightType] from JSON.
  factory WeightType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'WeightType cannot be constructed from JSON.',
      );
    }
    return WeightType._(value, element);
  }

  /// Exact
  static final WeightType Exact = WeightType._(
    'Exact',
  );

  /// Average
  static final WeightType Average = WeightType._(
    'Average',
  );

  /// WeightAverage
  static final WeightType WeightAverage = WeightType._(
    'WeightAverage',
  );

  /// For instances where an Element is present but not value

  static final WeightType elementOnly = WeightType._('');

  /// List of all enum-like values
  static final List<WeightType> values = [
    Exact,
    Average,
    WeightAverage,
  ];

  /// Clones the current instance
  @override
  WeightType clone() => WeightType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  WeightType withElement(Element? newElement) {
    return WeightType._(value, newElement);
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
  WeightType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return WeightType._(
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
