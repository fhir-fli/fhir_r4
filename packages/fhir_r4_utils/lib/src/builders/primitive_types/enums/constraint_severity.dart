// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// SHALL applications comply with this constraint?
class ConstraintSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConstraintSeverityBuilder._({
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
  factory ConstraintSeverityBuilder(
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
    return ConstraintSeverityBuilder._(
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

  /// Create empty [ConstraintSeverityBuilder] with element only
  factory ConstraintSeverityBuilder.empty() =>
      ConstraintSeverityBuilder._(valueString: '');

  /// Factory constructor to create [ConstraintSeverityBuilder]
  /// from JSON.
  factory ConstraintSeverityBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverityBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConstraintSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return ConstraintSeverityBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// error
  static ConstraintSeverityBuilder error = ConstraintSeverityBuilder._(
    valueString: 'error',
    system: 'http://hl7.org/fhir/ValueSet/constraint-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// warning
  static ConstraintSeverityBuilder warning = ConstraintSeverityBuilder._(
    valueString: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/constraint-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Warning'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConstraintSeverityBuilder elementOnly =
      ConstraintSeverityBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ConstraintSeverityBuilder> values = [
    error,
    warning,
  ];

  /// Clones the current instance
  @override
  ConstraintSeverityBuilder clone() => ConstraintSeverityBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConstraintSeverityBuilder withElement(ElementBuilder? newElement) {
    return ConstraintSeverityBuilder._(
        valueString: valueString, element: newElement,);
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
  ConstraintSeverityBuilder copyWith({
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
      throw ArgumentError('Invalid input for ConstraintSeverity: $newValue');
    }
    return ConstraintSeverityBuilder._(
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
