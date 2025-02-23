// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A supported modifier for a search parameter.
class SearchModifierCode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  SearchModifierCode._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [SearchModifierCode] with element only
  factory SearchModifierCode.empty() => SearchModifierCode._('');

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
    return SearchModifierCode._(
      value,
      element: element,
    );
  }

  /// missing
  static final SearchModifierCode missing = SearchModifierCode._(
    'missing',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Missing'.toFhirString,
  );

  /// exact
  static final SearchModifierCode exact = SearchModifierCode._(
    'exact',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exact'.toFhirString,
  );

  /// contains
  static final SearchModifierCode contains = SearchModifierCode._(
    'contains',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contains'.toFhirString,
  );

  /// not
  static final SearchModifierCode not = SearchModifierCode._(
    'not',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not'.toFhirString,
  );

  /// text
  static final SearchModifierCode text = SearchModifierCode._(
    'text',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Text'.toFhirString,
  );

  /// in_
  static final SearchModifierCode in_ = SearchModifierCode._(
    'in',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// not_in
  static final SearchModifierCode not_in = SearchModifierCode._(
    'not-in',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not In'.toFhirString,
  );

  /// below
  static final SearchModifierCode below = SearchModifierCode._(
    'below',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Below'.toFhirString,
  );

  /// above
  static final SearchModifierCode above = SearchModifierCode._(
    'above',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Above'.toFhirString,
  );

  /// type
  static final SearchModifierCode type = SearchModifierCode._(
    'type',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// identifier
  static final SearchModifierCode identifier = SearchModifierCode._(
    'identifier',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// ofType
  static final SearchModifierCode ofType = SearchModifierCode._(
    'ofType',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Of Type'.toFhirString,
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
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(
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
  SearchModifierCode copyWith({
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
    return SearchModifierCode._(
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
