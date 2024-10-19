// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of the diagnostic report.
@collection
class DiagnosticReportStatus {
  /// Constructor for internal use (like enum)
  DiagnosticReportStatus({this.fhirCode, this.element})
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

  /// DiagnosticReportStatus values
  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus registered = DiagnosticReportStatus(
    fhirCode: 'registered',
  );

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus partial = DiagnosticReportStatus(
    fhirCode: 'partial',
  );

  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus preliminary = DiagnosticReportStatus(
    fhirCode: 'preliminary',
  );

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus final_ = DiagnosticReportStatus(
    fhirCode: 'final',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus amended = DiagnosticReportStatus(
    fhirCode: 'amended',
  );

  /// corrected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus corrected = DiagnosticReportStatus(
    fhirCode: 'corrected',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus appended = DiagnosticReportStatus(
    fhirCode: 'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus cancelled = DiagnosticReportStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus entered_in_error = DiagnosticReportStatus(
    fhirCode: 'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DiagnosticReportStatus unknown = DiagnosticReportStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final DiagnosticReportStatus elementOnly = DiagnosticReportStatus();

  /// List of all enum-like values
  static final List<DiagnosticReportStatus> values = [
    registered,
    partial,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DiagnosticReportStatus] from JSON.
  static DiagnosticReportStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus.elementOnly.withElement(element);
    }
    return DiagnosticReportStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiagnosticReportStatus.$fhirCode';
}
