// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an extension context is interpreted.
class ExtensionContextType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ExtensionContextType._({
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
  factory ExtensionContextType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ExtensionContextType._(
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

  /// Create empty [ExtensionContextType] with element only
  factory ExtensionContextType.empty() =>
      ExtensionContextType._(valueString: '');

  /// Factory constructor to create [ExtensionContextType] from JSON.
  factory ExtensionContextType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtensionContextType cannot be constructed from JSON.',
      );
    }
    return ExtensionContextType._(
      valueString: value,
      element: element,
    );
  }

  /// fhirpath
  static final ExtensionContextType fhirpath = ExtensionContextType._(
    valueString: 'fhirpath',
    system: 'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FHIRPath'.toFhirString,
  );

  /// element_
  static final ExtensionContextType element_ = ExtensionContextType._(
    valueString: 'element',
    system: 'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element ID'.toFhirString,
  );

  /// extension_
  static final ExtensionContextType extensionValue = ExtensionContextType._(
    valueString: 'extension',
    system: 'http://hl7.org/fhir/ValueSet/extension-context-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extension URL'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ExtensionContextType elementOnly =
      ExtensionContextType._(valueString: '');

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Clones the current instance
  @override
  ExtensionContextType clone() => ExtensionContextType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(
      valueString: valueString,
      element: newElement,
    );
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
  ExtensionContextType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return ExtensionContextType._(
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
