// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of a case involved in an application.
@Entity()
class RegulatedAuthorizationCaseType extends FhirCode {
  /// Factory constructor to create [RegulatedAuthorizationCaseType] from JSON.
  factory RegulatedAuthorizationCaseType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly(element);
    }
    if (values.contains(value)) {
      return RegulatedAuthorizationCaseType._(value, element);
    }
    throw ArgumentError(
      'RegulatedAuthorizationCaseType.fromJson: JSON value is not a valid value',
    );
  }

  /// InitialMAA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.InitialMAA([this.element])
      : dbValue = 'InitialMAA',
        super('InitialMAA', element);

  /// Variation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Variation([this.element])
      : dbValue = 'Variation',
        super('Variation', element);

  /// LineExtension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.LineExtension([this.element])
      : dbValue = 'LineExtension',
        super('LineExtension', element);

  /// PSUR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.PSUR([this.element])
      : dbValue = 'PSUR',
        super('PSUR', element);

  /// Renewal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Renewal([this.element])
      : dbValue = 'Renewal',
        super('Renewal', element);

  /// Follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Follow_up([this.element])
      : dbValue = 'Follow-up',
        super('Follow-up', element);

  /// value100000155699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.value100000155699([this.element])
      : dbValue = '100000155699',
        super('100000155699', element);

  /// AnnualReassessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.AnnualReassessment([this.element])
      : dbValue = 'AnnualReassessment',
        super('AnnualReassessment', element);

  /// UrgentSafetyRestriction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.UrgentSafetyRestriction([this.element])
      : dbValue = 'UrgentSafetyRestriction',
        super('UrgentSafetyRestriction', element);

  /// PaediatricSubmission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.PaediatricSubmission([this.element])
      : dbValue = 'PaediatricSubmission',
        super('PaediatricSubmission', element);

  /// TransferMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.TransferMA([this.element])
      : dbValue = 'TransferMA',
        super('TransferMA', element);

  /// LiftingSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.LiftingSuspension([this.element])
      : dbValue = 'LiftingSuspension',
        super('LiftingSuspension', element);

  /// Withdrawal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Withdrawal([this.element])
      : dbValue = 'Withdrawal',
        super('Withdrawal', element);

  /// Reformatting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Reformatting([this.element])
      : dbValue = 'Reformatting',
        super('Reformatting', element);

  /// RMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.RMP([this.element])
      : dbValue = 'RMP',
        super('RMP', element);

  /// ReviewSuspension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.ReviewSuspension([this.element])
      : dbValue = 'ReviewSuspension',
        super('ReviewSuspension', element);

  /// SupplementalInformation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.SupplementalInformation([this.element])
      : dbValue = 'SupplementalInformation',
        super('SupplementalInformation', element);

  /// RepeatUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.RepeatUse([this.element])
      : dbValue = 'RepeatUse',
        super('RepeatUse', element);

  /// SignalDetection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.SignalDetection([this.element])
      : dbValue = 'SignalDetection',
        super('SignalDetection', element);

  /// FLU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.FLU([this.element])
      : dbValue = 'FLU',
        super('FLU', element);

  /// PANDEMIC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.PANDEMIC([this.element])
      : dbValue = 'PANDEMIC',
        super('PANDEMIC', element);

  /// Orphan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationCaseType.Orphan([this.element])
      : dbValue = 'Orphan',
        super('Orphan', element);

  /// For instances where an Element is present but not value

  RegulatedAuthorizationCaseType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RegulatedAuthorizationCaseType._(super.input, [super.element])
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
    'InitialMAA',
    'Variation',
    'LineExtension',
    'PSUR',
    'Renewal',
    'Follow-up',
    '100000155699',
    'AnnualReassessment',
    'UrgentSafetyRestriction',
    'PaediatricSubmission',
    'TransferMA',
    'LiftingSuspension',
    'Withdrawal',
    'Reformatting',
    'RMP',
    'ReviewSuspension',
    'SupplementalInformation',
    'RepeatUse',
    'SignalDetection',
    'FLU',
    'PANDEMIC',
    'Orphan',
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationCaseType withElement(Element? newElement) {
    return RegulatedAuthorizationCaseType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationCaseType.$value';
}
