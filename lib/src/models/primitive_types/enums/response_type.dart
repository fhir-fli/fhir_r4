// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The kind of response to a message.
class ResponseType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ResponseType._({
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
  factory ResponseType(
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
    return ResponseType._(
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

  /// Create empty [ResponseType] with element only
  factory ResponseType.empty() => ResponseType._(validatedValue: '');

  /// Factory constructor to create [ResponseType] from JSON.
  factory ResponseType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('ResponseType cannot be constructed from JSON.');
    }
    return ResponseType._(validatedValue: value, element: element);
  }

  /// ok
  static final ResponseType ok = ResponseType._(
    validatedValue: 'ok',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OK'.toFhirString,
  );

  /// transient_error
  static final ResponseType transient_error = ResponseType._(
    validatedValue: 'transient-error',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transient Error'.toFhirString,
  );

  /// fatal_error
  static final ResponseType fatal_error = ResponseType._(
    validatedValue: 'fatal-error',
    system: 'http://hl7.org/fhir/ValueSet/response-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fatal Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ResponseType elementOnly = ResponseType._(validatedValue: '');

  /// List of all enum-like values
  static final List<ResponseType> values = [
    ok,
    transient_error,
    fatal_error,
  ];

  /// Clones the current instance
  @override
  ResponseType clone() => ResponseType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResponseType withElement(Element? newElement) {
    return ResponseType._(validatedValue: value, element: newElement);
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
  ResponseType copyWith({
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
    return ResponseType._(
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
