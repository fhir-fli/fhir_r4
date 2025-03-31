// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible types of research elements (E.g. Population, Exposure,
/// Outcome).
class ResearchElementTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchElementTypeBuilder._({
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
  factory ResearchElementTypeBuilder(
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
    return ResearchElementTypeBuilder._(
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

  /// Create empty [ResearchElementTypeBuilder] with element only
  factory ResearchElementTypeBuilder.empty() =>
      ResearchElementTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ResearchElementTypeBuilder]
  /// from JSON.
  factory ResearchElementTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchElementTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchElementTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// population
  static ResearchElementTypeBuilder population = ResearchElementTypeBuilder._(
    validatedValue: 'population',
    system:
        'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Population'.toFhirStringBuilder,
  );

  /// exposure
  static ResearchElementTypeBuilder exposure = ResearchElementTypeBuilder._(
    validatedValue: 'exposure',
    system:
        'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exposure'.toFhirStringBuilder,
  );

  /// outcome
  static ResearchElementTypeBuilder outcome = ResearchElementTypeBuilder._(
    validatedValue: 'outcome',
    system:
        'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Outcome'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ResearchElementTypeBuilder elementOnly =
      ResearchElementTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ResearchElementTypeBuilder> values = [
    population,
    exposure,
    outcome,
  ];

  /// Clones the current instance
  @override
  ResearchElementTypeBuilder clone() => ResearchElementTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ResearchElementTypeBuilder withElement(ElementBuilder? newElement) {
    return ResearchElementTypeBuilder._(
        validatedValue: value, element: newElement,);
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
  ResearchElementTypeBuilder copyWith({
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
    return ResearchElementTypeBuilder._(
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
