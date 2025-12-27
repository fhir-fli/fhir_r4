part of '../primitive_types.dart';

/// Actual enum for FilterOperator
enum FilterOperatorEnum {
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
      case FilterOperatorEnum.eq:
        return '=';
      case FilterOperatorEnum.isA:
        return 'is-a';
      case FilterOperatorEnum.descendentOf:
        return 'descendent-of';
      case FilterOperatorEnum.isNotA:
        return 'is-not-a';
      case FilterOperatorEnum.regex:
        return 'regex';
      case FilterOperatorEnum.in_:
        return 'in';
      case FilterOperatorEnum.notIn:
        return 'not-in';
      case FilterOperatorEnum.generalizes:
        return 'generalizes';
      case FilterOperatorEnum.exists:
        return 'exists';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FilterOperatorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FilterOperatorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FilterOperatorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '=':
        return FilterOperatorEnum.eq;
      case 'is-a':
        return FilterOperatorEnum.isA;
      case 'descendent-of':
        return FilterOperatorEnum.descendentOf;
      case 'is-not-a':
        return FilterOperatorEnum.isNotA;
      case 'regex':
        return FilterOperatorEnum.regex;
      case 'in':
        return FilterOperatorEnum.in_;
      case 'not-in':
        return FilterOperatorEnum.notIn;
      case 'generalizes':
        return FilterOperatorEnum.generalizes;
      case 'exists':
        return FilterOperatorEnum.exists;
    }
    return null;
  }
}

/// The kind of operation to perform as a part of a property based filter.
class FilterOperator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FilterOperator._({
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
  factory FilterOperator(
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
    final valueEnum = FilterOperatorEnum.fromString(valueString);
    return FilterOperator._(
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

  /// Factory constructor to create [FilterOperator]
  /// from JSON.
  factory FilterOperator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FilterOperatorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FilterOperator cannot be constructed from JSON.',
      );
    }
    return FilterOperator._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FilterOperator
  final FilterOperatorEnum? valueEnum;

  /// eq
  static const FilterOperator eq = FilterOperator._(
    valueString: '=',
    valueEnum: FilterOperatorEnum.eq,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Equals',
    ),
  );

  /// is_a
  static const FilterOperator isA = FilterOperator._(
    valueString: 'is-a',
    valueEnum: FilterOperatorEnum.isA,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Is A (by subsumption)',
    ),
  );

  /// descendent_of
  static const FilterOperator descendentOf = FilterOperator._(
    valueString: 'descendent-of',
    valueEnum: FilterOperatorEnum.descendentOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Descendent Of (by subsumption)',
    ),
  );

  /// is_not_a
  static const FilterOperator isNotA = FilterOperator._(
    valueString: 'is-not-a',
    valueEnum: FilterOperatorEnum.isNotA,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not (Is A) (by subsumption)',
    ),
  );

  /// regex
  static const FilterOperator regex = FilterOperator._(
    valueString: 'regex',
    valueEnum: FilterOperatorEnum.regex,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Regular Expression',
    ),
  );

  /// in_
  static const FilterOperator in_ = FilterOperator._(
    valueString: 'in',
    valueEnum: FilterOperatorEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Set',
    ),
  );

  /// not_in
  static const FilterOperator notIn = FilterOperator._(
    valueString: 'not-in',
    valueEnum: FilterOperatorEnum.notIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not in Set',
    ),
  );

  /// generalizes
  static const FilterOperator generalizes = FilterOperator._(
    valueString: 'generalizes',
    valueEnum: FilterOperatorEnum.generalizes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generalizes (by Subsumption)',
    ),
  );

  /// exists
  static const FilterOperator exists = FilterOperator._(
    valueString: 'exists',
    valueEnum: FilterOperatorEnum.exists,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/filter-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exists',
    ),
  );

  /// List of all enum-like values
  static final List<FilterOperator> values = [
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
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(
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
  FilterOperator clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FilterOperatorCopyWithImpl<FilterOperator> get copyWith =>
      FilterOperatorCopyWithImpl<FilterOperator>(
        this,
        (v) => v as FilterOperator,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FilterOperatorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FilterOperatorCopyWithImpl(super._value, super._then);

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
      FilterOperator(
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
