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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CoverageEligibilityResponseAuthSupportCodes(this.fhirCode,
      [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CoverageEligibilityResponseAuthSupportCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageEligibilityResponseAuthSupportCodes.elementOnly
          .withElement(element);
    }
    return CoverageEligibilityResponseAuthSupportCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CoverageEligibilityResponseAuthSupportCodes withElement(Element? newElement) {
    return CoverageEligibilityResponseAuthSupportCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
