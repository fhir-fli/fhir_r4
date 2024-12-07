// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A supported modifier for a search parameter.
class SearchModifierCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SearchModifierCode._(super.value, [super.element]);

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
    return SearchModifierCode._(value, element);
  }

  /// missing
  static final SearchModifierCode missing = SearchModifierCode._(
    'missing',
  );

  /// exact
  static final SearchModifierCode exact = SearchModifierCode._(
    'exact',
  );

  /// contains
  static final SearchModifierCode contains = SearchModifierCode._(
    'contains',
  );

  /// not
  static final SearchModifierCode not = SearchModifierCode._(
    'not',
  );

  /// text
  static final SearchModifierCode text = SearchModifierCode._(
    'text',
  );

  /// in_
  static final SearchModifierCode in_ = SearchModifierCode._(
    'in',
  );

  /// not_in
  static final SearchModifierCode not_in = SearchModifierCode._(
    'not-in',
  );

  /// below
  static final SearchModifierCode below = SearchModifierCode._(
    'below',
  );

  /// above
  static final SearchModifierCode above = SearchModifierCode._(
    'above',
  );

  /// type
  static final SearchModifierCode type = SearchModifierCode._(
    'type',
  );

  /// identifier
  static final SearchModifierCode identifier = SearchModifierCode._(
    'identifier',
  );

  /// ofType
  static final SearchModifierCode ofType = SearchModifierCode._(
    'ofType',
  );

  /// For instances where an Element is present but not value

  static final SearchModifierCode elementOnly = SearchModifierCode._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(value, newElement);
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
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SearchModifierCode._(
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
