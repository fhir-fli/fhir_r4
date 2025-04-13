// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VariableType
enum VariableTypeBuilderEnum {
  /// dichotomous
  dichotomous,

  /// continuous
  continuous,

  /// descriptive
  descriptive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VariableTypeBuilderEnum.dichotomous:
        return 'dichotomous';
      case VariableTypeBuilderEnum.continuous:
        return 'continuous';
      case VariableTypeBuilderEnum.descriptive:
        return 'descriptive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VariableTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return VariableTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VariableTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'dichotomous':
        return VariableTypeBuilderEnum.dichotomous;
      case 'continuous':
        return VariableTypeBuilderEnum.continuous;
      case 'descriptive':
        return VariableTypeBuilderEnum.descriptive;
    }
    return null;
  }
}

/// The possible types of variables for exposures or outcomes (E.g.
/// Dichotomous, Continuous, Descriptive).
class VariableTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VariableTypeBuilder._({
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
  factory VariableTypeBuilder(
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
    final valueEnum = VariableTypeBuilderEnum.fromString(
      valueString,
    );
    return VariableTypeBuilder._(
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

  /// Create empty [VariableTypeBuilder]
  /// with element only
  factory VariableTypeBuilder.empty() =>
      VariableTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [VariableTypeBuilder] from JSON.
  factory VariableTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VariableTypeBuilder cannot be constructed from JSON.',
      );
    }
    return VariableTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for VariableTypeBuilder
  final VariableTypeBuilderEnum? valueEnum;

  /// dichotomous
  static VariableTypeBuilder dichotomous = VariableTypeBuilder._(
    valueString: 'dichotomous',
    valueEnum: VariableTypeBuilderEnum.dichotomous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dichotomous',
    ),
  );

  /// continuous
  static VariableTypeBuilder continuous = VariableTypeBuilder._(
    valueString: 'continuous',
    valueEnum: VariableTypeBuilderEnum.continuous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Continuous',
    ),
  );

  /// descriptive
  static VariableTypeBuilder descriptive = VariableTypeBuilder._(
    valueString: 'descriptive',
    valueEnum: VariableTypeBuilderEnum.descriptive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Descriptive',
    ),
  );

  /// For instances where an Element is present but not value
  static VariableTypeBuilder elementOnly = VariableTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<VariableTypeBuilder> values = [
    dichotomous,
    continuous,
    descriptive,
  ];

  /// Returns the enum value with an element attached
  VariableTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return VariableTypeBuilder._(
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
