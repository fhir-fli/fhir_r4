import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
enum EvidenceVariableHandling {
  /// Display: continuous variable
  /// Definition: A continuous variable is one for which, within the limits the variable ranges, any value is possible (from STATO http://purl.obolibrary.org/obo/STATO_0000251).
  continuous('continuous'),

  /// Display: dichotomous variable
  /// Definition: A dichotomous variable is a categorical variable which is defined to have only 2 categories or possible values (from STATO http://purl.obolibrary.org/obo/STATO_0000090).
  dichotomous('dichotomous'),

  /// Display: ordinal variable
  /// Definition: An ordinal variable is a categorical variable where the discrete possible values are ordered or correspond to an implicit ranking (from STATO http://purl.obolibrary.org/obo/STATO_0000228).
  ordinal('ordinal'),

  /// Display: polychotomous variable
  /// Definition: A polychotomous variable is a categorical variable which is defined to have minimally 2 categories or possible values. (from STATO http://purl.obolibrary.org/obo/STATO_0000087). Suggestion to limit code use to situations when neither dichotomous nor ordinal variables apply.
  polychotomous('polychotomous'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceVariableHandling(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceVariableHandling fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling.elementOnly.withElement(element);
    }
    return EvidenceVariableHandling.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
