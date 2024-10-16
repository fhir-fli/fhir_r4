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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const HTTPVerb(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static HTTPVerb fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly.withElement(element);
    }
    return HTTPVerb.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
