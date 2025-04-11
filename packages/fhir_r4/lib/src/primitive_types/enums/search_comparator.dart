// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchComparator
enum SearchComparatorEnum {
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
      case SearchComparatorEnum.eq:
        return 'eq';
      case SearchComparatorEnum.ne:
        return 'ne';
      case SearchComparatorEnum.gt:
        return 'gt';
      case SearchComparatorEnum.lt:
        return 'lt';
      case SearchComparatorEnum.ge:
        return 'ge';
      case SearchComparatorEnum.le:
        return 'le';
      case SearchComparatorEnum.sa:
        return 'sa';
      case SearchComparatorEnum.eb:
        return 'eb';
      case SearchComparatorEnum.ap:
        return 'ap';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchComparatorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchComparatorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchComparatorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'eq':
        return SearchComparatorEnum.eq;
      case 'ne':
        return SearchComparatorEnum.ne;
      case 'gt':
        return SearchComparatorEnum.gt;
      case 'lt':
        return SearchComparatorEnum.lt;
      case 'ge':
        return SearchComparatorEnum.ge;
      case 'le':
        return SearchComparatorEnum.le;
      case 'sa':
        return SearchComparatorEnum.sa;
      case 'eb':
        return SearchComparatorEnum.eb;
      case 'ap':
        return SearchComparatorEnum.ap;
    }
    return null;
  }
}

/// What Search Comparator Codes are supported in search.
class SearchComparator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SearchComparator._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SearchComparator(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = SearchComparatorEnum.fromString(valueString);
    return SearchComparator._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [SearchComparator]
  /// from JSON.
  factory SearchComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SearchComparatorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchComparator cannot be constructed from JSON.',
      );
    }
    return SearchComparator._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SearchComparator
  final SearchComparatorEnum? valueEnum;

  /// eq
  static const SearchComparator eq = SearchComparator._(
    valueString: 'eq',
    valueEnum: SearchComparatorEnum.eq,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static const SearchComparator ne = SearchComparator._(
    valueString: 'ne',
    valueEnum: SearchComparatorEnum.ne,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static const SearchComparator gt = SearchComparator._(
    valueString: 'gt',
    valueEnum: SearchComparatorEnum.gt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static const SearchComparator lt = SearchComparator._(
    valueString: 'lt',
    valueEnum: SearchComparatorEnum.lt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static const SearchComparator ge = SearchComparator._(
    valueString: 'ge',
    valueEnum: SearchComparatorEnum.ge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static const SearchComparator le = SearchComparator._(
    valueString: 'le',
    valueEnum: SearchComparatorEnum.le,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less of Equal',
    ),
  );

  /// sa
  static const SearchComparator sa = SearchComparator._(
    valueString: 'sa',
    valueEnum: SearchComparatorEnum.sa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static const SearchComparator eb = SearchComparator._(
    valueString: 'eb',
    valueEnum: SearchComparatorEnum.eb,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static const SearchComparator ap = SearchComparator._(
    valueString: 'ap',
    valueEnum: SearchComparatorEnum.ap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Approximately',
    ),
  );

  /// List of all enum-like values
  static final List<SearchComparator> values = [
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
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(
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

  @override
  SearchComparator clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SearchComparatorCopyWithImpl<SearchComparator> get copyWith =>
      SearchComparatorCopyWithImpl<SearchComparator>(
        this,
        (v) => v as SearchComparator,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SearchComparatorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SearchComparatorCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      SearchComparator(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
