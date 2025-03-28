// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// HL7-defined table of codes which identify conditions under which
/// acknowledgments are required to be returned in response to a message.
class MessageheaderResponseRequest extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MessageheaderResponseRequest._({
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
  factory MessageheaderResponseRequest(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return MessageheaderResponseRequest._(
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

  /// Create empty [MessageheaderResponseRequest] with element only
  factory MessageheaderResponseRequest.empty() =>
      MessageheaderResponseRequest._(validatedValue: '');

  /// Factory constructor to create [MessageheaderResponseRequest] from JSON.
  factory MessageheaderResponseRequest.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageheaderResponseRequest cannot be constructed from JSON.',
      );
    }
    return MessageheaderResponseRequest._(
      validatedValue: value,
      element: element,
    );
  }

  /// always
  static final MessageheaderResponseRequest always =
      MessageheaderResponseRequest._(
    validatedValue: 'always',
    system:
        'http://hl7.org/fhir/ValueSet/messageheader-response-request'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Always'.toFhirString,
  );

  /// on_error
  static final MessageheaderResponseRequest on_error =
      MessageheaderResponseRequest._(
    validatedValue: 'on-error',
    system:
        'http://hl7.org/fhir/ValueSet/messageheader-response-request'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error/reject conditions only'.toFhirString,
  );

  /// never
  static final MessageheaderResponseRequest never =
      MessageheaderResponseRequest._(
    validatedValue: 'never',
    system:
        'http://hl7.org/fhir/ValueSet/messageheader-response-request'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Never'.toFhirString,
  );

  /// on_success
  static final MessageheaderResponseRequest on_success =
      MessageheaderResponseRequest._(
    validatedValue: 'on-success',
    system:
        'http://hl7.org/fhir/ValueSet/messageheader-response-request'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Successful completion only'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MessageheaderResponseRequest elementOnly =
      MessageheaderResponseRequest._(validatedValue: '');

  /// List of all enum-like values
  static final List<MessageheaderResponseRequest> values = [
    always,
    on_error,
    never,
    on_success,
  ];

  /// Clones the current instance
  @override
  MessageheaderResponseRequest clone() => MessageheaderResponseRequest._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest._(
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
  MessageheaderResponseRequest copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MessageheaderResponseRequest._(
      validatedValue: newValue ?? value,
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
