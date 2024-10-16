import 'package:fhir_r4/fhir_r4.dart';

/// Overall categorization of the event, e.g. product-related or situational.
enum AdverseEventCategory {
  /// Display: Product Problem
  /// Definition: The adverse event pertains to a product problem.
  product_problem('product-problem'),

  /// Display: Product Quality
  /// Definition: The adverse event pertains to product quality.
  product_quality('product-quality'),

  /// Display: Product Use Error
  /// Definition: The adverse event pertains to a product use error.
  product_use_error('product-use-error'),

  /// Display: Wrong Dose
  /// Definition: The adverse event pertains to a wrong dose.
  wrong_dose('wrong-dose'),

  /// Display: Incorrect Prescribing Information
  /// Definition: The adverse event pertains to incorrect perscribing information.
  incorrect_prescribing_information('incorrect-prescribing-information'),

  /// Display: Wrong Technique
  /// Definition: The adverse event pertains to a wrong technique.
  wrong_technique('wrong-technique'),

  /// Display: Wrong Route of Administration
  /// Definition: The adverse event pertains to a wrong route of administration.
  wrong_route_of_administration('wrong-route-of-administration'),

  /// Display: Wrong Rate
  /// Definition: The adverse event pertains to a wrong rate.
  wrong_rate('wrong-rate'),

  /// Display: Wrong Duration
  /// Definition: The adverse event pertains to a wrong duration.
  wrong_duration('wrong-duration'),

  /// Display: Wrong Time
  /// Definition: The adverse event pertains to a wrong time.
  wrong_time('wrong-time'),

  /// Display: Expired Drug
  /// Definition: The adverse event pertains to an expired drug.
  expired_drug('expired-drug'),

  /// Display: Medical Device Use Error
  /// Definition: The adverse event pertains to a medical device use error.
  medical_device_use_error('medical-device-use-error'),

  /// Display: Problem with Different Manufacturer of Same Medicine
  /// Definition: The adverse event pertains to a problem with a different manufacturer of the same medication.
  problem_different_manufacturer('problem-different-manufacturer'),

  /// Display: Unsafe Physical Environment
  /// Definition: The adverse event pertains to an unsafe physical environment.
  unsafe_physical_environment('unsafe-physical-environment'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCategory.elementOnly.withElement(element);
    }
    return AdverseEventCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventCategory withElement(Element? newElement) {
    return AdverseEventCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
