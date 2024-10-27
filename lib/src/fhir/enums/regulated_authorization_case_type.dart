// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a case involved in an application.
class RegulatedAuthorizationCaseType {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationCaseType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RegulatedAuthorizationCaseType values
  /// InitialMAA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType InitialMAA =
      RegulatedAuthorizationCaseType._(
    'InitialMAA',
  );

  /// Variation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Variation =
      RegulatedAuthorizationCaseType._(
    'Variation',
  );

  /// LineExtension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType LineExtension =
      RegulatedAuthorizationCaseType._(
    'LineExtension',
  );

  /// PSUR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PSUR =
      RegulatedAuthorizationCaseType._(
    'PSUR',
  );

  /// Renewal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Renewal =
      RegulatedAuthorizationCaseType._(
    'Renewal',
  );

  /// Follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Follow_up =
      RegulatedAuthorizationCaseType._(
    'Follow-up',
  );

  /// value100000155699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType value100000155699 =
      RegulatedAuthorizationCaseType._(
    '100000155699',
  );

  /// AnnualReassessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType AnnualReassessment =
      RegulatedAuthorizationCaseType._(
    'AnnualReassessment',
  );

  /// UrgentSafetyRestriction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType UrgentSafetyRestriction =
      RegulatedAuthorizationCaseType._(
    'UrgentSafetyRestriction',
  );

  /// PaediatricSubmission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PaediatricSubmission =
      RegulatedAuthorizationCaseType._(
    'PaediatricSubmission',
  );

  /// TransferMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType TransferMA =
      RegulatedAuthorizationCaseType._(
    'TransferMA',
  );

  /// LiftingSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType LiftingSuspension =
      RegulatedAuthorizationCaseType._(
    'LiftingSuspension',
  );

  /// Withdrawal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Withdrawal =
      RegulatedAuthorizationCaseType._(
    'Withdrawal',
  );

  /// Reformatting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Reformatting =
      RegulatedAuthorizationCaseType._(
    'Reformatting',
  );

  /// RMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType RMP =
      RegulatedAuthorizationCaseType._(
    'RMP',
  );

  /// ReviewSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType ReviewSuspension =
      RegulatedAuthorizationCaseType._(
    'ReviewSuspension',
  );

  /// SupplementalInformation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType SupplementalInformation =
      RegulatedAuthorizationCaseType._(
    'SupplementalInformation',
  );

  /// RepeatUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType RepeatUse =
      RegulatedAuthorizationCaseType._(
    'RepeatUse',
  );

  /// SignalDetection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType SignalDetection =
      RegulatedAuthorizationCaseType._(
    'SignalDetection',
  );

  /// FLU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType FLU =
      RegulatedAuthorizationCaseType._(
    'FLU',
  );

  /// PANDEMIC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PANDEMIC =
      RegulatedAuthorizationCaseType._(
    'PANDEMIC',
  );

  /// Orphan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [RegulatedAuthorizationCaseType] from JSON.
  static RegulatedAuthorizationCaseType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationCaseType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
