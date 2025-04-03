// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A supported modifier for a search parameter.
class SearchModifierCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SearchModifierCode._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SearchModifierCode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return SearchModifierCode._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [SearchModifierCode] with element only
  factory SearchModifierCode.empty() => SearchModifierCode._(valueString: '');

  /// Factory constructor to create [SearchModifierCode] from JSON.
  factory SearchModifierCode.fromJson(Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// missing
  static final SearchModifierCode missing = SearchModifierCode._(
    valueString: 'missing',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Missing'.toFhirString,
  );

  /// exact
  static final SearchModifierCode exact = SearchModifierCode._(
    valueString: 'exact',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exact'.toFhirString,
  );

  /// contains_
  static final SearchModifierCode contains_ = SearchModifierCode._(
    valueString: 'contains',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contains'.toFhirString,
  );

  /// not
  static final SearchModifierCode not = SearchModifierCode._(
    valueString: 'not',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not'.toFhirString,
  );

  /// text
  static final SearchModifierCode text = SearchModifierCode._(
    valueString: 'text',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Text'.toFhirString,
  );

  /// in_
  static final SearchModifierCode in_ = SearchModifierCode._(
    valueString: 'in',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// not_in
  static final SearchModifierCode not_in = SearchModifierCode._(
    valueString: 'not-in',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not In'.toFhirString,
  );

  /// below
  static final SearchModifierCode below = SearchModifierCode._(
    valueString: 'below',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Below'.toFhirString,
  );

  /// above
  static final SearchModifierCode above = SearchModifierCode._(
    valueString: 'above',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Above'.toFhirString,
  );

  /// type
  static final SearchModifierCode type = SearchModifierCode._(
    valueString: 'type',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// identifier
  static final SearchModifierCode identifier = SearchModifierCode._(
    valueString: 'identifier',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// ofType
  static final SearchModifierCode ofType = SearchModifierCode._(
    valueString: 'ofType',
    system: 'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Of Type'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SearchModifierCode elementOnly =
      SearchModifierCode._(valueString: '');

  /// List of all enum-like values
  static final List<SearchModifierCode> values = [
    missing,
    exact,
    contains_,
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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  SearchModifierCode copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for SearchModifierCode: $newValue');
    }
    return SearchModifierCode._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
