// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A supported modifier for a search parameter.
class SearchModifierCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SearchModifierCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SearchModifierCode] from JSON.
  factory SearchModifierCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchModifierCode cannot be constructed from JSON.',
      );
    }
    return SearchModifierCode._(value: value, element: element);
  }

  /// missing
  static final SearchModifierCode missing = SearchModifierCode._(
    value: 'missing',
  );

  /// exact
  static final SearchModifierCode exact = SearchModifierCode._(
    value: 'exact',
  );

  /// contains
  static final SearchModifierCode contains = SearchModifierCode._(
    value: 'contains',
  );

  /// not
  static final SearchModifierCode not = SearchModifierCode._(
    value: 'not',
  );

  /// text
  static final SearchModifierCode text = SearchModifierCode._(
    value: 'text',
  );

  /// in_
  static final SearchModifierCode in_ = SearchModifierCode._(
    value: 'in',
  );

  /// not_in
  static final SearchModifierCode not_in = SearchModifierCode._(
    value: 'not-in',
  );

  /// below
  static final SearchModifierCode below = SearchModifierCode._(
    value: 'below',
  );

  /// above
  static final SearchModifierCode above = SearchModifierCode._(
    value: 'above',
  );

  /// type
  static final SearchModifierCode type = SearchModifierCode._(
    value: 'type',
  );

  /// identifier
  static final SearchModifierCode identifier = SearchModifierCode._(
    value: 'identifier',
  );

  /// ofType
  static final SearchModifierCode ofType = SearchModifierCode._(
    value: 'ofType',
  );

  /// For instances where an Element is present but not value

  static final SearchModifierCode elementOnly = SearchModifierCode._(value: '');

  /// List of all enum-like values
  static final List<SearchModifierCode> values = [
    missing,
    exact,
    contains,
    not,
    text,
    in_,
    not_in,
    below,
    above,
    type,
    identifier,
    ofType,
  ];

  /// Clones the current instance
  @override
  SearchModifierCode clone() => SearchModifierCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(value: value, element: newElement);
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
  SearchModifierCode copyWith({
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
    return SearchModifierCode._(
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
