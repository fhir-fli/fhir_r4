// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for orientation.
class OrientationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OrientationTypeBuilder._({
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
  factory OrientationTypeBuilder(
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
    return OrientationTypeBuilder._(
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

  /// Create empty [OrientationTypeBuilder] with element only
  factory OrientationTypeBuilder.empty() =>
      OrientationTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [OrientationTypeBuilder] from JSON.
  factory OrientationTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrientationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return OrientationTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// sense
  static OrientationTypeBuilder sense = OrientationTypeBuilder._(
    validatedValue: 'sense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sense orientation of referenceSeq'.toFhirStringBuilder,
  );

  /// antisense
  static OrientationTypeBuilder antisense = OrientationTypeBuilder._(
    validatedValue: 'antisense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Antisense orientation of referenceSeq'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static OrientationTypeBuilder elementOnly =
      OrientationTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<OrientationTypeBuilder> values = [
    sense,
    antisense,
  ];

  /// Clones the current instance
  @override
  OrientationTypeBuilder clone() => OrientationTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  OrientationTypeBuilder withElement(ElementBuilder? newElement) {
    return OrientationTypeBuilder._(validatedValue: value, element: newElement);
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
  OrientationTypeBuilder copyWith({
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
    return OrientationTypeBuilder._(
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
