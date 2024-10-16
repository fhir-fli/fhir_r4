import 'package:fhir_r4/fhir_r4.dart';

/// The type of a case involved in an application.
enum RegulatedAuthorizationCaseType {
  /// Display: Initial Marketing Authorisation Application
  /// Definition:
  InitialMAA('InitialMAA'),

  /// Display: Variation
  /// Definition:
  Variation('Variation'),

  /// Display: Line Extension
  /// Definition:
  LineExtension('LineExtension'),

  /// Display: Periodic Safety Update Report
  /// Definition:
  PSUR('PSUR'),

  /// Display: Renewal
  /// Definition:
  Renewal('Renewal'),

  /// Display: Follow-up Measure
  /// Definition:
  Follow_up('Follow-up'),

  /// Display: Specific Obligation
  /// Definition:
  value100000155699('100000155699'),

  /// Display: Annual Reassessment
  /// Definition:
  AnnualReassessment('AnnualReassessment'),

  /// Display: Urgent Safety Restriction
  /// Definition:
  UrgentSafetyRestriction('UrgentSafetyRestriction'),

  /// Display: Paediatric Submission
  /// Definition:
  PaediatricSubmission('PaediatricSubmission'),

  /// Display: Transfer of a marketing authorisation
  /// Definition:
  TransferMA('TransferMA'),

  /// Display: Lifting of a Suspension
  /// Definition:
  LiftingSuspension('LiftingSuspension'),

  /// Display: Withdrawal
  /// Definition:
  Withdrawal('Withdrawal'),

  /// Display: Reformatting
  /// Definition:
  Reformatting('Reformatting'),

  /// Display: Risk Management Plan
  /// Definition:
  RMP('RMP'),

  /// Display: Review of a Suspension of MA
  /// Definition:
  ReviewSuspension('ReviewSuspension'),

  /// Display: Supplemental Information
  /// Definition:
  SupplementalInformation('SupplementalInformation'),

  /// Display: Repeat Use Procedure
  /// Definition:
  RepeatUse('RepeatUse'),

  /// Display: Signal detection
  /// Definition:
  SignalDetection('SignalDetection'),

  /// Display: FLU STRAIN UPDATE
  /// Definition:
  FLU('FLU'),

  /// Display: PANDEMIC UPDATE
  /// Definition:
  PANDEMIC('PANDEMIC'),

  /// Display: Orphan Designation Application
  /// Definition:
  Orphan('Orphan'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RegulatedAuthorizationCaseType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RegulatedAuthorizationCaseType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationCaseType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RegulatedAuthorizationCaseType withElement(Element? newElement) {
    return RegulatedAuthorizationCaseType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
