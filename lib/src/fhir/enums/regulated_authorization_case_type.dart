// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of a case involved in an application.
@collection
class RegulatedAuthorizationCaseType {
  /// Constructor for internal use (like enum)
  RegulatedAuthorizationCaseType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RegulatedAuthorizationCaseType values
  /// InitialMAA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType InitialMAA =
      RegulatedAuthorizationCaseType(
    fhirCode: 'InitialMAA',
  );

  /// Variation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Variation =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Variation',
  );

  /// LineExtension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType LineExtension =
      RegulatedAuthorizationCaseType(
    fhirCode: 'LineExtension',
  );

  /// PSUR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PSUR =
      RegulatedAuthorizationCaseType(
    fhirCode: 'PSUR',
  );

  /// Renewal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Renewal =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Renewal',
  );

  /// Follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Follow_up =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Follow-up',
  );

  /// value100000155699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType value100000155699 =
      RegulatedAuthorizationCaseType(
    fhirCode: '100000155699',
  );

  /// AnnualReassessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType AnnualReassessment =
      RegulatedAuthorizationCaseType(
    fhirCode: 'AnnualReassessment',
  );

  /// UrgentSafetyRestriction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType UrgentSafetyRestriction =
      RegulatedAuthorizationCaseType(
    fhirCode: 'UrgentSafetyRestriction',
  );

  /// PaediatricSubmission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PaediatricSubmission =
      RegulatedAuthorizationCaseType(
    fhirCode: 'PaediatricSubmission',
  );

  /// TransferMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType TransferMA =
      RegulatedAuthorizationCaseType(
    fhirCode: 'TransferMA',
  );

  /// LiftingSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType LiftingSuspension =
      RegulatedAuthorizationCaseType(
    fhirCode: 'LiftingSuspension',
  );

  /// Withdrawal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Withdrawal =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Withdrawal',
  );

  /// Reformatting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Reformatting =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Reformatting',
  );

  /// RMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType RMP =
      RegulatedAuthorizationCaseType(
    fhirCode: 'RMP',
  );

  /// ReviewSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType ReviewSuspension =
      RegulatedAuthorizationCaseType(
    fhirCode: 'ReviewSuspension',
  );

  /// SupplementalInformation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType SupplementalInformation =
      RegulatedAuthorizationCaseType(
    fhirCode: 'SupplementalInformation',
  );

  /// RepeatUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType RepeatUse =
      RegulatedAuthorizationCaseType(
    fhirCode: 'RepeatUse',
  );

  /// SignalDetection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType SignalDetection =
      RegulatedAuthorizationCaseType(
    fhirCode: 'SignalDetection',
  );

  /// FLU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType FLU =
      RegulatedAuthorizationCaseType(
    fhirCode: 'FLU',
  );

  /// PANDEMIC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType PANDEMIC =
      RegulatedAuthorizationCaseType(
    fhirCode: 'PANDEMIC',
  );

  /// Orphan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationCaseType Orphan =
      RegulatedAuthorizationCaseType(
    fhirCode: 'Orphan',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationCaseType elementOnly =
      RegulatedAuthorizationCaseType();

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
    return RegulatedAuthorizationCaseType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationCaseType.$fhirCode';
}
