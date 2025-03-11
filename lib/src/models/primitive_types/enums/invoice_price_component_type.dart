// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes indicating the kind of the price component.
class InvoicePriceComponentType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  InvoicePriceComponentType._({
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
  factory InvoicePriceComponentType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return InvoicePriceComponentType._(
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

  /// Create empty [InvoicePriceComponentType] with element only
  factory InvoicePriceComponentType.empty() =>
      InvoicePriceComponentType._(validatedValue: '');

  /// Factory constructor to create [InvoicePriceComponentType] from JSON.
  factory InvoicePriceComponentType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoicePriceComponentType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoicePriceComponentType cannot be constructed from JSON.',
      );
    }
    return InvoicePriceComponentType._(validatedValue: value, element: element);
  }

  /// base
  static final InvoicePriceComponentType base = InvoicePriceComponentType._(
    validatedValue: 'base',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'base price'.toFhirString,
  );

  /// surcharge
  static final InvoicePriceComponentType surcharge =
      InvoicePriceComponentType._(
    validatedValue: 'surcharge',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'surcharge'.toFhirString,
  );

  /// deduction
  static final InvoicePriceComponentType deduction =
      InvoicePriceComponentType._(
    validatedValue: 'deduction',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'deduction'.toFhirString,
  );

  /// discount
  static final InvoicePriceComponentType discount = InvoicePriceComponentType._(
    validatedValue: 'discount',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'discount'.toFhirString,
  );

  /// tax
  static final InvoicePriceComponentType tax = InvoicePriceComponentType._(
    validatedValue: 'tax',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'tax'.toFhirString,
  );

  /// informational
  static final InvoicePriceComponentType informational =
      InvoicePriceComponentType._(
    validatedValue: 'informational',
    system: 'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'informational'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final InvoicePriceComponentType elementOnly =
      InvoicePriceComponentType._(validatedValue: '');

  /// List of all enum-like values
  static final List<InvoicePriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Clones the current instance
  @override
  InvoicePriceComponentType clone() => InvoicePriceComponentType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  InvoicePriceComponentType withElement(Element? newElement) {
    return InvoicePriceComponentType._(
      validatedValue: value,
      element: newElement,
    );
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
  InvoicePriceComponentType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return InvoicePriceComponentType._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
