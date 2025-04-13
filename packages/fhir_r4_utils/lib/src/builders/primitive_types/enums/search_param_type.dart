// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchParamType
enum SearchParamTypeBuilderEnum {
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
      case SearchParamTypeBuilderEnum.number:
        return 'number';
      case SearchParamTypeBuilderEnum.date:
        return 'date';
      case SearchParamTypeBuilderEnum.string:
        return 'string';
      case SearchParamTypeBuilderEnum.token:
        return 'token';
      case SearchParamTypeBuilderEnum.reference:
        return 'reference';
      case SearchParamTypeBuilderEnum.composite:
        return 'composite';
      case SearchParamTypeBuilderEnum.quantity:
        return 'quantity';
      case SearchParamTypeBuilderEnum.uri:
        return 'uri';
      case SearchParamTypeBuilderEnum.special:
        return 'special';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchParamTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchParamTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchParamTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'number':
        return SearchParamTypeBuilderEnum.number;
      case 'date':
        return SearchParamTypeBuilderEnum.date;
      case 'string':
        return SearchParamTypeBuilderEnum.string;
      case 'token':
        return SearchParamTypeBuilderEnum.token;
      case 'reference':
        return SearchParamTypeBuilderEnum.reference;
      case 'composite':
        return SearchParamTypeBuilderEnum.composite;
      case 'quantity':
        return SearchParamTypeBuilderEnum.quantity;
      case 'uri':
        return SearchParamTypeBuilderEnum.uri;
      case 'special':
        return SearchParamTypeBuilderEnum.special;
    }
    return null;
  }
}

/// Data types allowed to be used for search parameters.
class SearchParamTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchParamTypeBuilder._({
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
  factory SearchParamTypeBuilder(
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
    final valueEnum = SearchParamTypeBuilderEnum.fromString(
      valueString,
    );
    return SearchParamTypeBuilder._(
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

  /// Create empty [SearchParamTypeBuilder]
  /// with element only
  factory SearchParamTypeBuilder.empty() =>
      SearchParamTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SearchParamTypeBuilder] from JSON.
  factory SearchParamTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchParamTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchParamTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SearchParamTypeBuilder
  final SearchParamTypeBuilderEnum? valueEnum;

  /// number
  static SearchParamTypeBuilder number = SearchParamTypeBuilder._(
    valueString: 'number',
    valueEnum: SearchParamTypeBuilderEnum.number,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Number',
    ),
  );

  /// date
  static SearchParamTypeBuilder date = SearchParamTypeBuilder._(
    valueString: 'date',
    valueEnum: SearchParamTypeBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Date/DateTime',
    ),
  );

  /// string
  static SearchParamTypeBuilder string = SearchParamTypeBuilder._(
    valueString: 'string',
    valueEnum: SearchParamTypeBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'String',
    ),
  );

  /// token
  static SearchParamTypeBuilder token = SearchParamTypeBuilder._(
    valueString: 'token',
    valueEnum: SearchParamTypeBuilderEnum.token,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Token',
    ),
  );

  /// reference
  static SearchParamTypeBuilder reference = SearchParamTypeBuilder._(
    valueString: 'reference',
    valueEnum: SearchParamTypeBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// composite
  static SearchParamTypeBuilder composite = SearchParamTypeBuilder._(
    valueString: 'composite',
    valueEnum: SearchParamTypeBuilderEnum.composite,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Composite',
    ),
  );

  /// quantity
  static SearchParamTypeBuilder quantity = SearchParamTypeBuilder._(
    valueString: 'quantity',
    valueEnum: SearchParamTypeBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// uri
  static SearchParamTypeBuilder uri = SearchParamTypeBuilder._(
    valueString: 'uri',
    valueEnum: SearchParamTypeBuilderEnum.uri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'URI',
    ),
  );

  /// special
  static SearchParamTypeBuilder special = SearchParamTypeBuilder._(
    valueString: 'special',
    valueEnum: SearchParamTypeBuilderEnum.special,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-param-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Special',
    ),
  );

  /// For instances where an Element is present but not value
  static SearchParamTypeBuilder elementOnly = SearchParamTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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

  /// Returns the enum value with an element attached
  SearchParamTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SearchParamTypeBuilder._(
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
