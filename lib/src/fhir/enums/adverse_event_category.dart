// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdverseEventCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdverseEventCategory] instances.
  static AdverseEventCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCategory.elementOnly.withElement(
        element,
      );
    }
    return AdverseEventCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdverseEventCategory withElement(Element? newElement) {
    return AdverseEventCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
