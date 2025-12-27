part of '../primitive_types.dart';

/// Actual enum for FilterOperator
enum FilterOperatorBuilderEnum {
  /// =
  eq,

  /// is-a
  isA,

  /// descendent-of
  descendentOf,

  /// is-not-a
  isNotA,

  /// regex
  regex,

  /// in
  in_,

  /// not-in
  notIn,

  /// generalizes
  generalizes,

  /// exists
  exists,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FilterOperatorBuilderEnum.eq:
        return '=';
      case FilterOperatorBuilderEnum.isA:
        return 'is-a';
      case FilterOperatorBuilderEnum.descendentOf:
        return 'descendent-of';
      case FilterOperatorBuilderEnum.isNotA:
        return 'is-not-a';
      case FilterOperatorBuilderEnum.regex:
        return 'regex';
      case FilterOperatorBuilderEnum.in_:
        return 'in';
      case FilterOperatorBuilderEnum.notIn:
        return 'not-in';
      case FilterOperatorBuilderEnum.generalizes:
        return 'generalizes';
      case FilterOperatorBuilderEnum.exists:
        return 'exists';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FilterOperatorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FilterOperatorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FilterOperatorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '=':
        return FilterOperatorBuilderEnum.eq;
      case 'is-a':
        return FilterOperatorBuilderEnum.isA;
      case 'descendent-of':
        return FilterOperatorBuilderEnum.descendentOf;
      case 'is-not-a':
        return FilterOperatorBuilderEnum.isNotA;
      case 'regex':
        return FilterOperatorBuilderEnum.regex;
      case 'in':
        return FilterOperatorBuilderEnum.in_;
      case 'not-in':
        return FilterOperatorBuilderEnum.notIn;
      case 'generalizes':
        return FilterOperatorBuilderEnum.generalizes;
      case 'exists':
        return FilterOperatorBuilderEnum.exists;
    }
    return null;
  }
}

/// The kind of operation to perform as a part of a property based filter.
class FilterOperatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FilterOperatorBuilder._({
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
  factory FilterOperatorBuilder(
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
    final valueEnum = FilterOperatorBuilderEnum.fromString(
      valueString,
    );
    return FilterOperatorBuilder._(
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

  /// Create empty [FilterOperatorBuilder]
  /// with element only
  factory FilterOperatorBuilder.empty() =>
      FilterOperatorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FilterOperatorBuilder] from JSON.
  factory FilterOperatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperatorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FilterOperatorBuilder cannot be constructed from JSON.',
      );
    }
    return FilterOperatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FilterOperatorBuilder
  final FilterOperatorBuilderEnum? valueEnum;

  /// eq
  static FilterOperatorBuilder eq = FilterOperatorBuilder._(
    valueString: '=',
    valueEnum: FilterOperatorBuilderEnum.eq,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Equals',
    ),
  );

  /// is_a
  static FilterOperatorBuilder isA = FilterOperatorBuilder._(
    valueString: 'is-a',
    valueEnum: FilterOperatorBuilderEnum.isA,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Is A (by subsumption)',
    ),
  );

  /// descendent_of
  static FilterOperatorBuilder descendentOf = FilterOperatorBuilder._(
    valueString: 'descendent-of',
    valueEnum: FilterOperatorBuilderEnum.descendentOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Descendent Of (by subsumption)',
    ),
  );

  /// is_not_a
  static FilterOperatorBuilder isNotA = FilterOperatorBuilder._(
    valueString: 'is-not-a',
    valueEnum: FilterOperatorBuilderEnum.isNotA,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not (Is A) (by subsumption)',
    ),
  );

  /// regex
  static FilterOperatorBuilder regex = FilterOperatorBuilder._(
    valueString: 'regex',
    valueEnum: FilterOperatorBuilderEnum.regex,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Regular Expression',
    ),
  );

  /// in_
  static FilterOperatorBuilder in_ = FilterOperatorBuilder._(
    valueString: 'in',
    valueEnum: FilterOperatorBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Set',
    ),
  );

  /// not_in
  static FilterOperatorBuilder notIn = FilterOperatorBuilder._(
    valueString: 'not-in',
    valueEnum: FilterOperatorBuilderEnum.notIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not in Set',
    ),
  );

  /// generalizes
  static FilterOperatorBuilder generalizes = FilterOperatorBuilder._(
    valueString: 'generalizes',
    valueEnum: FilterOperatorBuilderEnum.generalizes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generalizes (by Subsumption)',
    ),
  );

  /// exists
  static FilterOperatorBuilder exists = FilterOperatorBuilder._(
    valueString: 'exists',
    valueEnum: FilterOperatorBuilderEnum.exists,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exists',
    ),
  );

  /// For instances where an Element is present but not value
  static FilterOperatorBuilder elementOnly = FilterOperatorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FilterOperatorBuilder> values = [
    eq,
    isA,
    descendentOf,
    isNotA,
    regex,
    in_,
    notIn,
    generalizes,
    exists,
  ];

  /// Returns the enum value with an element attached
  FilterOperatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FilterOperatorBuilder._(
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
