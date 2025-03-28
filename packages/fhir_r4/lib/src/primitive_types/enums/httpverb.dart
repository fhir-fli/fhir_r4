// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP
/// rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerb extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  HTTPVerb._({
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
  factory HTTPVerb(
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
    return HTTPVerb._(
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

  /// Create empty [HTTPVerb] with element only
  factory HTTPVerb.empty() => HTTPVerb._(validatedValue: '');

  /// Factory constructor to create [HTTPVerb] from JSON.
  factory HTTPVerb.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'HTTPVerb cannot be constructed from JSON.',
      );
    }
    return HTTPVerb._(
      validatedValue: value,
      element: element,
    );
  }

  /// GET
  static final HTTPVerb GET = HTTPVerb._(
    validatedValue: 'GET',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GET'.toFhirString,
  );

  /// HEAD
  static final HTTPVerb HEAD = HTTPVerb._(
    validatedValue: 'HEAD',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HEAD'.toFhirString,
  );

  /// POST
  static final HTTPVerb POST = HTTPVerb._(
    validatedValue: 'POST',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'POST'.toFhirString,
  );

  /// PUT
  static final HTTPVerb PUT = HTTPVerb._(
    validatedValue: 'PUT',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PUT'.toFhirString,
  );

  /// DELETE
  static final HTTPVerb DELETE = HTTPVerb._(
    validatedValue: 'DELETE',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DELETE'.toFhirString,
  );

  /// PATCH
  static final HTTPVerb PATCH = HTTPVerb._(
    validatedValue: 'PATCH',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PATCH'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final HTTPVerb elementOnly = HTTPVerb._(validatedValue: '');

  /// List of all enum-like values
  static final List<HTTPVerb> values = [
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    PATCH,
  ];

  /// Clones the current instance
  @override
  HTTPVerb clone() => HTTPVerb._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb._(validatedValue: value, element: newElement);
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
  HTTPVerb copyWith({
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
    return HTTPVerb._(
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
