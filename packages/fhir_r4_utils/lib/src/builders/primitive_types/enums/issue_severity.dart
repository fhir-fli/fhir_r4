// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the issue affects the success of the action.
class IssueSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IssueSeverityBuilder._({
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
  factory IssueSeverityBuilder(
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
    return IssueSeverityBuilder._(
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

  /// Create empty [IssueSeverityBuilder] with element only
  factory IssueSeverityBuilder.empty() =>
      IssueSeverityBuilder._(valueString: '');

  /// Factory constructor to create [IssueSeverityBuilder]
  /// from JSON.
  factory IssueSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverityBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return IssueSeverityBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// fatal
  static IssueSeverityBuilder fatal = IssueSeverityBuilder._(
    valueString: 'fatal',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fatal'.toFhirStringBuilder,
  );

  /// error
  static IssueSeverityBuilder error = IssueSeverityBuilder._(
    valueString: 'error',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// warning
  static IssueSeverityBuilder warning = IssueSeverityBuilder._(
    valueString: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Warning'.toFhirStringBuilder,
  );

  /// information
  static IssueSeverityBuilder information = IssueSeverityBuilder._(
    valueString: 'information',
    system: 'http://hl7.org/fhir/ValueSet/issue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Information'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static IssueSeverityBuilder elementOnly =
      IssueSeverityBuilder._(valueString: '');

  /// List of all enum-like values
  static List<IssueSeverityBuilder> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Clones the current instance
  @override
  IssueSeverityBuilder clone() => IssueSeverityBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  IssueSeverityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IssueSeverityBuilder._(
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
  IssueSeverityBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for IssueSeverity: $newValue',
      );
    }
    return IssueSeverityBuilder._(
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
