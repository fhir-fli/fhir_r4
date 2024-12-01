// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the diagnostic report.
class DiagnosticReportStatus {
  // Private constructor for internal use (like enum)
  DiagnosticReportStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [DiagnosticReportStatus] from JSON.
  factory DiagnosticReportStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus.elementOnly.withElement(element);
    }
    return DiagnosticReportStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DiagnosticReportStatus values
  /// registered
  static final DiagnosticReportStatus registered = DiagnosticReportStatus._(
    'registered',
  );

  /// partial
  static final DiagnosticReportStatus partial = DiagnosticReportStatus._(
    'partial',
  );

  /// preliminary
  static final DiagnosticReportStatus preliminary = DiagnosticReportStatus._(
    'preliminary',
  );

  /// final_
  static final DiagnosticReportStatus final_ = DiagnosticReportStatus._(
    'final',
  );

  /// amended
  static final DiagnosticReportStatus amended = DiagnosticReportStatus._(
    'amended',
  );

  /// corrected
  static final DiagnosticReportStatus corrected = DiagnosticReportStatus._(
    'corrected',
  );

  /// appended
  static final DiagnosticReportStatus appended = DiagnosticReportStatus._(
    'appended',
  );

  /// cancelled
  static final DiagnosticReportStatus cancelled = DiagnosticReportStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final DiagnosticReportStatus entered_in_error =
      DiagnosticReportStatus._(
    'entered-in-error',
  );

  /// unknown
  static final DiagnosticReportStatus unknown = DiagnosticReportStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final DiagnosticReportStatus elementOnly =
      DiagnosticReportStatus._('');

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
    return DiagnosticReportStatus._(fhirCode, element: newElement);
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
