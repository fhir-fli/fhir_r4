// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The extent of the content of the code system (the concepts and codes it
/// defines) are represented in a code system resource.
class CodeSystemContentModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSystemContentModeBuilder._({
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
  factory CodeSystemContentModeBuilder(
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
    return CodeSystemContentModeBuilder._(
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

  /// Create empty [CodeSystemContentModeBuilder] with element only
  factory CodeSystemContentModeBuilder.empty() =>
      CodeSystemContentModeBuilder._(valueString: '');

  /// Factory constructor to create [CodeSystemContentModeBuilder]
  /// from JSON.
  factory CodeSystemContentModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemContentModeBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSystemContentModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// not_present
  static CodeSystemContentModeBuilder not_present =
      CodeSystemContentModeBuilder._(
    valueString: 'not-present',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Present'.toFhirStringBuilder,
  );

  /// example
  static CodeSystemContentModeBuilder example = CodeSystemContentModeBuilder._(
    valueString: 'example',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Example'.toFhirStringBuilder,
  );

  /// fragment
  static CodeSystemContentModeBuilder fragment = CodeSystemContentModeBuilder._(
    valueString: 'fragment',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fragment'.toFhirStringBuilder,
  );

  /// complete
  static CodeSystemContentModeBuilder complete = CodeSystemContentModeBuilder._(
    valueString: 'complete',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Complete'.toFhirStringBuilder,
  );

  /// supplement
  static CodeSystemContentModeBuilder supplement =
      CodeSystemContentModeBuilder._(
    valueString: 'supplement',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Supplement'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CodeSystemContentModeBuilder elementOnly =
      CodeSystemContentModeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CodeSystemContentModeBuilder> values = [
    not_present,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Clones the current instance
  @override
  CodeSystemContentModeBuilder clone() => CodeSystemContentModeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CodeSystemContentModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CodeSystemContentModeBuilder._(
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
  CodeSystemContentModeBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for CodeSystemContentMode: $newValue',
      );
    }
    return CodeSystemContentModeBuilder._(
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
