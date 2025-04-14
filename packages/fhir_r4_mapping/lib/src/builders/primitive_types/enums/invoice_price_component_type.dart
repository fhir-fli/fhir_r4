// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InvoicePriceComponentType
enum InvoicePriceComponentTypeBuilderEnum {
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
      case InvoicePriceComponentTypeBuilderEnum.base:
        return 'base';
      case InvoicePriceComponentTypeBuilderEnum.surcharge:
        return 'surcharge';
      case InvoicePriceComponentTypeBuilderEnum.deduction:
        return 'deduction';
      case InvoicePriceComponentTypeBuilderEnum.discount:
        return 'discount';
      case InvoicePriceComponentTypeBuilderEnum.tax:
        return 'tax';
      case InvoicePriceComponentTypeBuilderEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InvoicePriceComponentTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InvoicePriceComponentTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InvoicePriceComponentTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'base':
        return InvoicePriceComponentTypeBuilderEnum.base;
      case 'surcharge':
        return InvoicePriceComponentTypeBuilderEnum.surcharge;
      case 'deduction':
        return InvoicePriceComponentTypeBuilderEnum.deduction;
      case 'discount':
        return InvoicePriceComponentTypeBuilderEnum.discount;
      case 'tax':
        return InvoicePriceComponentTypeBuilderEnum.tax;
      case 'informational':
        return InvoicePriceComponentTypeBuilderEnum.informational;
    }
    return null;
  }
}

/// Codes indicating the kind of the price component.
class InvoicePriceComponentTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InvoicePriceComponentTypeBuilder._({
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
  factory InvoicePriceComponentTypeBuilder(
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
    final valueEnum = InvoicePriceComponentTypeBuilderEnum.fromString(
      valueString,
    );
    return InvoicePriceComponentTypeBuilder._(
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

  /// Create empty [InvoicePriceComponentTypeBuilder]
  /// with element only
  factory InvoicePriceComponentTypeBuilder.empty() =>
      InvoicePriceComponentTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InvoicePriceComponentTypeBuilder] from JSON.
  factory InvoicePriceComponentTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoicePriceComponentTypeBuilder cannot be constructed from JSON.',
      );
    }
    return InvoicePriceComponentTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InvoicePriceComponentTypeBuilder
  final InvoicePriceComponentTypeBuilderEnum? valueEnum;

  /// base
  static InvoicePriceComponentTypeBuilder base =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'base',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.base,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'base price',
    ),
  );

  /// surcharge
  static InvoicePriceComponentTypeBuilder surcharge =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'surcharge',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.surcharge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'surcharge',
    ),
  );

  /// deduction
  static InvoicePriceComponentTypeBuilder deduction =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'deduction',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.deduction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'deduction',
    ),
  );

  /// discount
  static InvoicePriceComponentTypeBuilder discount =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'discount',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.discount,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'discount',
    ),
  );

  /// tax
  static InvoicePriceComponentTypeBuilder tax =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'tax',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.tax,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'tax',
    ),
  );

  /// informational
  static InvoicePriceComponentTypeBuilder informational =
      InvoicePriceComponentTypeBuilder._(
    valueString: 'informational',
    valueEnum: InvoicePriceComponentTypeBuilderEnum.informational,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'informational',
    ),
  );

  /// For instances where an Element is present but not value
  static InvoicePriceComponentTypeBuilder elementOnly =
      InvoicePriceComponentTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InvoicePriceComponentTypeBuilder> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  InvoicePriceComponentTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InvoicePriceComponentTypeBuilder._(
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
