// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes that convey the current status of the research study.
@Entity()
class ResearchStudyStatus extends FhirCode {
  /// Factory constructor to create [ResearchStudyStatus] from JSON.
  factory ResearchStudyStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchStudyStatus._(value, element);
    }
    throw ArgumentError(
      'ResearchStudyStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// administratively_completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.administratively_completed([this.element])
      : dbValue = 'administratively-completed',
        super('administratively-completed', element);

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.approved([this.element])
      : dbValue = 'approved',
        super('approved', element);

  /// closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.closed_to_accrual([this.element])
      : dbValue = 'closed-to-accrual',
        super('closed-to-accrual', element);

  /// closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.closed_to_accrual_and_intervention([this.element])
      : dbValue = 'closed-to-accrual-and-intervention',
        super('closed-to-accrual-and-intervention', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// disapproved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.disapproved([this.element])
      : dbValue = 'disapproved',
        super('disapproved', element);

  /// in_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.in_review([this.element])
      : dbValue = 'in-review',
        super('in-review', element);

  /// temporarily_closed_to_accrual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.temporarily_closed_to_accrual([this.element])
      : dbValue = 'temporarily-closed-to-accrual',
        super('temporarily-closed-to-accrual', element);

  /// temporarily_closed_to_accrual_and_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.temporarily_closed_to_accrual_and_intervention(
      [this.element])
      : dbValue = 'temporarily-closed-to-accrual-and-intervention',
        super('temporarily-closed-to-accrual-and-intervention', element);

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyStatus.withdrawn([this.element])
      : dbValue = 'withdrawn',
        super('withdrawn', element);

  /// For instances where an Element is present but not value

  ResearchStudyStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchStudyStatus._(super.input, [super.element])
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
    'active',
    'administratively-completed',
    'approved',
    'closed-to-accrual',
    'closed-to-accrual-and-intervention',
    'completed',
    'disapproved',
    'in-review',
    'temporarily-closed-to-accrual',
    'temporarily-closed-to-accrual-and-intervention',
    'withdrawn',
  ];

  /// Returns the enum value with an element attached
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyStatus.$value';
}
