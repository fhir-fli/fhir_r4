// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestScriptRequestMethodCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestScriptRequestMethodCode] instances.
  static TestScriptRequestMethodCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode.elementOnly.withElement(
        element,
      );
    }
    return TestScriptRequestMethodCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
