import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Coverage Copayment Type codes.
enum CoverageCopayTypeCodes {
  /// Display: GP Office Visit
  /// Definition: An office visit for a general practitioner of a discipline.
  @JsonValue('gpvisit')
  gpvisit,
  /// Display: Specialist Office Visit
  /// Definition: An office visit for a specialist practitioner of a discipline
  @JsonValue('spvisit')
  spvisit,
  /// Display: Emergency
  /// Definition: An episode in an emergency department.
  @JsonValue('emergency')
  emergency,
  /// Display: Inpatient Hospital
  /// Definition: An episode of an Inpatient hospital stay.
  @JsonValue('inpthosp')
  inpthosp,
  /// Display: Tele-visit
  /// Definition: A visit held where the patient is remote relative to the practitioner, e.g. by phone, computer or video conference.
  @JsonValue('televisit')
  televisit,
  /// Display: Urgent Care
  /// Definition: A visit to an urgent care facility - typically a community care clinic.
  @JsonValue('urgentcare')
  urgentcare,
  /// Display: Copay Percentage
  /// Definition: A standard percentage applied to all classes or service or product not otherwise specified.
  @JsonValue('copaypct')
  copaypct,
  /// Display: Copay Amount
  /// Definition: A standard fixed currency amount applied to all classes or service or product not otherwise specified.
  @JsonValue('copay')
  copay,
  /// Display: Deductible
  /// Definition: The accumulated amount of patient payment before the coverage begins to pay for services.
  @JsonValue('deductible')
  deductible,
  /// Display: Maximum out of pocket
  /// Definition: The maximum amout of payment for services which a patient, or family, is expected to incur - typically annually.
  @JsonValue('maxoutofpocket')
  maxoutofpocket,
;

@override
  String toString() {
      switch(this) {
        case gpvisit: return 'gpvisit';
        case spvisit: return 'spvisit';
        case emergency: return 'emergency';
        case inpthosp: return 'inpthosp';
        case televisit: return 'televisit';
        case urgentcare: return 'urgentcare';
        case copaypct: return 'copaypct';
        case copay: return 'copay';
        case deductible: return 'deductible';
        case maxoutofpocket: return 'maxoutofpocket';
      }
      }
String toJson() => toString();
  CoverageCopayTypeCodes fromString(String str) {
    switch(str) {
      case 'gpvisit': return CoverageCopayTypeCodes.gpvisit;
      case 'spvisit': return CoverageCopayTypeCodes.spvisit;
      case 'emergency': return CoverageCopayTypeCodes.emergency;
      case 'inpthosp': return CoverageCopayTypeCodes.inpthosp;
      case 'televisit': return CoverageCopayTypeCodes.televisit;
      case 'urgentcare': return CoverageCopayTypeCodes.urgentcare;
      case 'copaypct': return CoverageCopayTypeCodes.copaypct;
      case 'copay': return CoverageCopayTypeCodes.copay;
      case 'deductible': return CoverageCopayTypeCodes.deductible;
      case 'maxoutofpocket': return CoverageCopayTypeCodes.maxoutofpocket;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CoverageCopayTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
