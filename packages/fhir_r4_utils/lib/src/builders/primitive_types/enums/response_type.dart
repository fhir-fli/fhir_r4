// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The kind of response to a message.
class ResponseTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResponseTypeBuilder._({
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
  factory ResponseTypeBuilder(
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
    return ResponseTypeBuilder._(
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

  /// Create empty [ResponseTypeBuilder] with element only
  factory ResponseTypeBuilder.empty() =>
      ResponseTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ResponseTypeBuilder] from JSON.
  factory ResponseTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResponseTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ResponseTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// ok
  static ResponseTypeBuilder ok = ResponseTypeBuilder._(
    validatedValue: 'ok',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OK'.toFhirStringBuilder,
  );

  /// transient_error
  static ResponseTypeBuilder transient_error = ResponseTypeBuilder._(
    validatedValue: 'transient-error',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Transient Error'.toFhirStringBuilder,
  );

  /// fatal_error
  static ResponseTypeBuilder fatal_error = ResponseTypeBuilder._(
    validatedValue: 'fatal-error',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fatal Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ResponseTypeBuilder elementOnly =
      ResponseTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ResponseTypeBuilder> values = [
    ok,
    transient_error,
    fatal_error,
  ];

  /// Clones the current instance
  @override
  ResponseTypeBuilder clone() => ResponseTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ResponseTypeBuilder withElement(ElementBuilder? newElement) {
    return ResponseTypeBuilder._(validatedValue: value, element: newElement);
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
  ResponseTypeBuilder copyWith({
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
    return ResponseTypeBuilder._(
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
