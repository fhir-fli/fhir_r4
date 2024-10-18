// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
enum CodeSearchSupport {
  /// Display: Explicit Codes
  /// Definition: The search for code on ValueSet only includes codes explicitly detailed on includes or expansions.
  explicit('explicit'),

  /// Display: Implicit Codes
  /// Definition: The search for code on ValueSet only includes all codes based on the expansion of the value set.
  all('all'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CodeSearchSupport(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CodeSearchSupport] instances.
  static CodeSearchSupport fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport.elementOnly.withElement(
        element,
      );
    }
    return CodeSearchSupport.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
