part of '../primitive_types.dart';

/// Actual enum for EvidenceVariableHandling
enum EvidenceVariableHandlingBuilderEnum {
  /// continuous
  continuous,

  /// dichotomous
  dichotomous,

  /// ordinal
  ordinal,

  /// polychotomous
  polychotomous,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EvidenceVariableHandlingBuilderEnum.continuous:
        return 'continuous';
      case EvidenceVariableHandlingBuilderEnum.dichotomous:
        return 'dichotomous';
      case EvidenceVariableHandlingBuilderEnum.ordinal:
        return 'ordinal';
      case EvidenceVariableHandlingBuilderEnum.polychotomous:
        return 'polychotomous';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EvidenceVariableHandlingBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EvidenceVariableHandlingBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EvidenceVariableHandlingBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'continuous':
        return EvidenceVariableHandlingBuilderEnum.continuous;
      case 'dichotomous':
        return EvidenceVariableHandlingBuilderEnum.dichotomous;
      case 'ordinal':
        return EvidenceVariableHandlingBuilderEnum.ordinal;
      case 'polychotomous':
        return EvidenceVariableHandlingBuilderEnum.polychotomous;
    }
    return null;
  }
}

/// The handling of the variable in statistical analysis for exposures or
/// outcomes (E.g. Dichotomous, Continuous, Descriptive).
class EvidenceVariableHandlingBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EvidenceVariableHandlingBuilder._({
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
  factory EvidenceVariableHandlingBuilder(
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
    final valueEnum = EvidenceVariableHandlingBuilderEnum.fromString(
      valueString,
    );
    return EvidenceVariableHandlingBuilder._(
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

  /// Create empty [EvidenceVariableHandlingBuilder]
  /// with element only
  factory EvidenceVariableHandlingBuilder.empty() =>
      EvidenceVariableHandlingBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EvidenceVariableHandlingBuilder] from JSON.
  factory EvidenceVariableHandlingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandlingBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableHandlingBuilder cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableHandlingBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EvidenceVariableHandlingBuilder
  final EvidenceVariableHandlingBuilderEnum? valueEnum;

  /// continuous
  static EvidenceVariableHandlingBuilder continuous =
      EvidenceVariableHandlingBuilder._(
    valueString: 'continuous',
    valueEnum: EvidenceVariableHandlingBuilderEnum.continuous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'continuous variable',
    ),
  );

  /// dichotomous
  static EvidenceVariableHandlingBuilder dichotomous =
      EvidenceVariableHandlingBuilder._(
    valueString: 'dichotomous',
    valueEnum: EvidenceVariableHandlingBuilderEnum.dichotomous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'dichotomous variable',
    ),
  );

  /// ordinal
  static EvidenceVariableHandlingBuilder ordinal =
      EvidenceVariableHandlingBuilder._(
    valueString: 'ordinal',
    valueEnum: EvidenceVariableHandlingBuilderEnum.ordinal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ordinal variable',
    ),
  );

  /// polychotomous
  static EvidenceVariableHandlingBuilder polychotomous =
      EvidenceVariableHandlingBuilder._(
    valueString: 'polychotomous',
    valueEnum: EvidenceVariableHandlingBuilderEnum.polychotomous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'polychotomous variable',
    ),
  );

  /// For instances where an Element is present but not value
  static EvidenceVariableHandlingBuilder elementOnly =
      EvidenceVariableHandlingBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EvidenceVariableHandlingBuilder> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableHandlingBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EvidenceVariableHandlingBuilder._(
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
