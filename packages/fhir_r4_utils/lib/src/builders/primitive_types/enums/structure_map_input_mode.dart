// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Mode for this instance of data.
class StructureMapInputModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapInputModeBuilder._({
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
  factory StructureMapInputModeBuilder(
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
    return StructureMapInputModeBuilder._(
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

  /// Create empty [StructureMapInputModeBuilder] with element only
  factory StructureMapInputModeBuilder.empty() =>
      StructureMapInputModeBuilder._(validatedValue: '');

  /// Factory constructor to create [StructureMapInputModeBuilder] from JSON.
  factory StructureMapInputModeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapInputModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapInputModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// source
  static StructureMapInputModeBuilder source = StructureMapInputModeBuilder._(
    validatedValue: 'source',
    system: 'http://hl7.org/fhir/ValueSet/map-input-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Source Instance'.toFhirStringBuilder,
  );

  /// target
  static StructureMapInputModeBuilder target = StructureMapInputModeBuilder._(
    validatedValue: 'target',
    system: 'http://hl7.org/fhir/ValueSet/map-input-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Target Instance'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapInputModeBuilder elementOnly =
      StructureMapInputModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StructureMapInputModeBuilder> values = [
    source,
    target,
  ];

  /// Clones the current instance
  @override
  StructureMapInputModeBuilder clone() => StructureMapInputModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapInputModeBuilder withElement(ElementBuilder? newElement) {
    return StructureMapInputModeBuilder._(
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
  StructureMapInputModeBuilder copyWith({
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
    return StructureMapInputModeBuilder._(
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
