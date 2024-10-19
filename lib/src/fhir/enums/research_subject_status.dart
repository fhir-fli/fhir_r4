// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates the progression of a study subject through a study.
@Entity()
class ResearchSubjectStatus extends FhirCode {
  /// Factory constructor to create [ResearchSubjectStatus] from JSON.
  factory ResearchSubjectStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchSubjectStatus._(value, element);
    }
    throw ArgumentError(
      'ResearchSubjectStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.candidate([this.element])
      : dbValue = 'candidate',
        super('candidate', element);

  /// eligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.eligible([this.element])
      : dbValue = 'eligible',
        super('eligible', element);

  /// follow_up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.follow_up([this.element])
      : dbValue = 'follow-up',
        super('follow-up', element);

  /// ineligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.ineligible([this.element])
      : dbValue = 'ineligible',
        super('ineligible', element);

  /// not_registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.not_registered([this.element])
      : dbValue = 'not-registered',
        super('not-registered', element);

  /// off_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.off_study([this.element])
      : dbValue = 'off-study',
        super('off-study', element);

  /// on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.on_study([this.element])
      : dbValue = 'on-study',
        super('on-study', element);

  /// on_study_intervention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.on_study_intervention([this.element])
      : dbValue = 'on-study-intervention',
        super('on-study-intervention', element);

  /// on_study_observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.on_study_observation([this.element])
      : dbValue = 'on-study-observation',
        super('on-study-observation', element);

  /// pending_on_study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.pending_on_study([this.element])
      : dbValue = 'pending-on-study',
        super('pending-on-study', element);

  /// potential_candidate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.potential_candidate([this.element])
      : dbValue = 'potential-candidate',
        super('potential-candidate', element);

  /// screening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.screening([this.element])
      : dbValue = 'screening',
        super('screening', element);

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchSubjectStatus.withdrawn([this.element])
      : dbValue = 'withdrawn',
        super('withdrawn', element);

  /// For instances where an Element is present but not value

  ResearchSubjectStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchSubjectStatus._(super.input, [super.element])
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
    'candidate',
    'eligible',
    'follow-up',
    'ineligible',
    'not-registered',
    'off-study',
    'on-study',
    'on-study-intervention',
    'on-study-observation',
    'pending-on-study',
    'potential-candidate',
    'screening',
    'withdrawn',
  ];

  /// Returns the enum value with an element attached
  ResearchSubjectStatus withElement(Element? newElement) {
    return ResearchSubjectStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchSubjectStatus.$value';
}
