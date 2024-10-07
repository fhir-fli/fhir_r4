import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Benefit type codes.
enum BenefitTypeCodes {
  /// Display: Benefit
  /// Definition: Maximum benefit allowable.
  @JsonValue('benefit')
  benefit,

  /// Display: Deductible
  /// Definition: Cost to be incurred before benefits are applied
  @JsonValue('deductible')
  deductible,

  /// Display: Visit
  /// Definition: Service visit
  @JsonValue('visit')
  visit,

  /// Display: Room
  /// Definition: Type of room
  @JsonValue('room')
  room,

  /// Display: Copayment per service
  /// Definition: Copayment per service
  @JsonValue('copay')
  copay,

  /// Display: Copayment Percent per service
  /// Definition: Copayment percentage per service
  @JsonValue('copay-percent')
  copay_percent,

  /// Display: Copayment maximum per service
  /// Definition: Copayment maximum per service
  @JsonValue('copay-maximum')
  copay_maximum,

  /// Display: Vision Exam
  /// Definition: Vision Exam
  @JsonValue('vision-exam')
  vision_exam,

  /// Display: Vision Glasses
  /// Definition: Frames and lenses
  @JsonValue('vision-glasses')
  vision_glasses,

  /// Display: Vision Contacts Coverage
  /// Definition: Contact Lenses
  @JsonValue('vision-contacts')
  vision_contacts,

  /// Display: Medical Primary Health Coverage
  /// Definition: Medical Primary Health Coverage
  @JsonValue('medical-primarycare')
  medical_primarycare,

  /// Display: Pharmacy Dispense Coverage
  /// Definition: Pharmacy Dispense Coverage
  @JsonValue('pharmacy-dispense')
  pharmacy_dispense,
  ;

  @override
  String toString() {
    switch (this) {
      case benefit:
        return 'benefit';
      case deductible:
        return 'deductible';
      case visit:
        return 'visit';
      case room:
        return 'room';
      case copay:
        return 'copay';
      case copay_percent:
        return 'copay-percent';
      case copay_maximum:
        return 'copay-maximum';
      case vision_exam:
        return 'vision-exam';
      case vision_glasses:
        return 'vision-glasses';
      case vision_contacts:
        return 'vision-contacts';
      case medical_primarycare:
        return 'medical-primarycare';
      case pharmacy_dispense:
        return 'pharmacy-dispense';
    }
  }

  String toJson() => toString();
  BenefitTypeCodes fromString(String str) {
    switch (str) {
      case 'benefit':
        return BenefitTypeCodes.benefit;
      case 'deductible':
        return BenefitTypeCodes.deductible;
      case 'visit':
        return BenefitTypeCodes.visit;
      case 'room':
        return BenefitTypeCodes.room;
      case 'copay':
        return BenefitTypeCodes.copay;
      case 'copay-percent':
        return BenefitTypeCodes.copay_percent;
      case 'copay-maximum':
        return BenefitTypeCodes.copay_maximum;
      case 'vision-exam':
        return BenefitTypeCodes.vision_exam;
      case 'vision-glasses':
        return BenefitTypeCodes.vision_glasses;
      case 'vision-contacts':
        return BenefitTypeCodes.vision_contacts;
      case 'medical-primarycare':
        return BenefitTypeCodes.medical_primarycare;
      case 'pharmacy-dispense':
        return BenefitTypeCodes.pharmacy_dispense;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  BenefitTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
