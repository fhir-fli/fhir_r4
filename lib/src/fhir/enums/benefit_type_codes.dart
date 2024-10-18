// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit type codes.
enum BenefitTypeCodes {
  /// Display: Benefit
  /// Definition: Maximum benefit allowable.
  benefit('benefit'),

  /// Display: Deductible
  /// Definition: Cost to be incurred before benefits are applied
  deductible('deductible'),

  /// Display: Visit
  /// Definition: Service visit
  visit('visit'),

  /// Display: Room
  /// Definition: Type of room
  room('room'),

  /// Display: Copayment per service
  /// Definition: Copayment per service
  copay('copay'),

  /// Display: Copayment Percent per service
  /// Definition: Copayment percentage per service
  copay_percent('copay-percent'),

  /// Display: Copayment maximum per service
  /// Definition: Copayment maximum per service
  copay_maximum('copay-maximum'),

  /// Display: Vision Exam
  /// Definition: Vision Exam
  vision_exam('vision-exam'),

  /// Display: Vision Glasses
  /// Definition: Frames and lenses
  vision_glasses('vision-glasses'),

  /// Display: Vision Contacts Coverage
  /// Definition: Contact Lenses
  vision_contacts('vision-contacts'),

  /// Display: Medical Primary Health Coverage
  /// Definition: Medical Primary Health Coverage
  medical_primarycare('medical-primarycare'),

  /// Display: Pharmacy Dispense Coverage
  /// Definition: Pharmacy Dispense Coverage
  pharmacy_dispense('pharmacy-dispense'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const BenefitTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [BenefitTypeCodes] instances.
  static BenefitTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTypeCodes.elementOnly.withElement(
        element,
      );
    }
    return BenefitTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  BenefitTypeCodes withElement(Element? newElement) {
    return BenefitTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
