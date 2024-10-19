// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit type codes.
class BenefitTypeCodes {
  // Private constructor for internal use (like enum)
  BenefitTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BenefitTypeCodes values
  /// benefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes benefit = BenefitTypeCodes._(
    'benefit',
  );

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes deductible = BenefitTypeCodes._(
    'deductible',
  );

  /// visit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes visit = BenefitTypeCodes._(
    'visit',
  );

  /// room
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes room = BenefitTypeCodes._(
    'room',
  );

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes copay = BenefitTypeCodes._(
    'copay',
  );

  /// copay_percent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes copay_percent = BenefitTypeCodes._(
    'copay-percent',
  );

  /// copay_maximum
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes copay_maximum = BenefitTypeCodes._(
    'copay-maximum',
  );

  /// vision_exam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes vision_exam = BenefitTypeCodes._(
    'vision-exam',
  );

  /// vision_glasses
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes vision_glasses = BenefitTypeCodes._(
    'vision-glasses',
  );

  /// vision_contacts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes vision_contacts = BenefitTypeCodes._(
    'vision-contacts',
  );

  /// medical_primarycare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes medical_primarycare = BenefitTypeCodes._(
    'medical-primarycare',
  );

  /// pharmacy_dispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BenefitTypeCodes pharmacy_dispense = BenefitTypeCodes._(
    'pharmacy-dispense',
  );

  /// For instances where an Element is present but not value

  static final BenefitTypeCodes elementOnly = BenefitTypeCodes._('');

  /// List of all enum-like values
  static final List<BenefitTypeCodes> values = [
    benefit,
    deductible,
    visit,
    room,
    copay,
    copay_percent,
    copay_maximum,
    vision_exam,
    vision_glasses,
    vision_contacts,
    medical_primarycare,
    pharmacy_dispense,
  ];

  /// Returns the enum value with an element attached
  BenefitTypeCodes withElement(Element? newElement) {
    return BenefitTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BenefitTypeCodes] from JSON.
  static BenefitTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTypeCodes.elementOnly.withElement(element);
    }
    return BenefitTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitTypeCodes.$fhirCode';
}
