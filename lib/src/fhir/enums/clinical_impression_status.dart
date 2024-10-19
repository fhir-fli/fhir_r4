// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes that reflect the current state of a clinical impression within its overall lifecycle.
@collection
class ClinicalImpressionStatus {
  /// Constructor for internal use (like enum)
  ClinicalImpressionStatus({this.fhirCode, this.element})
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

  /// ClinicalImpressionStatus values
  /// preparation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus preparation = ClinicalImpressionStatus(
    fhirCode: 'preparation',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus in_progress = ClinicalImpressionStatus(
    fhirCode: 'in-progress',
  );

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus not_done = ClinicalImpressionStatus(
    fhirCode: 'not-done',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus on_hold = ClinicalImpressionStatus(
    fhirCode: 'on-hold',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus stopped = ClinicalImpressionStatus(
    fhirCode: 'stopped',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus completed = ClinicalImpressionStatus(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus entered_in_error =
      ClinicalImpressionStatus(
    fhirCode: 'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClinicalImpressionStatus unknown = ClinicalImpressionStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final ClinicalImpressionStatus elementOnly =
      ClinicalImpressionStatus();

  /// List of all enum-like values
  static final List<ClinicalImpressionStatus> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ClinicalImpressionStatus withElement(Element? newElement) {
    return ClinicalImpressionStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ClinicalImpressionStatus] from JSON.
  static ClinicalImpressionStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatus.elementOnly.withElement(element);
    }
    return ClinicalImpressionStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClinicalImpressionStatus.$fhirCode';
}
