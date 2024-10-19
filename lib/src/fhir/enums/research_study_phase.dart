// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
@Entity()
class ResearchStudyPhase extends FhirCode {
  /// Factory constructor to create [ResearchStudyPhase] from JSON.
  factory ResearchStudyPhase.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPhase.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchStudyPhase._(value, element);
    }
    throw ArgumentError(
      'ResearchStudyPhase.fromJson: JSON value is not a valid value',
    );
  }

  /// n_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.n_a([this.element])
      : dbValue = 'n-a',
        super('n-a', element);

  /// early_phase_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.early_phase_1([this.element])
      : dbValue = 'early-phase-1',
        super('early-phase-1', element);

  /// phase_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_1([this.element])
      : dbValue = 'phase-1',
        super('phase-1', element);

  /// phase_1_phase_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_1_phase_2([this.element])
      : dbValue = 'phase-1-phase-2',
        super('phase-1-phase-2', element);

  /// phase_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_2([this.element])
      : dbValue = 'phase-2',
        super('phase-2', element);

  /// phase_2_phase_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_2_phase_3([this.element])
      : dbValue = 'phase-2-phase-3',
        super('phase-2-phase-3', element);

  /// phase_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_3([this.element])
      : dbValue = 'phase-3',
        super('phase-3', element);

  /// phase_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyPhase.phase_4([this.element])
      : dbValue = 'phase-4',
        super('phase-4', element);

  /// For instances where an Element is present but not value

  ResearchStudyPhase.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchStudyPhase._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'n-a',
    'early-phase-1',
    'phase-1',
    'phase-1-phase-2',
    'phase-2',
    'phase-2-phase-3',
    'phase-3',
    'phase-4',
  ];

  /// Returns the enum value with an element attached
  ResearchStudyPhase withElement(Element? newElement) {
    return ResearchStudyPhase._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyPhase.$value';
}
