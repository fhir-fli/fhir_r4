// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationEvaluationDoseStatusReasonCodes(this.fhirCode,
      [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationEvaluationDoseStatusReasonCodes] instances.
  static ImmunizationEvaluationDoseStatusReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusReasonCodes.elementOnly
          .withElement(
        element,
      );
    }
    return ImmunizationEvaluationDoseStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationEvaluationDoseStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
