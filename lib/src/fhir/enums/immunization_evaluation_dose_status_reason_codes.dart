import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why an administered dose has been assigned a particular status. Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.
enum ImmunizationEvaluationDoseStatusReasonCodes {
  /// Display: Adverse storage condition
  /// Definition: The product was stored in a manner inconsistent with manufacturer guidelines potentially reducing the effectiveness of the product.
  advstorage('advstorage'),

  /// Display: Cold chain break
  /// Definition: The product was stored at a temperature inconsistent with manufacturer guidelines potentially reducing the effectiveness of the product.
  coldchbrk('coldchbrk'),

  /// Display: Expired lot
  /// Definition: The product was administered after the expiration date associated with lot of vaccine.
  explot('explot'),

  /// Display: Administered outside recommended schedule
  /// Definition: The product was administered at a time inconsistent with the documented schedule.
  outsidesched('outsidesched'),

  /// Display: Product recall
  /// Definition: The product administered has been recalled by the manufacturer.
  prodrecall('prodrecall'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationEvaluationDoseStatusReasonCodes(this.fhirCode,
      [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationEvaluationDoseStatusReasonCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationEvaluationDoseStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
