// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the issue affects the success of the action.
class IssueSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IssueSeverity._({
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
  factory IssueSeverity(
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
    return IssueSeverity._(
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

  /// Create empty [IssueSeverity] with element only
  factory IssueSeverity.empty() => IssueSeverity._(validatedValue: '');

  /// Factory constructor to create [IssueSeverity] from JSON.
  factory IssueSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueSeverity cannot be constructed from JSON.',
      );
    }
    return IssueSeverity._(
      validatedValue: value,
      element: element,
    );
  }

  /// fatal
  static final IssueSeverity fatal = IssueSeverity._(
    validatedValue: 'fatal',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fatal'.toFhirString,
  );

  /// error
  static final IssueSeverity error = IssueSeverity._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// warning
  static final IssueSeverity warning = IssueSeverity._(
    validatedValue: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Warning'.toFhirString,
  );

  /// information
  static final IssueSeverity information = IssueSeverity._(
    validatedValue: 'information',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Information'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IssueSeverity elementOnly = IssueSeverity._(validatedValue: '');

  /// List of all enum-like values
  static final List<IssueSeverity> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Clones the current instance
  @override
  IssueSeverity clone() => IssueSeverity._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity._(validatedValue: value, element: newElement);
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
  IssueSeverity copyWith({
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
    return IssueSeverity._(
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
