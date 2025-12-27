part of '../primitive_types.dart';

/// Actual enum for ClinicalUseDefinitionType
enum ClinicalUseDefinitionTypeBuilderEnum {
  /// indication
  indication,

  /// contraindication
  contraindication,

  /// interaction
  interaction,

  /// undesirable-effect
  undesirableEffect,

  /// warning
  warning,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ClinicalUseDefinitionTypeBuilderEnum.indication:
        return 'indication';
      case ClinicalUseDefinitionTypeBuilderEnum.contraindication:
        return 'contraindication';
      case ClinicalUseDefinitionTypeBuilderEnum.interaction:
        return 'interaction';
      case ClinicalUseDefinitionTypeBuilderEnum.undesirableEffect:
        return 'undesirable-effect';
      case ClinicalUseDefinitionTypeBuilderEnum.warning:
        return 'warning';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClinicalUseDefinitionTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ClinicalUseDefinitionTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClinicalUseDefinitionTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'indication':
        return ClinicalUseDefinitionTypeBuilderEnum.indication;
      case 'contraindication':
        return ClinicalUseDefinitionTypeBuilderEnum.contraindication;
      case 'interaction':
        return ClinicalUseDefinitionTypeBuilderEnum.interaction;
      case 'undesirable-effect':
        return ClinicalUseDefinitionTypeBuilderEnum.undesirableEffect;
      case 'warning':
        return ClinicalUseDefinitionTypeBuilderEnum.warning;
    }
    return null;
  }
}

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ClinicalUseDefinitionTypeBuilder._({
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
  factory ClinicalUseDefinitionTypeBuilder(
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
    final valueEnum = ClinicalUseDefinitionTypeBuilderEnum.fromString(
      valueString,
    );
    return ClinicalUseDefinitionTypeBuilder._(
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

  /// Create empty [ClinicalUseDefinitionTypeBuilder]
  /// with element only
  factory ClinicalUseDefinitionTypeBuilder.empty() =>
      ClinicalUseDefinitionTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ClinicalUseDefinitionTypeBuilder] from JSON.
  factory ClinicalUseDefinitionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ClinicalUseDefinitionTypeBuilder
  final ClinicalUseDefinitionTypeBuilderEnum? valueEnum;

  /// indication
  static ClinicalUseDefinitionTypeBuilder indication =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: 'indication',
    valueEnum: ClinicalUseDefinitionTypeBuilderEnum.indication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Indication',
    ),
  );

  /// contraindication
  static ClinicalUseDefinitionTypeBuilder contraindication =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: 'contraindication',
    valueEnum: ClinicalUseDefinitionTypeBuilderEnum.contraindication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contraindication',
    ),
  );

  /// interaction
  static ClinicalUseDefinitionTypeBuilder interaction =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: 'interaction',
    valueEnum: ClinicalUseDefinitionTypeBuilderEnum.interaction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Interaction',
    ),
  );

  /// undesirable_effect
  static ClinicalUseDefinitionTypeBuilder undesirableEffect =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: 'undesirable-effect',
    valueEnum: ClinicalUseDefinitionTypeBuilderEnum.undesirableEffect,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Undesirable Effect',
    ),
  );

  /// warning
  static ClinicalUseDefinitionTypeBuilder warning =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: 'warning',
    valueEnum: ClinicalUseDefinitionTypeBuilderEnum.warning,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Warning',
    ),
  );

  /// For instances where an Element is present but not value
  static ClinicalUseDefinitionTypeBuilder elementOnly =
      ClinicalUseDefinitionTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ClinicalUseDefinitionTypeBuilder> values = [
    indication,
    contraindication,
    interaction,
    undesirableEffect,
    warning,
  ];

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ClinicalUseDefinitionTypeBuilder._(
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
