// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A supported modifier for a search parameter.
class SearchModifierCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchModifierCodeBuilder._({
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
  factory SearchModifierCodeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return SearchModifierCodeBuilder._(
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

  /// Create empty [SearchModifierCodeBuilder] with element only
  factory SearchModifierCodeBuilder.empty() =>
      SearchModifierCodeBuilder._(valueString: '');

  /// Factory constructor to create [SearchModifierCodeBuilder]
  /// from JSON.
  factory SearchModifierCodeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCodeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchModifierCodeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchModifierCodeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// missing
  static SearchModifierCodeBuilder missing = SearchModifierCodeBuilder._(
    valueString: 'missing',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Missing'.toFhirStringBuilder,
  );

  /// exact
  static SearchModifierCodeBuilder exact = SearchModifierCodeBuilder._(
    valueString: 'exact',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exact'.toFhirStringBuilder,
  );

  /// contains_
  static SearchModifierCodeBuilder contains_ = SearchModifierCodeBuilder._(
    valueString: 'contains',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contains'.toFhirStringBuilder,
  );

  /// not
  static SearchModifierCodeBuilder not = SearchModifierCodeBuilder._(
    valueString: 'not',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not'.toFhirStringBuilder,
  );

  /// text
  static SearchModifierCodeBuilder text = SearchModifierCodeBuilder._(
    valueString: 'text',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Text'.toFhirStringBuilder,
  );

  /// in_
  static SearchModifierCodeBuilder in_ = SearchModifierCodeBuilder._(
    valueString: 'in',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In'.toFhirStringBuilder,
  );

  /// not_in
  static SearchModifierCodeBuilder not_in = SearchModifierCodeBuilder._(
    valueString: 'not-in',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not In'.toFhirStringBuilder,
  );

  /// below
  static SearchModifierCodeBuilder below = SearchModifierCodeBuilder._(
    valueString: 'below',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Below'.toFhirStringBuilder,
  );

  /// above
  static SearchModifierCodeBuilder above = SearchModifierCodeBuilder._(
    valueString: 'above',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Above'.toFhirStringBuilder,
  );

  /// type
  static SearchModifierCodeBuilder type = SearchModifierCodeBuilder._(
    valueString: 'type',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Type'.toFhirStringBuilder,
  );

  /// identifier
  static SearchModifierCodeBuilder identifier = SearchModifierCodeBuilder._(
    valueString: 'identifier',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Identifier'.toFhirStringBuilder,
  );

  /// ofType
  static SearchModifierCodeBuilder ofType = SearchModifierCodeBuilder._(
    valueString: 'ofType',
    system:
        'http://hl7.org/fhir/ValueSet/search-modifier-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Of Type'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SearchModifierCodeBuilder elementOnly =
      SearchModifierCodeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SearchModifierCodeBuilder> values = [
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
  SearchModifierCodeBuilder clone() => SearchModifierCodeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SearchModifierCodeBuilder withElement(ElementBuilder? newElement) {
    return SearchModifierCodeBuilder._(
        valueString: valueString, element: newElement);
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
  SearchModifierCodeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return SearchModifierCodeBuilder._(
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
