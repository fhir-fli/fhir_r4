// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of operation to perform as a part of a property based filter.
class FilterOperator extends FhirCode {
  // Private constructor for internal use (like enum)
  FilterOperator._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
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
    return FilterOperator._(
      value,
      element: element,
    );
  }

  /// eq
  static final FilterOperator eq = FilterOperator._(
    '=',
  );

  /// is_a
  static final FilterOperator is_a = FilterOperator._(
    'is-a',
  );

  /// descendent_of
  static final FilterOperator descendent_of = FilterOperator._(
    'descendent-of',
  );

  /// is_not_a
  static final FilterOperator is_not_a = FilterOperator._(
    'is-not-a',
  );

  /// regex
  static final FilterOperator regex = FilterOperator._(
    'regex',
  );

  /// in_
  static final FilterOperator in_ = FilterOperator._(
    'in',
  );

  /// not_in
  static final FilterOperator not_in = FilterOperator._(
    'not-in',
  );

  /// generalizes
  static final FilterOperator generalizes = FilterOperator._(
    'generalizes',
  );

  /// exists
  static final FilterOperator exists = FilterOperator._(
    'exists',
  );

  /// For instances where an Element is present but not value

  static final FilterOperator elementOnly = FilterOperator._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(
      value,
      element: newElement,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FilterOperator._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
