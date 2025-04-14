// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchComparator
enum SearchComparatorBuilderEnum {
  /// eq
  eq,

  /// ne
  ne,

  /// gt
  gt,

  /// lt
  lt,

  /// ge
  ge,

  /// le
  le,

  /// sa
  sa,

  /// eb
  eb,

  /// ap
  ap,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SearchComparatorBuilderEnum.eq:
        return 'eq';
      case SearchComparatorBuilderEnum.ne:
        return 'ne';
      case SearchComparatorBuilderEnum.gt:
        return 'gt';
      case SearchComparatorBuilderEnum.lt:
        return 'lt';
      case SearchComparatorBuilderEnum.ge:
        return 'ge';
      case SearchComparatorBuilderEnum.le:
        return 'le';
      case SearchComparatorBuilderEnum.sa:
        return 'sa';
      case SearchComparatorBuilderEnum.eb:
        return 'eb';
      case SearchComparatorBuilderEnum.ap:
        return 'ap';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchComparatorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchComparatorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchComparatorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'eq':
        return SearchComparatorBuilderEnum.eq;
      case 'ne':
        return SearchComparatorBuilderEnum.ne;
      case 'gt':
        return SearchComparatorBuilderEnum.gt;
      case 'lt':
        return SearchComparatorBuilderEnum.lt;
      case 'ge':
        return SearchComparatorBuilderEnum.ge;
      case 'le':
        return SearchComparatorBuilderEnum.le;
      case 'sa':
        return SearchComparatorBuilderEnum.sa;
      case 'eb':
        return SearchComparatorBuilderEnum.eb;
      case 'ap':
        return SearchComparatorBuilderEnum.ap;
    }
    return null;
  }
}

/// What Search Comparator Codes are supported in search.
class SearchComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchComparatorBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = SearchComparatorBuilderEnum.fromString(
      valueString,
    );
    return SearchComparatorBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [SearchComparatorBuilder]
  /// with element only
  factory SearchComparatorBuilder.empty() =>
      SearchComparatorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SearchComparatorBuilder] from JSON.
  factory SearchComparatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparatorBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for SearchComparatorBuilder
  final SearchComparatorBuilderEnum? valueEnum;

  /// eq
  static SearchComparatorBuilder eq = SearchComparatorBuilder._(
    valueString: 'eq',
    valueEnum: SearchComparatorBuilderEnum.eq,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static SearchComparatorBuilder ne = SearchComparatorBuilder._(
    valueString: 'ne',
    valueEnum: SearchComparatorBuilderEnum.ne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static SearchComparatorBuilder gt = SearchComparatorBuilder._(
    valueString: 'gt',
    valueEnum: SearchComparatorBuilderEnum.gt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static SearchComparatorBuilder lt = SearchComparatorBuilder._(
    valueString: 'lt',
    valueEnum: SearchComparatorBuilderEnum.lt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static SearchComparatorBuilder ge = SearchComparatorBuilder._(
    valueString: 'ge',
    valueEnum: SearchComparatorBuilderEnum.ge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static SearchComparatorBuilder le = SearchComparatorBuilder._(
    valueString: 'le',
    valueEnum: SearchComparatorBuilderEnum.le,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less of Equal',
    ),
  );

  /// sa
  static SearchComparatorBuilder sa = SearchComparatorBuilder._(
    valueString: 'sa',
    valueEnum: SearchComparatorBuilderEnum.sa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static SearchComparatorBuilder eb = SearchComparatorBuilder._(
    valueString: 'eb',
    valueEnum: SearchComparatorBuilderEnum.eb,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static SearchComparatorBuilder ap = SearchComparatorBuilder._(
    valueString: 'ap',
    valueEnum: SearchComparatorBuilderEnum.ap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Approximately',
    ),
  );

  /// For instances where an Element is present but not value
  static SearchComparatorBuilder elementOnly = SearchComparatorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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

  /// Returns the enum value with an element attached
  SearchComparatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SearchComparatorBuilder._(
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
}
