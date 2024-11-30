// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the measure report.
class MeasureReportStatus {
  // Private constructor for internal use (like enum)
  MeasureReportStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureReportStatus values
  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportStatus complete = MeasureReportStatus._(
    'complete',
  );

  /// pending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportStatus pending = MeasureReportStatus._(
    'pending',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureReportStatus error = MeasureReportStatus._(
    'error',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportStatus elementOnly = MeasureReportStatus._('');

  /// List of all enum-like values
  static final List<MeasureReportStatus> values = [
    complete,
    pending,
    error,
  ];

  /// Returns the enum value with an element attached
  MeasureReportStatus withElement(Element? newElement) {
    return MeasureReportStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureReportStatus] from JSON.
  static MeasureReportStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatus.elementOnly.withElement(element);
    }
    return MeasureReportStatus._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
