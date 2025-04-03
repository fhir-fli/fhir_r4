// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  InvoiceStatus._({
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
  factory InvoiceStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return InvoiceStatus._(
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

  /// Create empty [InvoiceStatus] with element only
  factory InvoiceStatus.empty() => InvoiceStatus._(valueString: '');

  /// Factory constructor to create [InvoiceStatus] from JSON.
  factory InvoiceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoiceStatus cannot be constructed from JSON.',
      );
    }
    return InvoiceStatus._(
      valueString: value,
      element: element,
    );
  }

  /// draft
  static final InvoiceStatus draft = InvoiceStatus._(
    valueString: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'draft'.toFhirString,
  );

  /// issued
  static final InvoiceStatus issued = InvoiceStatus._(
    valueString: 'issued',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'issued'.toFhirString,
  );

  /// balanced
  static final InvoiceStatus balanced = InvoiceStatus._(
    valueString: 'balanced',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'balanced'.toFhirString,
  );

  /// cancelled
  static final InvoiceStatus cancelled = InvoiceStatus._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cancelled'.toFhirString,
  );

  /// entered_in_error
  static final InvoiceStatus entered_in_error = InvoiceStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/invoice-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'entered in error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final InvoiceStatus elementOnly = InvoiceStatus._(valueString: '');

  /// List of all enum-like values
  static final List<InvoiceStatus> values = [
    draft,
    issued,
    balanced,
    cancelled,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  InvoiceStatus clone() => InvoiceStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus._(
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

  /// Creates a modified copy with updated properties.
  @override
  InvoiceStatus copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for InvoiceStatus: $newValue');
    }
    return InvoiceStatus._(
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
