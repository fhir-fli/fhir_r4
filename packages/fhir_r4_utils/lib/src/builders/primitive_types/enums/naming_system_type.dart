// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the purpose of the naming system.
class NamingSystemTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NamingSystemTypeBuilder._({
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
  factory NamingSystemTypeBuilder(
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
    return NamingSystemTypeBuilder._(
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

  /// Create empty [NamingSystemTypeBuilder] with element only
  factory NamingSystemTypeBuilder.empty() =>
      NamingSystemTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [NamingSystemTypeBuilder]
  /// from JSON.
  factory NamingSystemTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemTypeBuilder cannot be constructed from JSON.',
      );
    }
    return NamingSystemTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// codesystem
  static NamingSystemTypeBuilder codesystem = NamingSystemTypeBuilder._(
    validatedValue: 'codesystem',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Code System'.toFhirStringBuilder,
  );

  /// identifier
  static NamingSystemTypeBuilder identifier = NamingSystemTypeBuilder._(
    validatedValue: 'identifier',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Identifier'.toFhirStringBuilder,
  );

  /// root
  static NamingSystemTypeBuilder root = NamingSystemTypeBuilder._(
    validatedValue: 'root',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Root'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static NamingSystemTypeBuilder elementOnly =
      NamingSystemTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<NamingSystemTypeBuilder> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Clones the current instance
  @override
  NamingSystemTypeBuilder clone() => NamingSystemTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  NamingSystemTypeBuilder withElement(ElementBuilder? newElement) {
    return NamingSystemTypeBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  NamingSystemTypeBuilder copyWith({
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
    return NamingSystemTypeBuilder._(
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
