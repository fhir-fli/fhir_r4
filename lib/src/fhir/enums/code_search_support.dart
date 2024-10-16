import 'package:fhir_r4/fhir_r4.dart';

/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
enum CodeSearchSupport {
  /// Display: Explicit Codes
  /// Definition: The search for code on ValueSet only includes codes explicitly detailed on includes or expansions.
  explicit('explicit'),

  /// Display: Implicit Codes
  /// Definition: The search for code on ValueSet only includes all codes based on the expansion of the value set.
  all('all'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CodeSearchSupport(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CodeSearchSupport fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport.elementOnly.withElement(element);
    }
    return CodeSearchSupport.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
