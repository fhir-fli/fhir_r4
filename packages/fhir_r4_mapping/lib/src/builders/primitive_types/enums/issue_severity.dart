// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for IssueSeverity
enum IssueSeverityBuilderEnum {
  /// fatal
  fatal,

  /// error
  error,

  /// warning
  warning,

  /// information
  information,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IssueSeverityBuilderEnum.fatal:
        return 'fatal';
      case IssueSeverityBuilderEnum.error:
        return 'error';
      case IssueSeverityBuilderEnum.warning:
        return 'warning';
      case IssueSeverityBuilderEnum.information:
        return 'information';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IssueSeverityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return IssueSeverityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IssueSeverityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fatal':
        return IssueSeverityBuilderEnum.fatal;
      case 'error':
        return IssueSeverityBuilderEnum.error;
      case 'warning':
        return IssueSeverityBuilderEnum.warning;
      case 'information':
        return IssueSeverityBuilderEnum.information;
    }
    return null;
  }
}

/// How the issue affects the success of the action.
class IssueSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IssueSeverityBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = IssueSeverityBuilderEnum.fromString(
      valueString,
    );
    return IssueSeverityBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [IssueSeverityBuilder]
  /// with element only
  factory IssueSeverityBuilder.empty() =>
      IssueSeverityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [IssueSeverityBuilder] from JSON.
  factory IssueSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverityBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for IssueSeverityBuilder
  final IssueSeverityBuilderEnum? valueEnum;

  /// fatal
  static IssueSeverityBuilder fatal = IssueSeverityBuilder._(
    valueString: 'fatal',
    valueEnum: IssueSeverityBuilderEnum.fatal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fatal',
    ),
  );

  /// error
  static IssueSeverityBuilder error = IssueSeverityBuilder._(
    valueString: 'error',
    valueEnum: IssueSeverityBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// warning
  static IssueSeverityBuilder warning = IssueSeverityBuilder._(
    valueString: 'warning',
    valueEnum: IssueSeverityBuilderEnum.warning,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Warning',
    ),
  );

  /// information
  static IssueSeverityBuilder information = IssueSeverityBuilder._(
    valueString: 'information',
    valueEnum: IssueSeverityBuilderEnum.information,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Information',
    ),
  );

  /// For instances where an Element is present but not value
  static IssueSeverityBuilder elementOnly = IssueSeverityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<IssueSeverityBuilder> values = [
    fatal,
    error,
    warning,
    information,
  ];

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
}
