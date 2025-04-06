// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP
/// rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerbBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  HTTPVerbBuilder._({
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
  factory HTTPVerbBuilder(
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
    return HTTPVerbBuilder._(
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

  /// Create empty [HTTPVerbBuilder] with element only
  factory HTTPVerbBuilder.empty() => HTTPVerbBuilder._(valueString: '');

  /// Factory constructor to create [HTTPVerbBuilder]
  /// from JSON.
  factory HTTPVerbBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerbBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'HTTPVerbBuilder cannot be constructed from JSON.',
      );
    }
    return HTTPVerbBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// GET
  static HTTPVerbBuilder GET = HTTPVerbBuilder._(
    valueString: 'GET',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GET'.toFhirStringBuilder,
  );

  /// HEAD
  static HTTPVerbBuilder HEAD = HTTPVerbBuilder._(
    valueString: 'HEAD',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HEAD'.toFhirStringBuilder,
  );

  /// POST
  static HTTPVerbBuilder POST = HTTPVerbBuilder._(
    valueString: 'POST',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'POST'.toFhirStringBuilder,
  );

  /// PUT
  static HTTPVerbBuilder PUT = HTTPVerbBuilder._(
    valueString: 'PUT',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PUT'.toFhirStringBuilder,
  );

  /// DELETE
  static HTTPVerbBuilder DELETE = HTTPVerbBuilder._(
    valueString: 'DELETE',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DELETE'.toFhirStringBuilder,
  );

  /// PATCH
  static HTTPVerbBuilder PATCH = HTTPVerbBuilder._(
    valueString: 'PATCH',
    system: 'http://hl7.org/fhir/ValueSet/http-verb'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PATCH'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static HTTPVerbBuilder elementOnly = HTTPVerbBuilder._(valueString: '');

  /// List of all enum-like values
  static List<HTTPVerbBuilder> values = [
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    PATCH,
  ];

  /// Clones the current instance
  @override
  HTTPVerbBuilder clone() => HTTPVerbBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  HTTPVerbBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return HTTPVerbBuilder._(
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
  HTTPVerbBuilder copyWith({
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
        'Invalid input for HTTPVerb: $newValue',
      );
    }
    return HTTPVerbBuilder._(
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
