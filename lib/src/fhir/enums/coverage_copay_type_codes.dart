// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Coverage Copayment Type codes.
enum CoverageCopayTypeCodes {
  /// Display: GP Office Visit
  /// Definition: An office visit for a general practitioner of a discipline.
  gpvisit('gpvisit'),

  /// Display: Specialist Office Visit
  /// Definition: An office visit for a specialist practitioner of a discipline
  spvisit('spvisit'),

  /// Display: Emergency
  /// Definition: An episode in an emergency department.
  emergency('emergency'),

  /// Display: Inpatient Hospital
  /// Definition: An episode of an Inpatient hospital stay.
  inpthosp('inpthosp'),

  /// Display: Tele-visit
  /// Definition: A visit held where the patient is remote relative to the practitioner, e.g. by phone, computer or video conference.
  televisit('televisit'),

  /// Display: Urgent Care
  /// Definition: A visit to an urgent care facility - typically a community care clinic.
  urgentcare('urgentcare'),

  /// Display: Copay Percentage
  /// Definition: A standard percentage applied to all classes or service or product not otherwise specified.
  copaypct('copaypct'),

  /// Display: Copay Amount
  /// Definition: A standard fixed currency amount applied to all classes or service or product not otherwise specified.
  copay('copay'),

  /// Display: Deductible
  /// Definition: The accumulated amount of patient payment before the coverage begins to pay for services.
  deductible('deductible'),

  /// Display: Maximum out of pocket
  /// Definition: The maximum amout of payment for services which a patient, or family, is expected to incur - typically annually.
  maxoutofpocket('maxoutofpocket'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CoverageCopayTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CoverageCopayTypeCodes] instances.
  static CoverageCopayTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageCopayTypeCodes.elementOnly.withElement(
        element,
      );
    }
    return CoverageCopayTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CoverageCopayTypeCodes withElement(Element? newElement) {
    return CoverageCopayTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
