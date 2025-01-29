// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
class SearchEntryMode extends FhirCode {
  // Private constructor for internal use (like enum)
  SearchEntryMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [SearchEntryMode] from JSON.
  factory SearchEntryMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchEntryMode cannot be constructed from JSON.',
      );
    }
    return SearchEntryMode._(
      value,
      element: element,
    );
  }

  /// match
  static final SearchEntryMode match = SearchEntryMode._(
    'match',
  );

  /// include
  static final SearchEntryMode include = SearchEntryMode._(
    'include',
  );

  /// outcome
  static final SearchEntryMode outcome = SearchEntryMode._(
    'outcome',
  );

  /// For instances where an Element is present but not value

  static final SearchEntryMode elementOnly = SearchEntryMode._('');

  /// List of all enum-like values
  static final List<SearchEntryMode> values = [
    match,
    include,
    outcome,
  ];

  /// Clones the current instance
  @override
  SearchEntryMode clone() => SearchEntryMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchEntryMode withElement(Element? newElement) {
    return SearchEntryMode._(
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
  SearchEntryMode copyWith({
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
    return SearchEntryMode._(
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
