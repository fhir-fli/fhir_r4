// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparator extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SearchComparator._(super.value, [super.element]);

  /// Factory constructor to create [SearchComparator] from JSON.
  factory SearchComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    }
    return SearchComparator._(value, element);
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
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SearchComparator setElement(
    String name,
    dynamic elementValue,
  ) {
    return SearchComparator._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(value, newElement);
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
    return SearchComparator._(
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
