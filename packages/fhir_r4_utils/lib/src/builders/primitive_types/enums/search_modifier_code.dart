// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchModifierCode
enum SearchModifierCodeBuilderEnum {
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
      case SearchModifierCodeBuilderEnum.missing:
        return 'missing';
      case SearchModifierCodeBuilderEnum.exact:
        return 'exact';
      case SearchModifierCodeBuilderEnum.contains_:
        return 'contains';
      case SearchModifierCodeBuilderEnum.not:
        return 'not';
      case SearchModifierCodeBuilderEnum.text:
        return 'text';
      case SearchModifierCodeBuilderEnum.in_:
        return 'in';
      case SearchModifierCodeBuilderEnum.notIn:
        return 'not-in';
      case SearchModifierCodeBuilderEnum.below:
        return 'below';
      case SearchModifierCodeBuilderEnum.above:
        return 'above';
      case SearchModifierCodeBuilderEnum.type:
        return 'type';
      case SearchModifierCodeBuilderEnum.identifier:
        return 'identifier';
      case SearchModifierCodeBuilderEnum.ofType:
        return 'ofType';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchModifierCodeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchModifierCodeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchModifierCodeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'missing':
        return SearchModifierCodeBuilderEnum.missing;
      case 'exact':
        return SearchModifierCodeBuilderEnum.exact;
      case 'contains':
        return SearchModifierCodeBuilderEnum.contains_;
      case 'not':
        return SearchModifierCodeBuilderEnum.not;
      case 'text':
        return SearchModifierCodeBuilderEnum.text;
      case 'in':
        return SearchModifierCodeBuilderEnum.in_;
      case 'not-in':
        return SearchModifierCodeBuilderEnum.notIn;
      case 'below':
        return SearchModifierCodeBuilderEnum.below;
      case 'above':
        return SearchModifierCodeBuilderEnum.above;
      case 'type':
        return SearchModifierCodeBuilderEnum.type;
      case 'identifier':
        return SearchModifierCodeBuilderEnum.identifier;
      case 'ofType':
        return SearchModifierCodeBuilderEnum.ofType;
    }
    return null;
  }
}

/// A supported modifier for a search parameter.
class SearchModifierCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchModifierCodeBuilder._({
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
    final valueEnum = SearchModifierCodeBuilderEnum.fromString(
      valueString,
    );
    return SearchModifierCodeBuilder._(
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

  /// Create empty [SearchModifierCodeBuilder]
  /// with element only
  factory SearchModifierCodeBuilder.empty() =>
      SearchModifierCodeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SearchModifierCodeBuilder] from JSON.
  factory SearchModifierCodeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCodeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for SearchModifierCodeBuilder
  final SearchModifierCodeBuilderEnum? valueEnum;

  /// missing
  static SearchModifierCodeBuilder missing = SearchModifierCodeBuilder._(
    valueString: 'missing',
    valueEnum: SearchModifierCodeBuilderEnum.missing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Missing',
    ),
  );

  /// exact
  static SearchModifierCodeBuilder exact = SearchModifierCodeBuilder._(
    valueString: 'exact',
    valueEnum: SearchModifierCodeBuilderEnum.exact,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exact',
    ),
  );

  /// contains_
  static SearchModifierCodeBuilder contains_ = SearchModifierCodeBuilder._(
    valueString: 'contains',
    valueEnum: SearchModifierCodeBuilderEnum.contains_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contains',
    ),
  );

  /// not
  static SearchModifierCodeBuilder not = SearchModifierCodeBuilder._(
    valueString: 'not',
    valueEnum: SearchModifierCodeBuilderEnum.not,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not',
    ),
  );

  /// text
  static SearchModifierCodeBuilder text = SearchModifierCodeBuilder._(
    valueString: 'text',
    valueEnum: SearchModifierCodeBuilderEnum.text,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Text',
    ),
  );

  /// in_
  static SearchModifierCodeBuilder in_ = SearchModifierCodeBuilder._(
    valueString: 'in',
    valueEnum: SearchModifierCodeBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In',
    ),
  );

  /// not_in
  static SearchModifierCodeBuilder notIn = SearchModifierCodeBuilder._(
    valueString: 'not-in',
    valueEnum: SearchModifierCodeBuilderEnum.notIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not In',
    ),
  );

  /// below
  static SearchModifierCodeBuilder below = SearchModifierCodeBuilder._(
    valueString: 'below',
    valueEnum: SearchModifierCodeBuilderEnum.below,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Below',
    ),
  );

  /// above
  static SearchModifierCodeBuilder above = SearchModifierCodeBuilder._(
    valueString: 'above',
    valueEnum: SearchModifierCodeBuilderEnum.above,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Above',
    ),
  );

  /// type
  static SearchModifierCodeBuilder type = SearchModifierCodeBuilder._(
    valueString: 'type',
    valueEnum: SearchModifierCodeBuilderEnum.type,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Type',
    ),
  );

  /// identifier
  static SearchModifierCodeBuilder identifier = SearchModifierCodeBuilder._(
    valueString: 'identifier',
    valueEnum: SearchModifierCodeBuilderEnum.identifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Identifier',
    ),
  );

  /// ofType
  static SearchModifierCodeBuilder ofType = SearchModifierCodeBuilder._(
    valueString: 'ofType',
    valueEnum: SearchModifierCodeBuilderEnum.ofType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-modifier-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Of Type',
    ),
  );

  /// For instances where an Element is present but not value
  static SearchModifierCodeBuilder elementOnly = SearchModifierCodeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SearchModifierCodeBuilder> values = [
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
  SearchModifierCodeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SearchModifierCodeBuilder._(
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
