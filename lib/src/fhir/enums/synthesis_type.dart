import 'package:fhir_r4/fhir_r4.dart';

/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
enum SynthesisType {
  /// Display: summary data meta-analysis
  /// Definition: A meta-analysis of the summary data of estimates from individual studies or data sets.
  std_MA('std-MA'),

  /// Display: individual patient data meta-analysis
  /// Definition: A meta-analysis of the individual participant data from individual studies or data sets.
  IPD_MA('IPD-MA'),

  /// Display: indirect network meta-analysis
  /// Definition: An indirect meta-analysis derived from 2 or more direct comparisons in a network meta-analysis.
  indirect_NMA('indirect-NMA'),

  /// Display: combined direct plus indirect network meta-analysis
  /// Definition: An composite meta-analysis derived from direct comparisons and indirect comparisons in a network meta-analysis.
  combined_NMA('combined-NMA'),

  /// Display: range of results
  /// Definition: A range of results across a body of evidence.
  range('range'),

  /// Display: classifcation of results
  /// Definition: An approach describing a body of evidence by categorically classifying individual studies (eg 3 studies showed beneft and 2 studied found no effect).
  classification('classification'),

  /// Display: not applicable
  /// Definition: Not applicable because the evidence is not from a synthesis but from a single study. Used fo explicitly state that it's not a synthesis.
  NotApplicable('NotApplicable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SynthesisType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SynthesisType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SynthesisType.elementOnly.withElement(element);
    }
    return SynthesisType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SynthesisType withElement(Element? newElement) {
    return SynthesisType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
