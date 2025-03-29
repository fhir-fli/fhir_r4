// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes providing the status/availability of a specimen.
class SpecimenStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SpecimenStatusBuilder._({
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
  factory SpecimenStatusBuilder(
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
    return SpecimenStatusBuilder._(
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

  /// Create empty [SpecimenStatusBuilder] with element only
  factory SpecimenStatusBuilder.empty() =>
      SpecimenStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [SpecimenStatusBuilder] from JSON.
  factory SpecimenStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SpecimenStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// available
  static SpecimenStatusBuilder available = SpecimenStatusBuilder._(
    validatedValue: 'available',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Available'.toFhirStringBuilder,
  );

  /// unavailable
  static SpecimenStatusBuilder unavailable = SpecimenStatusBuilder._(
    validatedValue: 'unavailable',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unavailable'.toFhirStringBuilder,
  );

  /// unsatisfactory
  static SpecimenStatusBuilder unsatisfactory = SpecimenStatusBuilder._(
    validatedValue: 'unsatisfactory',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unsatisfactory'.toFhirStringBuilder,
  );

  /// entered_in_error
  static SpecimenStatusBuilder entered_in_error = SpecimenStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SpecimenStatusBuilder elementOnly =
      SpecimenStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SpecimenStatusBuilder> values = [
    available,
    unavailable,
    unsatisfactory,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SpecimenStatusBuilder clone() => SpecimenStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SpecimenStatusBuilder withElement(ElementBuilder? newElement) {
    return SpecimenStatusBuilder._(validatedValue: value, element: newElement);
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
  SpecimenStatusBuilder copyWith({
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
    return SpecimenStatusBuilder._(
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
