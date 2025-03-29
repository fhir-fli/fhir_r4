// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchComparatorBuilder._({
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
  factory SearchComparatorBuilder(
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
    return SearchComparatorBuilder._(
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

  /// Create empty [SearchComparatorBuilder] with element only
  factory SearchComparatorBuilder.empty() =>
      SearchComparatorBuilder._(validatedValue: '');

  /// Factory constructor to create [SearchComparatorBuilder] from JSON.
  factory SearchComparatorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparatorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchComparatorBuilder cannot be constructed from JSON.',
      );
    }
    return SearchComparatorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// eq
  static SearchComparatorBuilder eq = SearchComparatorBuilder._(
    validatedValue: 'eq',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equals'.toFhirStringBuilder,
  );

  /// ne
  static SearchComparatorBuilder ne = SearchComparatorBuilder._(
    validatedValue: 'ne',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Equals'.toFhirStringBuilder,
  );

  /// gt
  static SearchComparatorBuilder gt = SearchComparatorBuilder._(
    validatedValue: 'gt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater Than'.toFhirStringBuilder,
  );

  /// lt
  static SearchComparatorBuilder lt = SearchComparatorBuilder._(
    validatedValue: 'lt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less Than'.toFhirStringBuilder,
  );

  /// ge
  static SearchComparatorBuilder ge = SearchComparatorBuilder._(
    validatedValue: 'ge',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater or Equals'.toFhirStringBuilder,
  );

  /// le
  static SearchComparatorBuilder le = SearchComparatorBuilder._(
    validatedValue: 'le',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less of Equal'.toFhirStringBuilder,
  );

  /// sa
  static SearchComparatorBuilder sa = SearchComparatorBuilder._(
    validatedValue: 'sa',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Starts After'.toFhirStringBuilder,
  );

  /// eb
  static SearchComparatorBuilder eb = SearchComparatorBuilder._(
    validatedValue: 'eb',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ends Before'.toFhirStringBuilder,
  );

  /// ap
  static SearchComparatorBuilder ap = SearchComparatorBuilder._(
    validatedValue: 'ap',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Approximately'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SearchComparatorBuilder elementOnly =
      SearchComparatorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SearchComparatorBuilder> values = [
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
  SearchComparatorBuilder clone() => SearchComparatorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SearchComparatorBuilder withElement(ElementBuilder? newElement) {
    return SearchComparatorBuilder._(
        validatedValue: value, element: newElement);
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
  SearchComparatorBuilder copyWith({
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
    return SearchComparatorBuilder._(
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
