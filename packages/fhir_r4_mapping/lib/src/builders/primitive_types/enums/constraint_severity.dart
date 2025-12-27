part of '../primitive_types.dart';

/// Actual enum for ConstraintSeverity
enum ConstraintSeverityBuilderEnum {
  /// error
  error,

  /// warning
  warning,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConstraintSeverityBuilderEnum.error:
        return 'error';
      case ConstraintSeverityBuilderEnum.warning:
        return 'warning';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConstraintSeverityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConstraintSeverityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConstraintSeverityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'error':
        return ConstraintSeverityBuilderEnum.error;
      case 'warning':
        return ConstraintSeverityBuilderEnum.warning;
    }
    return null;
  }
}

/// SHALL applications comply with this constraint?
class ConstraintSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConstraintSeverityBuilder._({
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
    final valueEnum = ConstraintSeverityBuilderEnum.fromString(
      valueString,
    );
    return ConstraintSeverityBuilder._(
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

  /// Create empty [ConstraintSeverityBuilder]
  /// with element only
  factory ConstraintSeverityBuilder.empty() =>
      ConstraintSeverityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConstraintSeverityBuilder] from JSON.
  factory ConstraintSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverityBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ConstraintSeverityBuilder
  final ConstraintSeverityBuilderEnum? valueEnum;

  /// error
  static ConstraintSeverityBuilder error = ConstraintSeverityBuilder._(
    valueString: 'error',
    valueEnum: ConstraintSeverityBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/constraint-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// warning
  static ConstraintSeverityBuilder warning = ConstraintSeverityBuilder._(
    valueString: 'warning',
    valueEnum: ConstraintSeverityBuilderEnum.warning,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/constraint-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Warning',
    ),
  );

  /// For instances where an Element is present but not value
  static ConstraintSeverityBuilder elementOnly = ConstraintSeverityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConstraintSeverityBuilder> values = [
    error,
    warning,
  ];

  /// Returns the enum value with an element attached
  ConstraintSeverityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConstraintSeverityBuilder._(
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
