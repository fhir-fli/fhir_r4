import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Program Reason Span codes.
enum ExampleProgramReasonCodes {
  /// Display: Child Asthma
  /// Definition: Child Asthma Program
  as_('as'),

  /// Display: Hemodialysis
  /// Definition: Hemodialysis Program.
  hd('hd'),

  /// Display: Autism Screening
  /// Definition: Autism Screening Program.
  auscr('auscr'),

  /// Display: None
  /// Definition: No program code applies.
  none('none'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleProgramReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleProgramReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProgramReasonCodes.elementOnly.withElement(element);
    }
    return ExampleProgramReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleProgramReasonCodes withElement(Element? newElement) {
    return ExampleProgramReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
