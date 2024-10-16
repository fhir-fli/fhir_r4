import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
enum AdjudicationValueCodes {
  /// Display: Submitted Amount
  /// Definition: The total submitted amount for the claim or group or line item.
  submitted('submitted'),

  /// Display: CoPay
  /// Definition: Patient Co-Payment
  copay('copay'),

  /// Display: Eligible Amount
  /// Definition: Amount of the change which is considered for adjudication.
  eligible('eligible'),

  /// Display: Deductible
  /// Definition: Amount deducted from the eligible amount prior to adjudication.
  deductible('deductible'),

  /// Display: Unallocated Deductible
  /// Definition: The amount of deductible which could not allocated to other line items.
  unallocdeduct('unallocdeduct'),

  /// Display: Eligible %
  /// Definition: Eligible Percentage.
  eligpercent('eligpercent'),

  /// Display: Tax
  /// Definition: The amount of tax.
  tax('tax'),

  /// Display: Benefit Amount
  /// Definition: Amount payable under the coverage
  benefit('benefit'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdjudicationValueCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdjudicationValueCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationValueCodes.elementOnly.withElement(element);
    }
    return AdjudicationValueCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdjudicationValueCodes withElement(Element? newElement) {
    return AdjudicationValueCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
