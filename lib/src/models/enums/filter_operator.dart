// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of operation to perform as a part of a property based filter.
class FilterOperator extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FilterOperator._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FilterOperator] from JSON.
  factory FilterOperator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FilterOperator cannot be constructed from JSON.',
      );
    }
    return FilterOperator._(value: value, element: element);
  }

  /// eq
  static final FilterOperator eq = FilterOperator._(
    value: '=',
  );

  /// is_a
  static final FilterOperator is_a = FilterOperator._(
    value: 'is-a',
  );

  /// descendent_of
  static final FilterOperator descendent_of = FilterOperator._(
    value: 'descendent-of',
  );

  /// is_not_a
  static final FilterOperator is_not_a = FilterOperator._(
    value: 'is-not-a',
  );

  /// regex
  static final FilterOperator regex = FilterOperator._(
    value: 'regex',
  );

  /// in_
  static final FilterOperator in_ = FilterOperator._(
    value: 'in',
  );

  /// not_in
  static final FilterOperator not_in = FilterOperator._(
    value: 'not-in',
  );

  /// generalizes
  static final FilterOperator generalizes = FilterOperator._(
    value: 'generalizes',
  );

  /// exists
  static final FilterOperator exists = FilterOperator._(
    value: 'exists',
  );

  /// For instances where an Element is present but not value

  static final FilterOperator elementOnly = FilterOperator._(value: '');

  /// List of all enum-like values
  static final List<FilterOperator> values = [
    eq,
    is_a,
    descendent_of,
    is_not_a,
    regex,
    in_,
    not_in,
    generalizes,
    exists,
  ];

  /// Clones the current instance
  @override
  FilterOperator clone() => FilterOperator._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(value: value, element: newElement);
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
  FilterOperator copyWith({
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
    return FilterOperator._(
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
