// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the category of observation range.
class ObservationRangeCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationRangeCategoryBuilder._({
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
  factory ObservationRangeCategoryBuilder(
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
    return ObservationRangeCategoryBuilder._(
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

  /// Create empty [ObservationRangeCategoryBuilder] with element only
  factory ObservationRangeCategoryBuilder.empty() =>
      ObservationRangeCategoryBuilder._(validatedValue: '');

  /// Factory constructor to create [ObservationRangeCategoryBuilder] from JSON.
  factory ObservationRangeCategoryBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategoryBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationRangeCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationRangeCategoryBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// reference
  static ObservationRangeCategoryBuilder reference =
      ObservationRangeCategoryBuilder._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'reference range'.toFhirStringBuilder,
  );

  /// critical
  static ObservationRangeCategoryBuilder critical =
      ObservationRangeCategoryBuilder._(
    validatedValue: 'critical',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'critical range'.toFhirStringBuilder,
  );

  /// absolute
  static ObservationRangeCategoryBuilder absolute =
      ObservationRangeCategoryBuilder._(
    validatedValue: 'absolute',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'absolute range'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ObservationRangeCategoryBuilder elementOnly =
      ObservationRangeCategoryBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ObservationRangeCategoryBuilder> values = [
    reference,
    critical,
    absolute,
  ];

  /// Clones the current instance
  @override
  ObservationRangeCategoryBuilder clone() => ObservationRangeCategoryBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ObservationRangeCategoryBuilder withElement(ElementBuilder? newElement) {
    return ObservationRangeCategoryBuilder._(
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
  ObservationRangeCategoryBuilder copyWith({
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
    return ObservationRangeCategoryBuilder._(
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
