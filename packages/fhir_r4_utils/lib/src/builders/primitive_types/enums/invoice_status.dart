// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InvoiceStatusBuilder._({
    required super.valueString,
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
  factory InvoiceStatusBuilder(
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
    return InvoiceStatusBuilder._(
      valueString: valueString,
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

  /// Create empty [InvoiceStatusBuilder] with element only
  factory InvoiceStatusBuilder.empty() =>
      InvoiceStatusBuilder._(valueString: '');

  /// Factory constructor to create [InvoiceStatusBuilder]
  /// from JSON.
  factory InvoiceStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoiceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return InvoiceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// draft
  static InvoiceStatusBuilder draft = InvoiceStatusBuilder._(
    valueString: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'draft'.toFhirStringBuilder,
  );

  /// issued
  static InvoiceStatusBuilder issued = InvoiceStatusBuilder._(
    valueString: 'issued',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'issued'.toFhirStringBuilder,
  );

  /// balanced
  static InvoiceStatusBuilder balanced = InvoiceStatusBuilder._(
    valueString: 'balanced',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'balanced'.toFhirStringBuilder,
  );

  /// cancelled
  static InvoiceStatusBuilder cancelled = InvoiceStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static InvoiceStatusBuilder entered_in_error = InvoiceStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'entered in error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static InvoiceStatusBuilder elementOnly =
      InvoiceStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<InvoiceStatusBuilder> values = [
    draft,
    issued,
    balanced,
    cancelled,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  InvoiceStatusBuilder clone() => InvoiceStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  InvoiceStatusBuilder withElement(ElementBuilder? newElement) {
    return InvoiceStatusBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  InvoiceStatusBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for InvoiceStatus: $newValue');
    }
    return InvoiceStatusBuilder._(
      valueString: newValue ?? valueString,
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
