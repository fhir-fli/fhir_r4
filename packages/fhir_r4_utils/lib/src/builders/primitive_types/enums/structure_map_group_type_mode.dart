// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// If this is the default rule set to apply for the source type, or this
/// combination of types.
class StructureMapGroupTypeModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapGroupTypeModeBuilder._({
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
  factory StructureMapGroupTypeModeBuilder(
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
    return StructureMapGroupTypeModeBuilder._(
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

  /// Create empty [StructureMapGroupTypeModeBuilder] with element only
  factory StructureMapGroupTypeModeBuilder.empty() =>
      StructureMapGroupTypeModeBuilder._(validatedValue: '');

  /// Factory constructor to create [StructureMapGroupTypeModeBuilder]
  /// from JSON.
  factory StructureMapGroupTypeModeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapGroupTypeModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapGroupTypeModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// none
  static StructureMapGroupTypeModeBuilder none =
      StructureMapGroupTypeModeBuilder._(
    validatedValue: 'none',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not a Default'.toFhirStringBuilder,
  );

  /// types
  static StructureMapGroupTypeModeBuilder types =
      StructureMapGroupTypeModeBuilder._(
    validatedValue: 'types',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Default for Type Combination'.toFhirStringBuilder,
  );

  /// type_and_types
  static StructureMapGroupTypeModeBuilder type_and_types =
      StructureMapGroupTypeModeBuilder._(
    validatedValue: 'type-and-types',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Default for type + combination'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapGroupTypeModeBuilder elementOnly =
      StructureMapGroupTypeModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StructureMapGroupTypeModeBuilder> values = [
    none,
    types,
    type_and_types,
  ];

  /// Clones the current instance
  @override
  StructureMapGroupTypeModeBuilder clone() =>
      StructureMapGroupTypeModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapGroupTypeModeBuilder withElement(ElementBuilder? newElement) {
    return StructureMapGroupTypeModeBuilder._(
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
  StructureMapGroupTypeModeBuilder copyWith({
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
    return StructureMapGroupTypeModeBuilder._(
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
