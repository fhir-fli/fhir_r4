// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an extension context is interpreted.
class ExtensionContextTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExtensionContextTypeBuilder._({
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
  factory ExtensionContextTypeBuilder(
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
    return ExtensionContextTypeBuilder._(
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

  /// Create empty [ExtensionContextTypeBuilder] with element only
  factory ExtensionContextTypeBuilder.empty() =>
      ExtensionContextTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ExtensionContextTypeBuilder]
  /// from JSON.
  factory ExtensionContextTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtensionContextTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ExtensionContextTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// fhirpath
  static ExtensionContextTypeBuilder fhirpath = ExtensionContextTypeBuilder._(
    validatedValue: 'fhirpath',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FHIRPath'.toFhirStringBuilder,
  );

  /// element_
  static ExtensionContextTypeBuilder element_ = ExtensionContextTypeBuilder._(
    validatedValue: 'element',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Element ID'.toFhirStringBuilder,
  );

  /// extension_
  static ExtensionContextTypeBuilder extensionValue =
      ExtensionContextTypeBuilder._(
    validatedValue: 'extension',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extension URL'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ExtensionContextTypeBuilder elementOnly =
      ExtensionContextTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ExtensionContextTypeBuilder> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Clones the current instance
  @override
  ExtensionContextTypeBuilder clone() => ExtensionContextTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ExtensionContextTypeBuilder withElement(ElementBuilder? newElement) {
    return ExtensionContextTypeBuilder._(
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
  ExtensionContextTypeBuilder copyWith({
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
    return ExtensionContextTypeBuilder._(
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
