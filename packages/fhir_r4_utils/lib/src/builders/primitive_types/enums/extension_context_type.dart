// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an extension context is interpreted.
class ExtensionContextTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExtensionContextTypeBuilder._({
    required super.valueString,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return ExtensionContextTypeBuilder._(
      valueString: valueString,
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
      ExtensionContextTypeBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// fhirpath
  static ExtensionContextTypeBuilder fhirpath = ExtensionContextTypeBuilder._(
    valueString: 'fhirpath',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FHIRPath'.toFhirStringBuilder,
  );

  /// element_
  static ExtensionContextTypeBuilder element_ = ExtensionContextTypeBuilder._(
    valueString: 'element',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Element ID'.toFhirStringBuilder,
  );

  /// extension_
  static ExtensionContextTypeBuilder extensionValue =
      ExtensionContextTypeBuilder._(
    valueString: 'extension',
    system:
        'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extension URL'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ExtensionContextTypeBuilder elementOnly =
      ExtensionContextTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ExtensionContextTypeBuilder> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Clones the current instance
  @override
  ExtensionContextTypeBuilder clone() => ExtensionContextTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ExtensionContextTypeBuilder withElement(ElementBuilder? newElement) {
    return ExtensionContextTypeBuilder._(
        valueString: valueString, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ExtensionContextTypeBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for ExtensionContextType: $newValue');
    }
    return ExtensionContextTypeBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
