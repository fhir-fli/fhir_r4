// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuantityComparator
enum QuantityComparatorBuilderEnum {
  /// <
  lt,

  /// <=
  le,

  /// >=
  ge,

  /// >
  gt,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuantityComparatorBuilderEnum.lt:
        return '<';
      case QuantityComparatorBuilderEnum.le:
        return '<=';
      case QuantityComparatorBuilderEnum.ge:
        return '>=';
      case QuantityComparatorBuilderEnum.gt:
        return '>';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuantityComparatorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuantityComparatorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuantityComparatorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '<':
        return QuantityComparatorBuilderEnum.lt;
      case '<=':
        return QuantityComparatorBuilderEnum.le;
      case '>=':
        return QuantityComparatorBuilderEnum.ge;
      case '>':
        return QuantityComparatorBuilderEnum.gt;
    }
    return null;
  }
}

/// How the Quantity should be understood and represented.
class QuantityComparatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuantityComparatorBuilder._({
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
  factory QuantityComparatorBuilder(
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
    final valueEnum = QuantityComparatorBuilderEnum.fromString(
      valueString,
    );
    return QuantityComparatorBuilder._(
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

  /// Create empty [QuantityComparatorBuilder]
  /// with element only
  factory QuantityComparatorBuilder.empty() =>
      QuantityComparatorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuantityComparatorBuilder] from JSON.
  factory QuantityComparatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparatorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuantityComparatorBuilder cannot be constructed from JSON.',
      );
    }
    return QuantityComparatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuantityComparatorBuilder
  final QuantityComparatorBuilderEnum? valueEnum;

  /// lt
  static QuantityComparatorBuilder lt = QuantityComparatorBuilder._(
    valueString: '<',
    valueEnum: QuantityComparatorBuilderEnum.lt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less than',
    ),
  );

  /// le
  static QuantityComparatorBuilder le = QuantityComparatorBuilder._(
    valueString: '<=',
    valueEnum: QuantityComparatorBuilderEnum.le,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less or Equal to',
    ),
  );

  /// ge
  static QuantityComparatorBuilder ge = QuantityComparatorBuilder._(
    valueString: '>=',
    valueEnum: QuantityComparatorBuilderEnum.ge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater or Equal to',
    ),
  );

  /// gt
  static QuantityComparatorBuilder gt = QuantityComparatorBuilder._(
    valueString: '>',
    valueEnum: QuantityComparatorBuilderEnum.gt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater than',
    ),
  );

  /// For instances where an Element is present but not value
  static QuantityComparatorBuilder elementOnly = QuantityComparatorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuantityComparatorBuilder> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Returns the enum value with an element attached
  QuantityComparatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuantityComparatorBuilder._(
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
