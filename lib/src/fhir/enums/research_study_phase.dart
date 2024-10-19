// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
@collection
class ResearchStudyPhase {
  /// Constructor for internal use (like enum)
  ResearchStudyPhase({this.fhirCode, this.element})
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

  /// ResearchStudyPhase values
  /// n_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase n_a = ResearchStudyPhase(
    fhirCode: 'n-a',
  );

  /// early_phase_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase early_phase_1 = ResearchStudyPhase(
    fhirCode: 'early-phase-1',
  );

  /// phase_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_1 = ResearchStudyPhase(
    fhirCode: 'phase-1',
  );

  /// phase_1_phase_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_1_phase_2 = ResearchStudyPhase(
    fhirCode: 'phase-1-phase-2',
  );

  /// phase_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_2 = ResearchStudyPhase(
    fhirCode: 'phase-2',
  );

  /// phase_2_phase_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_2_phase_3 = ResearchStudyPhase(
    fhirCode: 'phase-2-phase-3',
  );

  /// phase_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_3 = ResearchStudyPhase(
    fhirCode: 'phase-3',
  );

  /// phase_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchStudyPhase phase_4 = ResearchStudyPhase(
    fhirCode: 'phase-4',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyPhase elementOnly = ResearchStudyPhase();

  /// List of all enum-like values
  static final List<ResearchStudyPhase> values = [
    n_a,
    early_phase_1,
    phase_1,
    phase_1_phase_2,
    phase_2,
    phase_2_phase_3,
    phase_3,
    phase_4,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyPhase withElement(Element? newElement) {
    return ResearchStudyPhase(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchStudyPhase] from JSON.
  static ResearchStudyPhase fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPhase.elementOnly.withElement(element);
    }
    return ResearchStudyPhase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyPhase.$fhirCode';
}
