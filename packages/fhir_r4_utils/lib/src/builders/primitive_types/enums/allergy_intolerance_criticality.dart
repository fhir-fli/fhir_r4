// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction
/// to an identified substance.
class AllergyIntoleranceCriticalityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCriticalityBuilder._({
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
  factory AllergyIntoleranceCriticalityBuilder(
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
    return AllergyIntoleranceCriticalityBuilder._(
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

  /// Create empty [AllergyIntoleranceCriticalityBuilder] with element only
  factory AllergyIntoleranceCriticalityBuilder.empty() =>
      AllergyIntoleranceCriticalityBuilder._(valueString: '');

  /// Factory constructor to create [AllergyIntoleranceCriticalityBuilder]
  /// from JSON.
  factory AllergyIntoleranceCriticalityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticalityBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCriticalityBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCriticalityBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// low
  static AllergyIntoleranceCriticalityBuilder low =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'low',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Low Risk'.toFhirStringBuilder,
  );

  /// high
  static AllergyIntoleranceCriticalityBuilder high =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'high',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'High Risk'.toFhirStringBuilder,
  );

  /// unable_to_assess
  static AllergyIntoleranceCriticalityBuilder unable_to_assess =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'unable-to-assess',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unable to Assess Risk'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceCriticalityBuilder elementOnly =
      AllergyIntoleranceCriticalityBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AllergyIntoleranceCriticalityBuilder> values = [
    low,
    high,
    unable_to_assess,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCriticalityBuilder clone() =>
      AllergyIntoleranceCriticalityBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticalityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AllergyIntoleranceCriticalityBuilder._(
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
  AllergyIntoleranceCriticalityBuilder copyWith({
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
        'Invalid input for AllergyIntoleranceCriticality: $newValue',
      );
    }
    return AllergyIntoleranceCriticalityBuilder._(
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
