part of '../primitive_types.dart';

/// Actual enum for QuantityComparator
enum QuantityComparatorEnum {
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
      case QuantityComparatorEnum.lt:
        return '<';
      case QuantityComparatorEnum.le:
        return '<=';
      case QuantityComparatorEnum.ge:
        return '>=';
      case QuantityComparatorEnum.gt:
        return '>';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuantityComparatorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuantityComparatorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuantityComparatorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '<':
        return QuantityComparatorEnum.lt;
      case '<=':
        return QuantityComparatorEnum.le;
      case '>=':
        return QuantityComparatorEnum.ge;
      case '>':
        return QuantityComparatorEnum.gt;
    }
    return null;
  }
}

/// How the Quantity should be understood and represented.
class QuantityComparator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuantityComparator._({
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
  factory QuantityComparator(
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
    final valueEnum = QuantityComparatorEnum.fromString(valueString);
    return QuantityComparator._(
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

  /// Factory constructor to create [QuantityComparator]
  /// from JSON.
  factory QuantityComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuantityComparatorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuantityComparator cannot be constructed from JSON.',
      );
    }
    return QuantityComparator._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuantityComparator
  final QuantityComparatorEnum? valueEnum;

  /// lt
  static const QuantityComparator lt = QuantityComparator._(
    valueString: '<',
    valueEnum: QuantityComparatorEnum.lt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less than',
    ),
  );

  /// le
  static const QuantityComparator le = QuantityComparator._(
    valueString: '<=',
    valueEnum: QuantityComparatorEnum.le,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less or Equal to',
    ),
  );

  /// ge
  static const QuantityComparator ge = QuantityComparator._(
    valueString: '>=',
    valueEnum: QuantityComparatorEnum.ge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater or Equal to',
    ),
  );

  /// gt
  static const QuantityComparator gt = QuantityComparator._(
    valueString: '>',
    valueEnum: QuantityComparatorEnum.gt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quantity-comparator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater than',
    ),
  );

  /// List of all enum-like values
  static final List<QuantityComparator> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator._(
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
  QuantityComparator clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuantityComparatorCopyWithImpl<QuantityComparator> get copyWith =>
      QuantityComparatorCopyWithImpl<QuantityComparator>(
        this,
        (v) => v as QuantityComparator,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuantityComparatorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuantityComparatorCopyWithImpl(super._value, super._then);

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
      QuantityComparator(
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
