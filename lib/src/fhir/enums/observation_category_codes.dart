// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Observation Category codes.
class ObservationCategoryCodes {
  // Private constructor for internal use (like enum)
  ObservationCategoryCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ObservationCategoryCodes] from JSON.
  factory ObservationCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationCategoryCodes.elementOnly.withElement(element);
    }
    return ObservationCategoryCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationCategoryCodes values
  /// social_history
  static final ObservationCategoryCodes social_history =
      ObservationCategoryCodes._(
    'social-history',
  );

  /// vital_signs
  static final ObservationCategoryCodes vital_signs =
      ObservationCategoryCodes._(
    'vital-signs',
  );

  /// imaging
  static final ObservationCategoryCodes imaging = ObservationCategoryCodes._(
    'imaging',
  );

  /// laboratory
  static final ObservationCategoryCodes laboratory = ObservationCategoryCodes._(
    'laboratory',
  );

  /// procedure
  static final ObservationCategoryCodes procedure = ObservationCategoryCodes._(
    'procedure',
  );

  /// survey
  static final ObservationCategoryCodes survey = ObservationCategoryCodes._(
    'survey',
  );

  /// exam
  static final ObservationCategoryCodes exam = ObservationCategoryCodes._(
    'exam',
  );

  /// therapy
  static final ObservationCategoryCodes therapy = ObservationCategoryCodes._(
    'therapy',
  );

  /// activity
  static final ObservationCategoryCodes activity = ObservationCategoryCodes._(
    'activity',
  );

  /// For instances where an Element is present but not value

  static final ObservationCategoryCodes elementOnly =
      ObservationCategoryCodes._('');

  /// List of all enum-like values
  static final List<ObservationCategoryCodes> values = [
    social_history,
    vital_signs,
    imaging,
    laboratory,
    procedure,
    survey,
    exam,
    therapy,
    activity,
  ];

  /// Returns the enum value with an element attached
  ObservationCategoryCodes withElement(Element? newElement) {
    return ObservationCategoryCodes._(fhirCode, element: newElement);
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
