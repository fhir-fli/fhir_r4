// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
class ResearchStudyPhase {
  // Private constructor for internal use (like enum)
  ResearchStudyPhase._(this.fhirCode, {this.element});

  /// Factory constructor to create [ResearchStudyPhase] from JSON.
  factory ResearchStudyPhase.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPhase.elementOnly.withElement(element);
    }
    return ResearchStudyPhase._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchStudyPhase values
  /// n_a
  static final ResearchStudyPhase n_a = ResearchStudyPhase._(
    'n-a',
  );

  /// early_phase_1
  static final ResearchStudyPhase early_phase_1 = ResearchStudyPhase._(
    'early-phase-1',
  );

  /// phase_1
  static final ResearchStudyPhase phase_1 = ResearchStudyPhase._(
    'phase-1',
  );

  /// phase_1_phase_2
  static final ResearchStudyPhase phase_1_phase_2 = ResearchStudyPhase._(
    'phase-1-phase-2',
  );

  /// phase_2
  static final ResearchStudyPhase phase_2 = ResearchStudyPhase._(
    'phase-2',
  );

  /// phase_2_phase_3
  static final ResearchStudyPhase phase_2_phase_3 = ResearchStudyPhase._(
    'phase-2-phase-3',
  );

  /// phase_3
  static final ResearchStudyPhase phase_3 = ResearchStudyPhase._(
    'phase-3',
  );

  /// phase_4
  static final ResearchStudyPhase phase_4 = ResearchStudyPhase._(
    'phase-4',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyPhase elementOnly = ResearchStudyPhase._('');

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
    return ResearchStudyPhase._(fhirCode, element: newElement);
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
