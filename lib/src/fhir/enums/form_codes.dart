import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Forms codes.
enum FormCodes {
  /// Display: Form #1
  /// Definition: Example: The #1 form to be used when printing this information.
  value1('1'),

  /// Display: Form #1
  /// Definition: Example: The #2 form to be used when printing this information.
  value2('2'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FormCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FormCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FormCodes.elementOnly.withElement(element);
    }
    return FormCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FormCodes withElement(Element? newElement) {
    return FormCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
