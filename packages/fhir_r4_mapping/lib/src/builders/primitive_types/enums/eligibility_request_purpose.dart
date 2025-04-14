// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EligibilityRequestPurpose
enum EligibilityRequestPurposeBuilderEnum {
  /// auth-requirements
  authRequirements,

  /// benefits
  benefits,

  /// discovery
  discovery,

  /// validation
  validation,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EligibilityRequestPurposeBuilderEnum.authRequirements:
        return 'auth-requirements';
      case EligibilityRequestPurposeBuilderEnum.benefits:
        return 'benefits';
      case EligibilityRequestPurposeBuilderEnum.discovery:
        return 'discovery';
      case EligibilityRequestPurposeBuilderEnum.validation:
        return 'validation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EligibilityRequestPurposeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EligibilityRequestPurposeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EligibilityRequestPurposeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'auth-requirements':
        return EligibilityRequestPurposeBuilderEnum.authRequirements;
      case 'benefits':
        return EligibilityRequestPurposeBuilderEnum.benefits;
      case 'discovery':
        return EligibilityRequestPurposeBuilderEnum.discovery;
      case 'validation':
        return EligibilityRequestPurposeBuilderEnum.validation;
    }
    return null;
  }
}

/// A code specifying the types of information being requested.
class EligibilityRequestPurposeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EligibilityRequestPurposeBuilder._({
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
  factory EligibilityRequestPurposeBuilder(
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
    final valueEnum = EligibilityRequestPurposeBuilderEnum.fromString(
      valueString,
    );
    return EligibilityRequestPurposeBuilder._(
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

  /// Create empty [EligibilityRequestPurposeBuilder]
  /// with element only
  factory EligibilityRequestPurposeBuilder.empty() =>
      EligibilityRequestPurposeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EligibilityRequestPurposeBuilder] from JSON.
  factory EligibilityRequestPurposeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurposeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityRequestPurposeBuilder cannot be constructed from JSON.',
      );
    }
    return EligibilityRequestPurposeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EligibilityRequestPurposeBuilder
  final EligibilityRequestPurposeBuilderEnum? valueEnum;

  /// auth_requirements
  static EligibilityRequestPurposeBuilder authRequirements =
      EligibilityRequestPurposeBuilder._(
    valueString: 'auth-requirements',
    valueEnum: EligibilityRequestPurposeBuilderEnum.authRequirements,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage auth-requirements',
    ),
  );

  /// benefits
  static EligibilityRequestPurposeBuilder benefits =
      EligibilityRequestPurposeBuilder._(
    valueString: 'benefits',
    valueEnum: EligibilityRequestPurposeBuilderEnum.benefits,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage benefits',
    ),
  );

  /// discovery
  static EligibilityRequestPurposeBuilder discovery =
      EligibilityRequestPurposeBuilder._(
    valueString: 'discovery',
    valueEnum: EligibilityRequestPurposeBuilderEnum.discovery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage Discovery',
    ),
  );

  /// validation
  static EligibilityRequestPurposeBuilder validation =
      EligibilityRequestPurposeBuilder._(
    valueString: 'validation',
    valueEnum: EligibilityRequestPurposeBuilderEnum.validation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage Validation',
    ),
  );

  /// For instances where an Element is present but not value
  static EligibilityRequestPurposeBuilder elementOnly =
      EligibilityRequestPurposeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EligibilityRequestPurposeBuilder> values = [
    authRequirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityRequestPurposeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EligibilityRequestPurposeBuilder._(
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
