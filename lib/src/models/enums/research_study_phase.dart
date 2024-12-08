// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
class ResearchStudyPhase extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ResearchStudyPhase._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ResearchStudyPhase] from JSON.
  factory ResearchStudyPhase.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPhase.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyPhase cannot be constructed from JSON.',
      );
    }
    return ResearchStudyPhase._(value, element: element);
  }

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

  /// Clones the current instance
  @override
  ResearchStudyPhase clone() => ResearchStudyPhase._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchStudyPhase withElement(Element? newElement) {
    return ResearchStudyPhase._(value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ResearchStudyPhase copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ResearchStudyPhase._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
