// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The outcome of the processing.
class RemittanceOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RemittanceOutcome._({
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
  factory RemittanceOutcome(
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
    return RemittanceOutcome._(
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

  /// Create empty [RemittanceOutcome] with element only
  factory RemittanceOutcome.empty() => RemittanceOutcome._(validatedValue: '');

  /// Factory constructor to create [RemittanceOutcome] from JSON.
  factory RemittanceOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RemittanceOutcome cannot be constructed from JSON.',
      );
    }
    return RemittanceOutcome._(
      validatedValue: value,
      element: element,
    );
  }

  /// queued
  static final RemittanceOutcome queued = RemittanceOutcome._(
    validatedValue: 'queued',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Queued'.toFhirString,
  );

  /// complete
  static final RemittanceOutcome complete = RemittanceOutcome._(
    validatedValue: 'complete',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complete'.toFhirString,
  );

  /// error
  static final RemittanceOutcome error = RemittanceOutcome._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// partial
  static final RemittanceOutcome partial = RemittanceOutcome._(
    validatedValue: 'partial',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Partial'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RemittanceOutcome elementOnly =
      RemittanceOutcome._(validatedValue: '');

  /// List of all enum-like values
  static final List<RemittanceOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Clones the current instance
  @override
  RemittanceOutcome clone() => RemittanceOutcome._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome._(
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
  RemittanceOutcome copyWith({
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
    return RemittanceOutcome._(
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
