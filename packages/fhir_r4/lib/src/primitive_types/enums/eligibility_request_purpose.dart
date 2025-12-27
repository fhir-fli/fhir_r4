part of '../primitive_types.dart';

/// Actual enum for EligibilityRequestPurpose
enum EligibilityRequestPurposeEnum {
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
      case EligibilityRequestPurposeEnum.authRequirements:
        return 'auth-requirements';
      case EligibilityRequestPurposeEnum.benefits:
        return 'benefits';
      case EligibilityRequestPurposeEnum.discovery:
        return 'discovery';
      case EligibilityRequestPurposeEnum.validation:
        return 'validation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EligibilityRequestPurposeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EligibilityRequestPurposeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EligibilityRequestPurposeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'auth-requirements':
        return EligibilityRequestPurposeEnum.authRequirements;
      case 'benefits':
        return EligibilityRequestPurposeEnum.benefits;
      case 'discovery':
        return EligibilityRequestPurposeEnum.discovery;
      case 'validation':
        return EligibilityRequestPurposeEnum.validation;
    }
    return null;
  }
}

/// A code specifying the types of information being requested.
class EligibilityRequestPurpose extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EligibilityRequestPurpose._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory EligibilityRequestPurpose(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = EligibilityRequestPurposeEnum.fromString(valueString);
    return EligibilityRequestPurpose._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [EligibilityRequestPurpose]
  /// from JSON.
  factory EligibilityRequestPurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EligibilityRequestPurposeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurpose._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityRequestPurpose cannot be constructed from JSON.',
      );
    }
    return EligibilityRequestPurpose._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EligibilityRequestPurpose
  final EligibilityRequestPurposeEnum? valueEnum;

  /// auth_requirements
  static const EligibilityRequestPurpose authRequirements =
      EligibilityRequestPurpose._(
    valueString: 'auth-requirements',
    valueEnum: EligibilityRequestPurposeEnum.authRequirements,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage auth-requirements',
    ),
  );

  /// benefits
  static const EligibilityRequestPurpose benefits = EligibilityRequestPurpose._(
    valueString: 'benefits',
    valueEnum: EligibilityRequestPurposeEnum.benefits,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage benefits',
    ),
  );

  /// discovery
  static const EligibilityRequestPurpose discovery =
      EligibilityRequestPurpose._(
    valueString: 'discovery',
    valueEnum: EligibilityRequestPurposeEnum.discovery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage Discovery',
    ),
  );

  /// validation
  static const EligibilityRequestPurpose validation =
      EligibilityRequestPurpose._(
    valueString: 'validation',
    valueEnum: EligibilityRequestPurposeEnum.validation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage Validation',
    ),
  );

  /// List of all enum-like values
  static final List<EligibilityRequestPurpose> values = [
    authRequirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityRequestPurpose withElement(Element? newElement) {
    return EligibilityRequestPurpose._(
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

  @override
  EligibilityRequestPurpose clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EligibilityRequestPurposeCopyWithImpl<EligibilityRequestPurpose>
      get copyWith =>
          EligibilityRequestPurposeCopyWithImpl<EligibilityRequestPurpose>(
            this,
            (v) => v as EligibilityRequestPurpose,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EligibilityRequestPurposeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EligibilityRequestPurposeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      EligibilityRequestPurpose(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
