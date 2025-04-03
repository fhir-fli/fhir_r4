// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code specifying the types of information being requested.
class EligibilityResponsePurpose extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EligibilityResponsePurpose._({
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
  factory EligibilityResponsePurpose(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return EligibilityResponsePurpose._(
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

  /// Create empty [EligibilityResponsePurpose] with element only
  factory EligibilityResponsePurpose.empty() =>
      EligibilityResponsePurpose._(valueString: '');

  /// Factory constructor to create [EligibilityResponsePurpose] from JSON.
  factory EligibilityResponsePurpose.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityResponsePurpose cannot be constructed from JSON.',
      );
    }
    return EligibilityResponsePurpose._(
      valueString: value,
      element: element,
    );
  }

  /// auth_requirements
  static final EligibilityResponsePurpose auth_requirements =
      EligibilityResponsePurpose._(
    valueString: 'auth-requirements',
    system:
        'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage auth-requirements'.toFhirString,
  );

  /// benefits
  static final EligibilityResponsePurpose benefits =
      EligibilityResponsePurpose._(
    valueString: 'benefits',
    system:
        'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage benefits'.toFhirString,
  );

  /// discovery
  static final EligibilityResponsePurpose discovery =
      EligibilityResponsePurpose._(
    valueString: 'discovery',
    system:
        'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage Discovery'.toFhirString,
  );

  /// validation
  static final EligibilityResponsePurpose validation =
      EligibilityResponsePurpose._(
    valueString: 'validation',
    system:
        'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage Validation'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EligibilityResponsePurpose elementOnly =
      EligibilityResponsePurpose._(valueString: '');

  /// List of all enum-like values
  static final List<EligibilityResponsePurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Clones the current instance
  @override
  EligibilityResponsePurpose clone() => EligibilityResponsePurpose._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  EligibilityResponsePurpose copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for EligibilityResponsePurpose: $newValue',);
    }
    return EligibilityResponsePurpose._(
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
