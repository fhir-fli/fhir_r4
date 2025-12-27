part of '../primitive_types.dart';

/// Actual enum for EligibilityResponsePurpose
enum EligibilityResponsePurposeBuilderEnum {
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
      case EligibilityResponsePurposeBuilderEnum.authRequirements:
        return 'auth-requirements';
      case EligibilityResponsePurposeBuilderEnum.benefits:
        return 'benefits';
      case EligibilityResponsePurposeBuilderEnum.discovery:
        return 'discovery';
      case EligibilityResponsePurposeBuilderEnum.validation:
        return 'validation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EligibilityResponsePurposeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EligibilityResponsePurposeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EligibilityResponsePurposeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'auth-requirements':
        return EligibilityResponsePurposeBuilderEnum.authRequirements;
      case 'benefits':
        return EligibilityResponsePurposeBuilderEnum.benefits;
      case 'discovery':
        return EligibilityResponsePurposeBuilderEnum.discovery;
      case 'validation':
        return EligibilityResponsePurposeBuilderEnum.validation;
    }
    return null;
  }
}

/// A code specifying the types of information being requested.
class EligibilityResponsePurposeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EligibilityResponsePurposeBuilder._({
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
  factory EligibilityResponsePurposeBuilder(
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
    final valueEnum = EligibilityResponsePurposeBuilderEnum.fromString(
      valueString,
    );
    return EligibilityResponsePurposeBuilder._(
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

  /// Create empty [EligibilityResponsePurposeBuilder]
  /// with element only
  factory EligibilityResponsePurposeBuilder.empty() =>
      EligibilityResponsePurposeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EligibilityResponsePurposeBuilder] from JSON.
  factory EligibilityResponsePurposeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurposeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityResponsePurposeBuilder cannot be constructed from JSON.',
      );
    }
    return EligibilityResponsePurposeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EligibilityResponsePurposeBuilder
  final EligibilityResponsePurposeBuilderEnum? valueEnum;

  /// auth_requirements
  static EligibilityResponsePurposeBuilder authRequirements =
      EligibilityResponsePurposeBuilder._(
    valueString: 'auth-requirements',
    valueEnum: EligibilityResponsePurposeBuilderEnum.authRequirements,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage auth-requirements',
    ),
  );

  /// benefits
  static EligibilityResponsePurposeBuilder benefits =
      EligibilityResponsePurposeBuilder._(
    valueString: 'benefits',
    valueEnum: EligibilityResponsePurposeBuilderEnum.benefits,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage benefits',
    ),
  );

  /// discovery
  static EligibilityResponsePurposeBuilder discovery =
      EligibilityResponsePurposeBuilder._(
    valueString: 'discovery',
    valueEnum: EligibilityResponsePurposeBuilderEnum.discovery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage Discovery',
    ),
  );

  /// validation
  static EligibilityResponsePurposeBuilder validation =
      EligibilityResponsePurposeBuilder._(
    valueString: 'validation',
    valueEnum: EligibilityResponsePurposeBuilderEnum.validation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage Validation',
    ),
  );

  /// For instances where an Element is present but not value
  static EligibilityResponsePurposeBuilder elementOnly =
      EligibilityResponsePurposeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EligibilityResponsePurposeBuilder> values = [
    authRequirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityResponsePurposeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EligibilityResponsePurposeBuilder._(
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
