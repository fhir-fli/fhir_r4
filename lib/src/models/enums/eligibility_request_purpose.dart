// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
class EligibilityRequestPurpose extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  EligibilityRequestPurpose._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [EligibilityRequestPurpose] with element only
  factory EligibilityRequestPurpose.empty() => EligibilityRequestPurpose._('');

  /// Factory constructor to create [EligibilityRequestPurpose] from JSON.
  factory EligibilityRequestPurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurpose.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityRequestPurpose cannot be constructed from JSON.',
      );
    }
    return EligibilityRequestPurpose._(
      value,
      element: element,
    );
  }

  /// auth_requirements
  static final EligibilityRequestPurpose auth_requirements =
      EligibilityRequestPurpose._(
    'auth-requirements',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage auth-requirements'.toFhirString,
  );

  /// benefits
  static final EligibilityRequestPurpose benefits = EligibilityRequestPurpose._(
    'benefits',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage benefits'.toFhirString,
  );

  /// discovery
  static final EligibilityRequestPurpose discovery =
      EligibilityRequestPurpose._(
    'discovery',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage Discovery'.toFhirString,
  );

  /// validation
  static final EligibilityRequestPurpose validation =
      EligibilityRequestPurpose._(
    'validation',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage Validation'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final EligibilityRequestPurpose elementOnly =
      EligibilityRequestPurpose._('');

  /// List of all enum-like values
  static final List<EligibilityRequestPurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Clones the current instance
  @override
  EligibilityRequestPurpose clone() => EligibilityRequestPurpose._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EligibilityRequestPurpose withElement(Element? newElement) {
    return EligibilityRequestPurpose._(
      value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  EligibilityRequestPurpose copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EligibilityRequestPurpose._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
