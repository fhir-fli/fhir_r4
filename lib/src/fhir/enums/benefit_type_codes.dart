// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of Benefit type codes.
@Entity()
class BenefitTypeCodes extends FhirCode {
  /// Factory constructor to create [BenefitTypeCodes] from JSON.
  factory BenefitTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return BenefitTypeCodes._(value, element);
    }
    throw ArgumentError(
      'BenefitTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// benefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.benefit([this.element])
      : dbValue = 'benefit',
        super('benefit', element);

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.deductible([this.element])
      : dbValue = 'deductible',
        super('deductible', element);

  /// visit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.visit([this.element])
      : dbValue = 'visit',
        super('visit', element);

  /// room
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.room([this.element])
      : dbValue = 'room',
        super('room', element);

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.copay([this.element])
      : dbValue = 'copay',
        super('copay', element);

  /// copay_percent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.copay_percent([this.element])
      : dbValue = 'copay-percent',
        super('copay-percent', element);

  /// copay_maximum
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.copay_maximum([this.element])
      : dbValue = 'copay-maximum',
        super('copay-maximum', element);

  /// vision_exam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.vision_exam([this.element])
      : dbValue = 'vision-exam',
        super('vision-exam', element);

  /// vision_glasses
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.vision_glasses([this.element])
      : dbValue = 'vision-glasses',
        super('vision-glasses', element);

  /// vision_contacts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.vision_contacts([this.element])
      : dbValue = 'vision-contacts',
        super('vision-contacts', element);

  /// medical_primarycare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.medical_primarycare([this.element])
      : dbValue = 'medical-primarycare',
        super('medical-primarycare', element);

  /// pharmacy_dispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTypeCodes.pharmacy_dispense([this.element])
      : dbValue = 'pharmacy-dispense',
        super('pharmacy-dispense', element);

  /// For instances where an Element is present but not value

  BenefitTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BenefitTypeCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'benefit',
    'deductible',
    'visit',
    'room',
    'copay',
    'copay-percent',
    'copay-maximum',
    'vision-exam',
    'vision-glasses',
    'vision-contacts',
    'medical-primarycare',
    'pharmacy-dispense',
  ];

  /// Returns the enum value with an element attached
  BenefitTypeCodes withElement(Element? newElement) {
    return BenefitTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitTypeCodes.$value';
}
