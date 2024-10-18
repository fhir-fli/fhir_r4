// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes CoverageEligibilityResponse Auth Support codes.
enum CoverageEligibilityResponseAuthSupportCodes {
  /// Display: Lab Order
  /// Definition: A request or authorization for laboratory diagnostic tests.
  laborder('laborder'),

  /// Display: Lab Report
  /// Definition: A report on laboratory diagnostic test(s).
  labreport('labreport'),

  /// Display: Diagnostic Image Order
  /// Definition: A request or authorization for diagnostic imaging.
  diagnosticimageorder('diagnosticimageorder'),

  /// Display: Diagnostic Image Report
  /// Definition: A report on diagnostic image(s).
  diagnosticimagereport('diagnosticimagereport'),

  /// Display: Professional Report
  /// Definition: A report from a licensed professional regarding the siutation, condition or proposed treatment.
  professionalreport('professionalreport'),

  /// Display: Accident Report
  /// Definition: A formal accident report as would be filed with police or a simlar official body.
  accidentreport('accidentreport'),

  /// Display: Model
  /// Definition: A physical model of the affected area.
  model('model'),

  /// Display: Picture
  /// Definition: A photograph of the affected area.
  picture('picture'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CoverageEligibilityResponseAuthSupportCodes(this.fhirCode,
      [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CoverageEligibilityResponseAuthSupportCodes] instances.
  static CoverageEligibilityResponseAuthSupportCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageEligibilityResponseAuthSupportCodes.elementOnly
          .withElement(
        element,
      );
    }
    return CoverageEligibilityResponseAuthSupportCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CoverageEligibilityResponseAuthSupportCodes withElement(Element? newElement) {
    return CoverageEligibilityResponseAuthSupportCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
