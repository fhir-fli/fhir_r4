// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Overall nature of the adverse event, e.g. real or potential.
class AdverseEventActualityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdverseEventActualityBuilder._({
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
  factory AdverseEventActualityBuilder(
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
    return AdverseEventActualityBuilder._(
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

  /// Create empty [AdverseEventActualityBuilder] with element only
  factory AdverseEventActualityBuilder.empty() =>
      AdverseEventActualityBuilder._(validatedValue: '');

  /// Factory constructor to create [AdverseEventActualityBuilder]
  /// from JSON.
  factory AdverseEventActualityBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActualityBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventActualityBuilder cannot be constructed from JSON.',
      );
    }
    return AdverseEventActualityBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// actual
  static AdverseEventActualityBuilder actual = AdverseEventActualityBuilder._(
    validatedValue: 'actual',
    system:
        'http://hl7.org/fhir/ValueSet/adverse-event-actuality'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Adverse Event'.toFhirStringBuilder,
  );

  /// potential
  static AdverseEventActualityBuilder potential =
      AdverseEventActualityBuilder._(
    validatedValue: 'potential',
    system:
        'http://hl7.org/fhir/ValueSet/adverse-event-actuality'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Potential Adverse Event'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AdverseEventActualityBuilder elementOnly =
      AdverseEventActualityBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AdverseEventActualityBuilder> values = [
    actual,
    potential,
  ];

  /// Clones the current instance
  @override
  AdverseEventActualityBuilder clone() => AdverseEventActualityBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AdverseEventActualityBuilder withElement(ElementBuilder? newElement) {
    return AdverseEventActualityBuilder._(
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
  AdverseEventActualityBuilder copyWith({
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
    return AdverseEventActualityBuilder._(
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
