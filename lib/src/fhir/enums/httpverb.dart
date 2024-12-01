// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerb {
  // Private constructor for internal use (like enum)
  HTTPVerb._(this.fhirCode, {this.element});

  /// Factory constructor to create [HTTPVerb] from JSON.
  factory HTTPVerb.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly.withElement(element);
    }
    return HTTPVerb._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// HTTPVerb values
  /// GET
  static final HTTPVerb GET = HTTPVerb._(
    'GET',
  );

  /// HEAD
  static final HTTPVerb HEAD = HTTPVerb._(
    'HEAD',
  );

  /// POST
  static final HTTPVerb POST = HTTPVerb._(
    'POST',
  );

  /// PUT
  static final HTTPVerb PUT = HTTPVerb._(
    'PUT',
  );

  /// DELETE
  static final HTTPVerb DELETE = HTTPVerb._(
    'DELETE',
  );

  /// PATCH
  static final HTTPVerb PATCH = HTTPVerb._(
    'PATCH',
  );

  /// For instances where an Element is present but not value

  static final HTTPVerb elementOnly = HTTPVerb._('');

  /// List of all enum-like values
  static final List<HTTPVerb> values = [
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    PATCH,
  ];

  /// Returns the enum value with an element attached
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
