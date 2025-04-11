// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InvoicePriceComponentType
enum InvoicePriceComponentTypeEnum {
  /// base
  base,

  /// surcharge
  surcharge,

  /// deduction
  deduction,

  /// discount
  discount,

  /// tax
  tax,

  /// informational
  informational,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InvoicePriceComponentTypeEnum.base:
        return 'base';
      case InvoicePriceComponentTypeEnum.surcharge:
        return 'surcharge';
      case InvoicePriceComponentTypeEnum.deduction:
        return 'deduction';
      case InvoicePriceComponentTypeEnum.discount:
        return 'discount';
      case InvoicePriceComponentTypeEnum.tax:
        return 'tax';
      case InvoicePriceComponentTypeEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InvoicePriceComponentTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InvoicePriceComponentTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InvoicePriceComponentTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'base':
        return InvoicePriceComponentTypeEnum.base;
      case 'surcharge':
        return InvoicePriceComponentTypeEnum.surcharge;
      case 'deduction':
        return InvoicePriceComponentTypeEnum.deduction;
      case 'discount':
        return InvoicePriceComponentTypeEnum.discount;
      case 'tax':
        return InvoicePriceComponentTypeEnum.tax;
      case 'informational':
        return InvoicePriceComponentTypeEnum.informational;
    }
    return null;
  }
}

/// Codes indicating the kind of the price component.
class InvoicePriceComponentType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InvoicePriceComponentType._({
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
  factory InvoicePriceComponentType(
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
    final valueEnum = InvoicePriceComponentTypeEnum.fromString(valueString);
    return InvoicePriceComponentType._(
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

  /// Factory constructor to create [InvoicePriceComponentType]
  /// from JSON.
  factory InvoicePriceComponentType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InvoicePriceComponentTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoicePriceComponentType cannot be constructed from JSON.',
      );
    }
    return InvoicePriceComponentType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InvoicePriceComponentType
  final InvoicePriceComponentTypeEnum? valueEnum;

  /// base
  static const InvoicePriceComponentType base = InvoicePriceComponentType._(
    valueString: 'base',
    valueEnum: InvoicePriceComponentTypeEnum.base,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'base price',
    ),
  );

  /// surcharge
  static const InvoicePriceComponentType surcharge =
      InvoicePriceComponentType._(
    valueString: 'surcharge',
    valueEnum: InvoicePriceComponentTypeEnum.surcharge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'surcharge',
    ),
  );

  /// deduction
  static const InvoicePriceComponentType deduction =
      InvoicePriceComponentType._(
    valueString: 'deduction',
    valueEnum: InvoicePriceComponentTypeEnum.deduction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'deduction',
    ),
  );

  /// discount
  static const InvoicePriceComponentType discount = InvoicePriceComponentType._(
    valueString: 'discount',
    valueEnum: InvoicePriceComponentTypeEnum.discount,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'discount',
    ),
  );

  /// tax
  static const InvoicePriceComponentType tax = InvoicePriceComponentType._(
    valueString: 'tax',
    valueEnum: InvoicePriceComponentTypeEnum.tax,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'tax',
    ),
  );

  /// informational
  static const InvoicePriceComponentType informational =
      InvoicePriceComponentType._(
    valueString: 'informational',
    valueEnum: InvoicePriceComponentTypeEnum.informational,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'informational',
    ),
  );

  /// List of all enum-like values
  static final List<InvoicePriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType._(
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
  InvoicePriceComponentType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InvoicePriceComponentTypeCopyWithImpl<InvoicePriceComponentType>
      get copyWith =>
          InvoicePriceComponentTypeCopyWithImpl<InvoicePriceComponentType>(
            this,
            (v) => v as InvoicePriceComponentType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InvoicePriceComponentTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InvoicePriceComponentTypeCopyWithImpl(super._value, super._then);

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
      InvoicePriceComponentType(
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
