// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// HL7-defined table of codes which identify conditions under which
/// acknowledgments are required to be returned in response to a message.
class MessageheaderResponseRequestBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MessageheaderResponseRequestBuilder._({
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
  factory MessageheaderResponseRequestBuilder(
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
    return MessageheaderResponseRequestBuilder._(
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

  /// Create empty [MessageheaderResponseRequestBuilder] with element only
  factory MessageheaderResponseRequestBuilder.empty() =>
      MessageheaderResponseRequestBuilder._(validatedValue: '');

  /// Factory constructor to create [MessageheaderResponseRequestBuilder]
  /// from JSON.
  factory MessageheaderResponseRequestBuilder.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequestBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageheaderResponseRequestBuilder cannot be constructed from JSON.',
      );
    }
    return MessageheaderResponseRequestBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// always
  static MessageheaderResponseRequestBuilder always =
      MessageheaderResponseRequestBuilder._(
    validatedValue: 'always',
    system: 'http://hl7.org/fhir/ValueSet/messageheader-response-request'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Always'.toFhirStringBuilder,
  );

  /// on_error
  static MessageheaderResponseRequestBuilder on_error =
      MessageheaderResponseRequestBuilder._(
    validatedValue: 'on-error',
    system: 'http://hl7.org/fhir/ValueSet/messageheader-response-request'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error/reject conditions only'.toFhirStringBuilder,
  );

  /// never
  static MessageheaderResponseRequestBuilder never =
      MessageheaderResponseRequestBuilder._(
    validatedValue: 'never',
    system: 'http://hl7.org/fhir/ValueSet/messageheader-response-request'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Never'.toFhirStringBuilder,
  );

  /// on_success
  static MessageheaderResponseRequestBuilder on_success =
      MessageheaderResponseRequestBuilder._(
    validatedValue: 'on-success',
    system: 'http://hl7.org/fhir/ValueSet/messageheader-response-request'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Successful completion only'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MessageheaderResponseRequestBuilder elementOnly =
      MessageheaderResponseRequestBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<MessageheaderResponseRequestBuilder> values = [
    always,
    on_error,
    never,
    on_success,
  ];

  /// Clones the current instance
  @override
  MessageheaderResponseRequestBuilder clone() =>
      MessageheaderResponseRequestBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MessageheaderResponseRequestBuilder withElement(ElementBuilder? newElement) {
    return MessageheaderResponseRequestBuilder._(
        validatedValue: value, element: newElement,);
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
  MessageheaderResponseRequestBuilder copyWith({
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
    return MessageheaderResponseRequestBuilder._(
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
