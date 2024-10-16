import 'package:fhir_r4/fhir_r4.dart';

/// The allowable request method or HTTP operation codes.
enum TestScriptRequestMethodCode {
  /// Display: DELETE
  /// Definition: HTTP DELETE operation.
  delete('delete'),

  /// Display: GET
  /// Definition: HTTP GET operation.
  get_('get'),

  /// Display: OPTIONS
  /// Definition: HTTP OPTIONS operation.
  options('options'),

  /// Display: PATCH
  /// Definition: HTTP PATCH operation.
  patch('patch'),

  /// Display: POST
  /// Definition: HTTP POST operation.
  post('post'),

  /// Display: PUT
  /// Definition: HTTP PUT operation.
  put('put'),

  /// Display: HEAD
  /// Definition: HTTP HEAD operation.
  head('head'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestScriptRequestMethodCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestScriptRequestMethodCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode.elementOnly.withElement(element);
    }
    return TestScriptRequestMethodCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
