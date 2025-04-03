// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchComparatorBuilder._({
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
  factory SearchComparatorBuilder(
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
    return SearchComparatorBuilder._(
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

  /// Create empty [SearchComparatorBuilder] with element only
  factory SearchComparatorBuilder.empty() =>
      SearchComparatorBuilder._(valueString: '');

  /// Factory constructor to create [SearchComparatorBuilder]
  /// from JSON.
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
      valueString: value,
      element: element,
    );
  }

  /// eq
  static SearchComparatorBuilder eq = SearchComparatorBuilder._(
    valueString: 'eq',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equals'.toFhirStringBuilder,
  );

  /// ne
  static SearchComparatorBuilder ne = SearchComparatorBuilder._(
    valueString: 'ne',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Equals'.toFhirStringBuilder,
  );

  /// gt
  static SearchComparatorBuilder gt = SearchComparatorBuilder._(
    valueString: 'gt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater Than'.toFhirStringBuilder,
  );

  /// lt
  static SearchComparatorBuilder lt = SearchComparatorBuilder._(
    valueString: 'lt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less Than'.toFhirStringBuilder,
  );

  /// ge
  static SearchComparatorBuilder ge = SearchComparatorBuilder._(
    valueString: 'ge',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater or Equals'.toFhirStringBuilder,
  );

  /// le
  static SearchComparatorBuilder le = SearchComparatorBuilder._(
    valueString: 'le',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less of Equal'.toFhirStringBuilder,
  );

  /// sa
  static SearchComparatorBuilder sa = SearchComparatorBuilder._(
    valueString: 'sa',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Starts After'.toFhirStringBuilder,
  );

  /// eb
  static SearchComparatorBuilder eb = SearchComparatorBuilder._(
    valueString: 'eb',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ends Before'.toFhirStringBuilder,
  );

  /// ap
  static SearchComparatorBuilder ap = SearchComparatorBuilder._(
    valueString: 'ap',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Approximately'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SearchComparatorBuilder elementOnly =
      SearchComparatorBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SearchComparatorBuilder withElement(ElementBuilder? newElement) {
    return SearchComparatorBuilder._(
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
  SearchComparatorBuilder copyWith({
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
      throw ArgumentError('Invalid input for SearchComparator: $newValue');
    }
    return SearchComparatorBuilder._(
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
