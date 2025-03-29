// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The degree to which the server supports the code search parameter on
/// ValueSet, if it is supported.
class CodeSearchSupportBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSearchSupportBuilder._({
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
  factory CodeSearchSupportBuilder(
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
    return CodeSearchSupportBuilder._(
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

  /// Create empty [CodeSearchSupportBuilder] with element only
  factory CodeSearchSupportBuilder.empty() =>
      CodeSearchSupportBuilder._(validatedValue: '');

  /// Factory constructor to create [CodeSearchSupportBuilder] from JSON.
  factory CodeSearchSupportBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupportBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSearchSupportBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSearchSupportBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// explicit
  static CodeSearchSupportBuilder explicit = CodeSearchSupportBuilder._(
    validatedValue: 'explicit',
    system: 'http://hl7.org/fhir/ValueSet/code-search-support'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Explicit Codes'.toFhirStringBuilder,
  );

  /// all
  static CodeSearchSupportBuilder all = CodeSearchSupportBuilder._(
    validatedValue: 'all',
    system: 'http://hl7.org/fhir/ValueSet/code-search-support'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Implicit Codes'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CodeSearchSupportBuilder elementOnly =
      CodeSearchSupportBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CodeSearchSupportBuilder> values = [
    explicit,
    all,
  ];

  /// Clones the current instance
  @override
  CodeSearchSupportBuilder clone() => CodeSearchSupportBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CodeSearchSupportBuilder withElement(ElementBuilder? newElement) {
    return CodeSearchSupportBuilder._(
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
  CodeSearchSupportBuilder copyWith({
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
    return CodeSearchSupportBuilder._(
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
