// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Clinical assessment of the severity of a reaction event as a whole,
/// potentially considering multiple different manifestations.
class AllergyIntoleranceSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceSeverityBuilder._({
    required super.validatedValue,
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
  factory AllergyIntoleranceSeverityBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return AllergyIntoleranceSeverityBuilder._(
      validatedValue: validated,
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

  /// Create empty [AllergyIntoleranceSeverityBuilder] with element only
  factory AllergyIntoleranceSeverityBuilder.empty() =>
      AllergyIntoleranceSeverityBuilder._(validatedValue: '');

  /// Factory constructor to create [AllergyIntoleranceSeverityBuilder] from JSON.
  factory AllergyIntoleranceSeverityBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverityBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceSeverityBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// mild
  static AllergyIntoleranceSeverityBuilder mild =
      AllergyIntoleranceSeverityBuilder._(
    validatedValue: 'mild',
    system:
        'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mild'.toFhirStringBuilder,
  );

  /// moderate
  static AllergyIntoleranceSeverityBuilder moderate =
      AllergyIntoleranceSeverityBuilder._(
    validatedValue: 'moderate',
    system:
        'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Moderate'.toFhirStringBuilder,
  );

  /// severe
  static AllergyIntoleranceSeverityBuilder severe =
      AllergyIntoleranceSeverityBuilder._(
    validatedValue: 'severe',
    system:
        'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Severe'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceSeverityBuilder elementOnly =
      AllergyIntoleranceSeverityBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AllergyIntoleranceSeverityBuilder> values = [
    mild,
    moderate,
    severe,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceSeverityBuilder clone() =>
      AllergyIntoleranceSeverityBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverityBuilder withElement(ElementBuilder? newElement) {
    return AllergyIntoleranceSeverityBuilder._(
        validatedValue: value, element: newElement);
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
  AllergyIntoleranceSeverityBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AllergyIntoleranceSeverityBuilder._(
      validatedValue: newValue ?? value,
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
