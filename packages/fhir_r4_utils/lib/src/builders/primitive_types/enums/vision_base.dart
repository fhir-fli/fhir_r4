// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A coded concept listing the base codes.
class VisionBaseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VisionBaseBuilder._({
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
  factory VisionBaseBuilder(
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
    return VisionBaseBuilder._(
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

  /// Create empty [VisionBaseBuilder] with element only
  factory VisionBaseBuilder.empty() => VisionBaseBuilder._(validatedValue: '');

  /// Factory constructor to create [VisionBaseBuilder]
  /// from JSON.
  factory VisionBaseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBaseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionBaseBuilder cannot be constructed from JSON.',
      );
    }
    return VisionBaseBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// up
  static VisionBaseBuilder up = VisionBaseBuilder._(
    validatedValue: 'up',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Up'.toFhirStringBuilder,
  );

  /// down
  static VisionBaseBuilder down = VisionBaseBuilder._(
    validatedValue: 'down',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Down'.toFhirStringBuilder,
  );

  /// in_
  static VisionBaseBuilder in_ = VisionBaseBuilder._(
    validatedValue: 'in',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In'.toFhirStringBuilder,
  );

  /// out
  static VisionBaseBuilder out = VisionBaseBuilder._(
    validatedValue: 'out',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Out'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static VisionBaseBuilder elementOnly =
      VisionBaseBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<VisionBaseBuilder> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  VisionBaseBuilder clone() => VisionBaseBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  VisionBaseBuilder withElement(ElementBuilder? newElement) {
    return VisionBaseBuilder._(validatedValue: value, element: newElement);
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
  VisionBaseBuilder copyWith({
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
    return VisionBaseBuilder._(
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
