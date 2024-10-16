import 'package:fhir_r4/fhir_r4.dart';

/// Criterion for rejection of the specimen by laboratory.
enum RejectionCriterion {
  /// Display: hemolized specimen
  /// Definition: blood specimen hemolized.
  hemolized('hemolized'),

  /// Display: insufficient specimen volume
  /// Definition: insufficient quantity of specimen.
  insufficient('insufficient'),

  /// Display: broken specimen container
  /// Definition: specimen container broken.
  broken('broken'),

  /// Display: specimen clotted
  /// Definition: specimen clotted.
  clotted('clotted'),

  /// Display: specimen temperature inappropriate
  /// Definition: specimen temperature inappropriate.
  wrong_temperature('wrong-temperature'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RejectionCriterion(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RejectionCriterion fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RejectionCriterion.elementOnly.withElement(element);
    }
    return RejectionCriterion.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RejectionCriterion withElement(Element? newElement) {
    return RejectionCriterion.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
