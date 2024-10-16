import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Clinical Status.
enum ConditionClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
  active('active'),

  /// Display: Recurrence
  /// Definition: The subject is experiencing a re-occurence or repeating of a previously resolved condition, e.g. urinary tract infection, pancreatitis, cholangitis, conjunctivitis.
  recurrence('recurrence'),

  /// Display: Relapse
  /// Definition: The subject is experiencing a return of a condition, or signs and symptoms after a period of improvement or remission, e.g. relapse of cancer, multiple sclerosis, rheumatoid arthritis, systemic lupus erythematosus, bipolar disorder, [psychotic relapse of] schizophrenia, etc.
  relapse('relapse'),

  /// Display: Inactive
  /// Definition: The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the condition.
  inactive('inactive'),

  /// Display: Remission
  /// Definition: The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms returning.
  remission('remission'),

  /// Display: Resolved
  /// Definition: The subject is no longer experiencing the symptoms of the condition and there is a negligible perceived risk of the symptoms returning.
  resolved('resolved'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionClinicalStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionClinicalStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionClinicalStatusCodes.elementOnly.withElement(element);
    }
    return ConditionClinicalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionClinicalStatusCodes withElement(Element? newElement) {
    return ConditionClinicalStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
