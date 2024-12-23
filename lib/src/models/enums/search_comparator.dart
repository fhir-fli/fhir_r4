// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparator extends FhirCode {
  // Private constructor for internal use (like enum)
  SearchComparator._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [SearchComparator] from JSON.
  factory SearchComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchComparator cannot be constructed from JSON.',
      );
    }
    return SearchComparator._(
      value,
      element: element,
    );
  }

  /// eq
  static final SearchComparator eq = SearchComparator._(
    'eq',
  );

  /// ne
  static final SearchComparator ne = SearchComparator._(
    'ne',
  );

  /// gt
  static final SearchComparator gt = SearchComparator._(
    'gt',
  );

  /// lt
  static final SearchComparator lt = SearchComparator._(
    'lt',
  );

  /// ge
  static final SearchComparator ge = SearchComparator._(
    'ge',
  );

  /// le
  static final SearchComparator le = SearchComparator._(
    'le',
  );

  /// sa
  static final SearchComparator sa = SearchComparator._(
    'sa',
  );

  /// eb
  static final SearchComparator eb = SearchComparator._(
    'eb',
  );

  /// ap
  static final SearchComparator ap = SearchComparator._(
    'ap',
  );

  /// For instances where an Element is present but not value

  static final SearchComparator elementOnly = SearchComparator._('');

  /// List of all enum-like values
  static final List<SearchComparator> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
  ];

  /// Clones the current instance
  @override
  SearchComparator clone() => SearchComparator._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(
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
  SearchComparator copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SearchComparator._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
