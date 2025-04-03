// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code specifying the types of information being requested.
class EligibilityResponsePurposeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EligibilityResponsePurposeBuilder._({
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
    return EligibilityResponsePurposeBuilder._(
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

  /// Create empty [EligibilityResponsePurposeBuilder] with element only
  factory EligibilityResponsePurposeBuilder.empty() =>
      EligibilityResponsePurposeBuilder._(valueString: '');

  /// Factory constructor to create [EligibilityResponsePurposeBuilder]
  /// from JSON.
  factory EligibilityResponsePurposeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurposeBuilder.elementOnly.withElement(element);
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

  /// auth_requirements
  static EligibilityResponsePurposeBuilder auth_requirements =
      EligibilityResponsePurposeBuilder._(
    valueString: 'auth-requirements',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage auth-requirements'.toFhirStringBuilder,
  );

  /// benefits
  static EligibilityResponsePurposeBuilder benefits =
      EligibilityResponsePurposeBuilder._(
    valueString: 'benefits',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage benefits'.toFhirStringBuilder,
  );

  /// discovery
  static EligibilityResponsePurposeBuilder discovery =
      EligibilityResponsePurposeBuilder._(
    valueString: 'discovery',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage Discovery'.toFhirStringBuilder,
  );

  /// validation
  static EligibilityResponsePurposeBuilder validation =
      EligibilityResponsePurposeBuilder._(
    valueString: 'validation',
    system: 'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage Validation'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EligibilityResponsePurposeBuilder elementOnly =
      EligibilityResponsePurposeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<EligibilityResponsePurposeBuilder> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Clones the current instance
  @override
  EligibilityResponsePurposeBuilder clone() =>
      EligibilityResponsePurposeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  EligibilityResponsePurposeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for EligibilityResponsePurpose: $newValue',
      );
    }
    return EligibilityResponsePurposeBuilder._(
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
