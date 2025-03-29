// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InvoiceStatusBuilder._({
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
  factory InvoiceStatusBuilder(
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
    return InvoiceStatusBuilder._(
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

  /// Create empty [InvoiceStatusBuilder] with element only
  factory InvoiceStatusBuilder.empty() =>
      InvoiceStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [InvoiceStatusBuilder] from JSON.
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
      validatedValue: value,
      element: element,
    );
  }

  /// draft
  static InvoiceStatusBuilder draft = InvoiceStatusBuilder._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'draft'.toFhirStringBuilder,
  );

  /// issued
  static InvoiceStatusBuilder issued = InvoiceStatusBuilder._(
    validatedValue: 'issued',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'issued'.toFhirStringBuilder,
  );

  /// balanced
  static InvoiceStatusBuilder balanced = InvoiceStatusBuilder._(
    validatedValue: 'balanced',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'balanced'.toFhirStringBuilder,
  );

  /// cancelled
  static InvoiceStatusBuilder cancelled = InvoiceStatusBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static InvoiceStatusBuilder entered_in_error = InvoiceStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'entered in error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static InvoiceStatusBuilder elementOnly =
      InvoiceStatusBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  InvoiceStatusBuilder withElement(ElementBuilder? newElement) {
    return InvoiceStatusBuilder._(validatedValue: value, element: newElement);
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
  InvoiceStatusBuilder copyWith({
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
    return InvoiceStatusBuilder._(
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
