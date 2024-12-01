// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Stratification Value for MeasureReports Resource.
class MeasureReportStratifierValueExample {
  // Private constructor for internal use (like enum)
  MeasureReportStratifierValueExample._(this.fhirCode, {this.element});

  /// Factory constructor to create [MeasureReportStratifierValueExample] from JSON.
  factory MeasureReportStratifierValueExample.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStratifierValueExample.elementOnly
          .withElement(element);
    }
    return MeasureReportStratifierValueExample._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureReportStratifierValueExample values
  /// northwest
  static final MeasureReportStratifierValueExample northwest =
      MeasureReportStratifierValueExample._(
    'northwest',
  );

  /// northeast
  static final MeasureReportStratifierValueExample northeast =
      MeasureReportStratifierValueExample._(
    'northeast',
  );

  /// southwest
  static final MeasureReportStratifierValueExample southwest =
      MeasureReportStratifierValueExample._(
    'southwest',
  );

  /// southeast
  static final MeasureReportStratifierValueExample southeast =
      MeasureReportStratifierValueExample._(
    'southeast',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportStratifierValueExample elementOnly =
      MeasureReportStratifierValueExample._('');

  /// List of all enum-like values
  static final List<MeasureReportStratifierValueExample> values = [
    northwest,
    northeast,
    southwest,
    southeast,
  ];

  /// Returns the enum value with an element attached
  MeasureReportStratifierValueExample withElement(Element? newElement) {
    return MeasureReportStratifierValueExample._(fhirCode, element: newElement);
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
