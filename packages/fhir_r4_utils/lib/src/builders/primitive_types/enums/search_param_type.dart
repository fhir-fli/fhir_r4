// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Data types allowed to be used for search parameters.
class SearchParamTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchParamTypeBuilder._({
    required super.validatedValue,
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
  factory SearchParamTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return SearchParamTypeBuilder._(
      validatedValue: validated,
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

  /// Create empty [SearchParamTypeBuilder] with element only
  factory SearchParamTypeBuilder.empty() =>
      SearchParamTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [SearchParamTypeBuilder]
  /// from JSON.
  factory SearchParamTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchParamTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchParamTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// number
  static SearchParamTypeBuilder number = SearchParamTypeBuilder._(
    validatedValue: 'number',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Number'.toFhirStringBuilder,
  );

  /// date
  static SearchParamTypeBuilder date = SearchParamTypeBuilder._(
    validatedValue: 'date',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Date/DateTime'.toFhirStringBuilder,
  );

  /// string
  static SearchParamTypeBuilder string = SearchParamTypeBuilder._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'String'.toFhirStringBuilder,
  );

  /// token
  static SearchParamTypeBuilder token = SearchParamTypeBuilder._(
    validatedValue: 'token',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Token'.toFhirStringBuilder,
  );

  /// reference
  static SearchParamTypeBuilder reference = SearchParamTypeBuilder._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reference'.toFhirStringBuilder,
  );

  /// composite
  static SearchParamTypeBuilder composite = SearchParamTypeBuilder._(
    validatedValue: 'composite',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composite'.toFhirStringBuilder,
  );

  /// quantity
  static SearchParamTypeBuilder quantity = SearchParamTypeBuilder._(
    validatedValue: 'quantity',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// uri
  static SearchParamTypeBuilder uri = SearchParamTypeBuilder._(
    validatedValue: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'URI'.toFhirStringBuilder,
  );

  /// special
  static SearchParamTypeBuilder special = SearchParamTypeBuilder._(
    validatedValue: 'special',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Special'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SearchParamTypeBuilder elementOnly =
      SearchParamTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SearchParamTypeBuilder> values = [
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
  SearchParamTypeBuilder clone() => SearchParamTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SearchParamTypeBuilder withElement(ElementBuilder? newElement) {
    return SearchParamTypeBuilder._(validatedValue: value, element: newElement);
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
  SearchParamTypeBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SearchParamTypeBuilder._(
      validatedValue: newValue ?? value,
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
