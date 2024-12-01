// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a case involved in an application.
class RegulatedAuthorizationCaseType {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationCaseType._(this.fhirCode, {this.element});

  /// Factory constructor to create [RegulatedAuthorizationCaseType] from JSON.
  factory RegulatedAuthorizationCaseType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationCaseType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RegulatedAuthorizationCaseType values
  /// InitialMAA
  static final RegulatedAuthorizationCaseType InitialMAA =
      RegulatedAuthorizationCaseType._(
    'InitialMAA',
  );

  /// Variation
  static final RegulatedAuthorizationCaseType Variation =
      RegulatedAuthorizationCaseType._(
    'Variation',
  );

  /// LineExtension
  static final RegulatedAuthorizationCaseType LineExtension =
      RegulatedAuthorizationCaseType._(
    'LineExtension',
  );

  /// PSUR
  static final RegulatedAuthorizationCaseType PSUR =
      RegulatedAuthorizationCaseType._(
    'PSUR',
  );

  /// Renewal
  static final RegulatedAuthorizationCaseType Renewal =
      RegulatedAuthorizationCaseType._(
    'Renewal',
  );

  /// Follow_up
  static final RegulatedAuthorizationCaseType Follow_up =
      RegulatedAuthorizationCaseType._(
    'Follow-up',
  );

  /// value100000155699
  static final RegulatedAuthorizationCaseType value100000155699 =
      RegulatedAuthorizationCaseType._(
    '100000155699',
  );

  /// AnnualReassessment
  static final RegulatedAuthorizationCaseType AnnualReassessment =
      RegulatedAuthorizationCaseType._(
    'AnnualReassessment',
  );

  /// UrgentSafetyRestriction
  static final RegulatedAuthorizationCaseType UrgentSafetyRestriction =
      RegulatedAuthorizationCaseType._(
    'UrgentSafetyRestriction',
  );

  /// PaediatricSubmission
  static final RegulatedAuthorizationCaseType PaediatricSubmission =
      RegulatedAuthorizationCaseType._(
    'PaediatricSubmission',
  );

  /// TransferMA
  static final RegulatedAuthorizationCaseType TransferMA =
      RegulatedAuthorizationCaseType._(
    'TransferMA',
  );

  /// LiftingSuspension
  static final RegulatedAuthorizationCaseType LiftingSuspension =
      RegulatedAuthorizationCaseType._(
    'LiftingSuspension',
  );

  /// Withdrawal
  static final RegulatedAuthorizationCaseType Withdrawal =
      RegulatedAuthorizationCaseType._(
    'Withdrawal',
  );

  /// Reformatting
  static final RegulatedAuthorizationCaseType Reformatting =
      RegulatedAuthorizationCaseType._(
    'Reformatting',
  );

  /// RMP
  static final RegulatedAuthorizationCaseType RMP =
      RegulatedAuthorizationCaseType._(
    'RMP',
  );

  /// ReviewSuspension
  static final RegulatedAuthorizationCaseType ReviewSuspension =
      RegulatedAuthorizationCaseType._(
    'ReviewSuspension',
  );

  /// SupplementalInformation
  static final RegulatedAuthorizationCaseType SupplementalInformation =
      RegulatedAuthorizationCaseType._(
    'SupplementalInformation',
  );

  /// RepeatUse
  static final RegulatedAuthorizationCaseType RepeatUse =
      RegulatedAuthorizationCaseType._(
    'RepeatUse',
  );

  /// SignalDetection
  static final RegulatedAuthorizationCaseType SignalDetection =
      RegulatedAuthorizationCaseType._(
    'SignalDetection',
  );

  /// FLU
  static final RegulatedAuthorizationCaseType FLU =
      RegulatedAuthorizationCaseType._(
    'FLU',
  );

  /// PANDEMIC
  static final RegulatedAuthorizationCaseType PANDEMIC =
      RegulatedAuthorizationCaseType._(
    'PANDEMIC',
  );

  /// Orphan
  static final RegulatedAuthorizationCaseType Orphan =
      RegulatedAuthorizationCaseType._(
    'Orphan',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationCaseType elementOnly =
      RegulatedAuthorizationCaseType._('');

  /// List of all enum-like values
  static final List<RegulatedAuthorizationCaseType> values = [
    InitialMAA,
    Variation,
    LineExtension,
    PSUR,
    Renewal,
    Follow_up,
    value100000155699,
    AnnualReassessment,
    UrgentSafetyRestriction,
    PaediatricSubmission,
    TransferMA,
    LiftingSuspension,
    Withdrawal,
    Reformatting,
    RMP,
    ReviewSuspension,
    SupplementalInformation,
    RepeatUse,
    SignalDetection,
    FLU,
    PANDEMIC,
    Orphan,
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationCaseType withElement(Element? newElement) {
    return RegulatedAuthorizationCaseType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
