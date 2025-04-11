// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchParamType
enum SearchParamTypeEnum {
  /// number
  number,

  /// date
  date,

  /// string
  string,

  /// token
  token,

  /// reference
  reference,

  /// composite
  composite,

  /// quantity
  quantity,

  /// uri
  uri,

  /// special
  special,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SearchParamTypeEnum.number:
        return 'number';
      case SearchParamTypeEnum.date:
        return 'date';
      case SearchParamTypeEnum.string:
        return 'string';
      case SearchParamTypeEnum.token:
        return 'token';
      case SearchParamTypeEnum.reference:
        return 'reference';
      case SearchParamTypeEnum.composite:
        return 'composite';
      case SearchParamTypeEnum.quantity:
        return 'quantity';
      case SearchParamTypeEnum.uri:
        return 'uri';
      case SearchParamTypeEnum.special:
        return 'special';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchParamTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchParamTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchParamTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'number':
        return SearchParamTypeEnum.number;
      case 'date':
        return SearchParamTypeEnum.date;
      case 'string':
        return SearchParamTypeEnum.string;
      case 'token':
        return SearchParamTypeEnum.token;
      case 'reference':
        return SearchParamTypeEnum.reference;
      case 'composite':
        return SearchParamTypeEnum.composite;
      case 'quantity':
        return SearchParamTypeEnum.quantity;
      case 'uri':
        return SearchParamTypeEnum.uri;
      case 'special':
        return SearchParamTypeEnum.special;
    }
    return null;
  }
}

/// Data types allowed to be used for search parameters.
class SearchParamType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SearchParamType._({
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
  factory SearchParamType(
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
    final valueEnum = SearchParamTypeEnum.fromString(valueString);
    return SearchParamType._(
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

  /// Factory constructor to create [SearchParamType]
  /// from JSON.
  factory SearchParamType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SearchParamTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchParamType cannot be constructed from JSON.',
      );
    }
    return SearchParamType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SearchParamType
  final SearchParamTypeEnum? valueEnum;

  /// number
  static const SearchParamType number = SearchParamType._(
    valueString: 'number',
    valueEnum: SearchParamTypeEnum.number,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Number',
    ),
  );

  /// date
  static const SearchParamType date = SearchParamType._(
    valueString: 'date',
    valueEnum: SearchParamTypeEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Date/DateTime',
    ),
  );

  /// string
  static const SearchParamType string = SearchParamType._(
    valueString: 'string',
    valueEnum: SearchParamTypeEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'String',
    ),
  );

  /// token
  static const SearchParamType token = SearchParamType._(
    valueString: 'token',
    valueEnum: SearchParamTypeEnum.token,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Token',
    ),
  );

  /// reference
  static const SearchParamType reference = SearchParamType._(
    valueString: 'reference',
    valueEnum: SearchParamTypeEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// composite
  static const SearchParamType composite = SearchParamType._(
    valueString: 'composite',
    valueEnum: SearchParamTypeEnum.composite,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Composite',
    ),
  );

  /// quantity
  static const SearchParamType quantity = SearchParamType._(
    valueString: 'quantity',
    valueEnum: SearchParamTypeEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// uri
  static const SearchParamType uri = SearchParamType._(
    valueString: 'uri',
    valueEnum: SearchParamTypeEnum.uri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'URI',
    ),
  );

  /// special
  static const SearchParamType special = SearchParamType._(
    valueString: 'special',
    valueEnum: SearchParamTypeEnum.special,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Special',
    ),
  );

  /// List of all enum-like values
  static final List<SearchParamType> values = [
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

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(
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
  SearchParamType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SearchParamTypeCopyWithImpl<SearchParamType> get copyWith =>
      SearchParamTypeCopyWithImpl<SearchParamType>(
        this,
        (v) => v as SearchParamType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SearchParamTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SearchParamTypeCopyWithImpl(super._value, super._then);

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
      SearchParamType(
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
