// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set includes Status codes.
class FinancialResourceStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FinancialResourceStatusCodes._({
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
  factory FinancialResourceStatusCodes(
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
    return FinancialResourceStatusCodes._(
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

  /// Create empty [FinancialResourceStatusCodes] with element only
  factory FinancialResourceStatusCodes.empty() =>
      FinancialResourceStatusCodes._(validatedValue: '');

  /// Factory constructor to create [FinancialResourceStatusCodes] from JSON.
  factory FinancialResourceStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FinancialResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return FinancialResourceStatusCodes._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static final FinancialResourceStatusCodes active =
      FinancialResourceStatusCodes._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/fm-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// cancelled
  static final FinancialResourceStatusCodes cancelled =
      FinancialResourceStatusCodes._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/fm-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// draft
  static final FinancialResourceStatusCodes draft =
      FinancialResourceStatusCodes._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/fm-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// entered_in_error
  static final FinancialResourceStatusCodes entered_in_error =
      FinancialResourceStatusCodes._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/fm-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FinancialResourceStatusCodes elementOnly =
      FinancialResourceStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<FinancialResourceStatusCodes> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  FinancialResourceStatusCodes clone() => FinancialResourceStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes._(
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
  FinancialResourceStatusCodes copyWith({
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
    return FinancialResourceStatusCodes._(
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
