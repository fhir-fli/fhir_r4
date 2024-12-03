// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Data types allowed to be used for search parameters.
class SearchParamType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SearchParamType._(super.value, [super.element]);

  /// Factory constructor to create [SearchParamType] from JSON.
  factory SearchParamType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    }
    return SearchParamType._(value, element);
  }

  /// number
  static final SearchParamType number = SearchParamType._(
    'number',
  );

  /// date
  static final SearchParamType date = SearchParamType._(
    'date',
  );

  /// string
  static final SearchParamType string = SearchParamType._(
    'string',
  );

  /// token
  static final SearchParamType token = SearchParamType._(
    'token',
  );

  /// reference
  static final SearchParamType reference = SearchParamType._(
    'reference',
  );

  /// composite
  static final SearchParamType composite = SearchParamType._(
    'composite',
  );

  /// quantity
  static final SearchParamType quantity = SearchParamType._(
    'quantity',
  );

  /// uri
  static final SearchParamType uri = SearchParamType._(
    'uri',
  );

  /// special
  static final SearchParamType special = SearchParamType._(
    'special',
  );

  /// For instances where an Element is present but not value

  static final SearchParamType elementOnly = SearchParamType._('');

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
  SearchParamType clone() =>
      SearchParamType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SearchParamType setElement(String name, dynamic elementValue) {
    return SearchParamType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(value, newElement);
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
    return SearchParamType._(
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
