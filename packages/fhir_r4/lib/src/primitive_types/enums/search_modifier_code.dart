// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchModifierCode
enum SearchModifierCodeEnum {
  /// missing
  missing,

  /// exact
  exact,

  /// contains
  contains_,

  /// not
  not,

  /// text
  text,

  /// in
  in_,

  /// not-in
  notIn,

  /// below
  below,

  /// above
  above,

  /// type
  type,

  /// identifier
  identifier,

  /// ofType
  ofType,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SearchModifierCodeEnum.missing:
        return 'missing';
      case SearchModifierCodeEnum.exact:
        return 'exact';
      case SearchModifierCodeEnum.contains_:
        return 'contains';
      case SearchModifierCodeEnum.not:
        return 'not';
      case SearchModifierCodeEnum.text:
        return 'text';
      case SearchModifierCodeEnum.in_:
        return 'in';
      case SearchModifierCodeEnum.notIn:
        return 'not-in';
      case SearchModifierCodeEnum.below:
        return 'below';
      case SearchModifierCodeEnum.above:
        return 'above';
      case SearchModifierCodeEnum.type:
        return 'type';
      case SearchModifierCodeEnum.identifier:
        return 'identifier';
      case SearchModifierCodeEnum.ofType:
        return 'ofType';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchModifierCodeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchModifierCodeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchModifierCodeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'missing':
        return SearchModifierCodeEnum.missing;
      case 'exact':
        return SearchModifierCodeEnum.exact;
      case 'contains':
        return SearchModifierCodeEnum.contains_;
      case 'not':
        return SearchModifierCodeEnum.not;
      case 'text':
        return SearchModifierCodeEnum.text;
      case 'in':
        return SearchModifierCodeEnum.in_;
      case 'not-in':
        return SearchModifierCodeEnum.notIn;
      case 'below':
        return SearchModifierCodeEnum.below;
      case 'above':
        return SearchModifierCodeEnum.above;
      case 'type':
        return SearchModifierCodeEnum.type;
      case 'identifier':
        return SearchModifierCodeEnum.identifier;
      case 'ofType':
        return SearchModifierCodeEnum.ofType;
    }
    return null;
  }
}

/// A supported modifier for a search parameter.
class SearchModifierCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SearchModifierCode._({
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
  factory SearchModifierCode(
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
    final valueEnum = SearchModifierCodeEnum.fromString(valueString);
    return SearchModifierCode._(
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

  /// Factory constructor to create [SearchModifierCode]
  /// from JSON.
  factory SearchModifierCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SearchModifierCodeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchModifierCode cannot be constructed from JSON.',
      );
    }
    return SearchModifierCode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SearchModifierCode
  final SearchModifierCodeEnum? valueEnum;

  /// missing
  static const SearchModifierCode missing = SearchModifierCode._(
    valueString: 'missing',
    valueEnum: SearchModifierCodeEnum.missing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Missing',
    ),
  );

  /// exact
  static const SearchModifierCode exact = SearchModifierCode._(
    valueString: 'exact',
    valueEnum: SearchModifierCodeEnum.exact,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exact',
    ),
  );

  /// contains_
  static const SearchModifierCode contains_ = SearchModifierCode._(
    valueString: 'contains',
    valueEnum: SearchModifierCodeEnum.contains_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contains',
    ),
  );

  /// not
  static const SearchModifierCode not = SearchModifierCode._(
    valueString: 'not',
    valueEnum: SearchModifierCodeEnum.not,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not',
    ),
  );

  /// text
  static const SearchModifierCode text = SearchModifierCode._(
    valueString: 'text',
    valueEnum: SearchModifierCodeEnum.text,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Text',
    ),
  );

  /// in_
  static const SearchModifierCode in_ = SearchModifierCode._(
    valueString: 'in',
    valueEnum: SearchModifierCodeEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In',
    ),
  );

  /// not_in
  static const SearchModifierCode notIn = SearchModifierCode._(
    valueString: 'not-in',
    valueEnum: SearchModifierCodeEnum.notIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not In',
    ),
  );

  /// below
  static const SearchModifierCode below = SearchModifierCode._(
    valueString: 'below',
    valueEnum: SearchModifierCodeEnum.below,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Below',
    ),
  );

  /// above
  static const SearchModifierCode above = SearchModifierCode._(
    valueString: 'above',
    valueEnum: SearchModifierCodeEnum.above,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Above',
    ),
  );

  /// type
  static const SearchModifierCode type = SearchModifierCode._(
    valueString: 'type',
    valueEnum: SearchModifierCodeEnum.type,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Type',
    ),
  );

  /// identifier
  static const SearchModifierCode identifier = SearchModifierCode._(
    valueString: 'identifier',
    valueEnum: SearchModifierCodeEnum.identifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Identifier',
    ),
  );

  /// ofType
  static const SearchModifierCode ofType = SearchModifierCode._(
    valueString: 'ofType',
    valueEnum: SearchModifierCodeEnum.ofType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Of Type',
    ),
  );

  /// List of all enum-like values
  static final List<SearchModifierCode> values = [
    missing,
    exact,
    contains_,
    not,
    text,
    in_,
    notIn,
    below,
    above,
    type,
    identifier,
    ofType,
  ];

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

  @override
  SearchModifierCode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SearchModifierCodeCopyWithImpl<SearchModifierCode> get copyWith =>
      SearchModifierCodeCopyWithImpl<SearchModifierCode>(
        this,
        (v) => v as SearchModifierCode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SearchModifierCodeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SearchModifierCodeCopyWithImpl(super._value, super._then);

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
      SearchModifierCode(
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
