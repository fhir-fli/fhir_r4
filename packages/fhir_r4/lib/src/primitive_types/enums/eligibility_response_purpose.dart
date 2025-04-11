// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EligibilityResponsePurpose
enum EligibilityResponsePurposeEnum {
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
      case EligibilityResponsePurposeEnum.authRequirements:
        return 'auth-requirements';
      case EligibilityResponsePurposeEnum.benefits:
        return 'benefits';
      case EligibilityResponsePurposeEnum.discovery:
        return 'discovery';
      case EligibilityResponsePurposeEnum.validation:
        return 'validation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EligibilityResponsePurposeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EligibilityResponsePurposeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EligibilityResponsePurposeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'auth-requirements':
        return EligibilityResponsePurposeEnum.authRequirements;
      case 'benefits':
        return EligibilityResponsePurposeEnum.benefits;
      case 'discovery':
        return EligibilityResponsePurposeEnum.discovery;
      case 'validation':
        return EligibilityResponsePurposeEnum.validation;
    }
    return null;
  }
}

/// A code specifying the types of information being requested.
class EligibilityResponsePurpose extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EligibilityResponsePurpose._({
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
  factory EligibilityResponsePurpose(
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
    final valueEnum = EligibilityResponsePurposeEnum.fromString(valueString);
    return EligibilityResponsePurpose._(
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

  /// Factory constructor to create [EligibilityResponsePurpose]
  /// from JSON.
  factory EligibilityResponsePurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EligibilityResponsePurposeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityResponsePurpose cannot be constructed from JSON.',
      );
    }
    return EligibilityResponsePurpose._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EligibilityResponsePurpose
  final EligibilityResponsePurposeEnum? valueEnum;

  /// auth_requirements
  static const EligibilityResponsePurpose authRequirements =
      EligibilityResponsePurpose._(
    valueString: 'auth-requirements',
    valueEnum: EligibilityResponsePurposeEnum.authRequirements,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage auth-requirements',
    ),
  );

  /// benefits
  static const EligibilityResponsePurpose benefits =
      EligibilityResponsePurpose._(
    valueString: 'benefits',
    valueEnum: EligibilityResponsePurposeEnum.benefits,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage benefits',
    ),
  );

  /// discovery
  static const EligibilityResponsePurpose discovery =
      EligibilityResponsePurpose._(
    valueString: 'discovery',
    valueEnum: EligibilityResponsePurposeEnum.discovery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage Discovery',
    ),
  );

  /// validation
  static const EligibilityResponsePurpose validation =
      EligibilityResponsePurpose._(
    valueString: 'validation',
    valueEnum: EligibilityResponsePurposeEnum.validation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage Validation',
    ),
  );

  /// List of all enum-like values
  static final List<EligibilityResponsePurpose> values = [
    authRequirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityResponsePurpose withElement(Element? newElement) {
    return EligibilityResponsePurpose._(
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
  EligibilityResponsePurpose clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EligibilityResponsePurposeCopyWithImpl<EligibilityResponsePurpose>
      get copyWith =>
          EligibilityResponsePurposeCopyWithImpl<EligibilityResponsePurpose>(
            this,
            (v) => v as EligibilityResponsePurpose,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EligibilityResponsePurposeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EligibilityResponsePurposeCopyWithImpl(super._value, super._then);

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
      EligibilityResponsePurpose(
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
