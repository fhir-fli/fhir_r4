// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes indicating the kind of the price component.
class InvoicePriceComponentTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InvoicePriceComponentTypeBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return InvoicePriceComponentTypeBuilder._(
      validatedValue: validated,
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

  /// Create empty [InvoicePriceComponentTypeBuilder] with element only
  factory InvoicePriceComponentTypeBuilder.empty() =>
      InvoicePriceComponentTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [InvoicePriceComponentTypeBuilder]
  /// from JSON.
  factory InvoicePriceComponentTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoicePriceComponentTypeBuilder cannot be constructed from JSON.',
      );
    }
    return InvoicePriceComponentTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// base
  static InvoicePriceComponentTypeBuilder base =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'base',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'base price'.toFhirStringBuilder,
  );

  /// surcharge
  static InvoicePriceComponentTypeBuilder surcharge =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'surcharge',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'surcharge'.toFhirStringBuilder,
  );

  /// deduction
  static InvoicePriceComponentTypeBuilder deduction =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'deduction',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'deduction'.toFhirStringBuilder,
  );

  /// discount
  static InvoicePriceComponentTypeBuilder discount =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'discount',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'discount'.toFhirStringBuilder,
  );

  /// tax
  static InvoicePriceComponentTypeBuilder tax =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'tax',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'tax'.toFhirStringBuilder,
  );

  /// informational
  static InvoicePriceComponentTypeBuilder informational =
      InvoicePriceComponentTypeBuilder._(
    validatedValue: 'informational',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'informational'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static InvoicePriceComponentTypeBuilder elementOnly =
      InvoicePriceComponentTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<InvoicePriceComponentTypeBuilder> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Clones the current instance
  @override
  InvoicePriceComponentTypeBuilder clone() =>
      InvoicePriceComponentTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  InvoicePriceComponentTypeBuilder withElement(ElementBuilder? newElement) {
    return InvoicePriceComponentTypeBuilder._(
        validatedValue: value, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  InvoicePriceComponentTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return InvoicePriceComponentTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
