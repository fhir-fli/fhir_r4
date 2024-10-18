// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
enum HTTPVerb {
  /// Display: GET
  /// Definition: HTTP GET Command.
  GET('GET'),

  /// Display: HEAD
  /// Definition: HTTP HEAD Command.
  HEAD('HEAD'),

  /// Display: POST
  /// Definition: HTTP POST Command.
  POST('POST'),

  /// Display: PUT
  /// Definition: HTTP PUT Command.
  PUT('PUT'),

  /// Display: DELETE
  /// Definition: HTTP DELETE Command.
  DELETE('DELETE'),

  /// Display: PATCH
  /// Definition: HTTP PATCH Command.
  PATCH('PATCH'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const HTTPVerb(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [HTTPVerb] instances.
  static HTTPVerb fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly.withElement(element);
    }
    return HTTPVerb.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
