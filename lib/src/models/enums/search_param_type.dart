// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Data types allowed to be used for search parameters.
class SearchParamType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SearchParamType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SearchParamType] from JSON.
  factory SearchParamType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchParamType cannot be constructed from JSON.',
      );
    }
    return SearchParamType._(value: value, element: element);
  }

  /// number
  static final SearchParamType number = SearchParamType._(
    value: 'number',
  );

  /// date
  static final SearchParamType date = SearchParamType._(
    value: 'date',
  );

  /// string
  static final SearchParamType string = SearchParamType._(
    value: 'string',
  );

  /// token
  static final SearchParamType token = SearchParamType._(
    value: 'token',
  );

  /// reference
  static final SearchParamType reference = SearchParamType._(
    value: 'reference',
  );

  /// composite
  static final SearchParamType composite = SearchParamType._(
    value: 'composite',
  );

  /// quantity
  static final SearchParamType quantity = SearchParamType._(
    value: 'quantity',
  );

  /// uri
  static final SearchParamType uri = SearchParamType._(
    value: 'uri',
  );

  /// special
  static final SearchParamType special = SearchParamType._(
    value: 'special',
  );

  /// For instances where an Element is present but not value

  static final SearchParamType elementOnly = SearchParamType._(value: '');

  /// List of all enum-like values
  static final List<SearchParamType> values = [
    number,
    date,
    string,
    token,
    reference,
    composite,
    quantity,
    uri,
    special,
  ];

  /// Clones the current instance
  @override
  SearchParamType clone() => SearchParamType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(value: value, element: newElement);
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
  SearchParamType copyWith({
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
    return SearchParamType._(
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
