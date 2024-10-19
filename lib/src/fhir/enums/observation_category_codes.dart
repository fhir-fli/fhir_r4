// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Observation Category codes.
@collection
class ObservationCategoryCodes {
  /// Constructor for internal use (like enum)
  ObservationCategoryCodes({this.fhirCode, this.element})
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

  /// ObservationCategoryCodes values
  /// social_history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes social_history =
      ObservationCategoryCodes(
    fhirCode: 'social-history',
  );

  /// vital_signs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes vital_signs = ObservationCategoryCodes(
    fhirCode: 'vital-signs',
  );

  /// imaging
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes imaging = ObservationCategoryCodes(
    fhirCode: 'imaging',
  );

  /// laboratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes laboratory = ObservationCategoryCodes(
    fhirCode: 'laboratory',
  );

  /// procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes procedure = ObservationCategoryCodes(
    fhirCode: 'procedure',
  );

  /// survey
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes survey = ObservationCategoryCodes(
    fhirCode: 'survey',
  );

  /// exam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes exam = ObservationCategoryCodes(
    fhirCode: 'exam',
  );

  /// therapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes therapy = ObservationCategoryCodes(
    fhirCode: 'therapy',
  );

  /// activity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationCategoryCodes activity = ObservationCategoryCodes(
    fhirCode: 'activity',
  );

  /// For instances where an Element is present but not value

  static final ObservationCategoryCodes elementOnly =
      ObservationCategoryCodes();

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
    return ObservationCategoryCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationCategoryCodes] from JSON.
  static ObservationCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationCategoryCodes.elementOnly.withElement(element);
    }
    return ObservationCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationCategoryCodes.$fhirCode';
}
