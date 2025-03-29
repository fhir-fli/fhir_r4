// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// SHALL applications comply with this constraint?
class ConstraintSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConstraintSeverity._({
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
  factory ConstraintSeverity(
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
    return ConstraintSeverity._(
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

  /// Create empty [ConstraintSeverity] with element only
  factory ConstraintSeverity.empty() =>
      ConstraintSeverity._(validatedValue: '');

  /// Factory constructor to create [ConstraintSeverity] from JSON.
  factory ConstraintSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConstraintSeverity cannot be constructed from JSON.',
      );
    }
    return ConstraintSeverity._(
      validatedValue: value,
      element: element,
    );
  }

  /// error
  static final ConstraintSeverity error = ConstraintSeverity._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/constraint-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// warning
  static final ConstraintSeverity warning = ConstraintSeverity._(
    validatedValue: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/constraint-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Warning'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConstraintSeverity elementOnly =
      ConstraintSeverity._(validatedValue: '');

  /// List of all enum-like values
  static final List<ConstraintSeverity> values = [
    error,
    warning,
  ];

  /// Clones the current instance
  @override
  ConstraintSeverity clone() => ConstraintSeverity._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity._(
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
  ConstraintSeverity copyWith({
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
    return ConstraintSeverity._(
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
