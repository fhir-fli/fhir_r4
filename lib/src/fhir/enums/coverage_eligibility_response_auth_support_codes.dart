import 'package:json_annotation/json_annotation.dart';

/// This value set includes CoverageEligibilityResponse Auth Support codes.
enum CoverageEligibilityResponseAuthSupportCodes {
  /// Display: Lab Order
  /// Definition: A request or authorization for laboratory diagnostic tests.
  @JsonValue('laborder')
  laborder,

  /// Display: Lab Report
  /// Definition: A report on laboratory diagnostic test(s).
  @JsonValue('labreport')
  labreport,

  /// Display: Diagnostic Image Order
  /// Definition: A request or authorization for diagnostic imaging.
  @JsonValue('diagnosticimageorder')
  diagnosticimageorder,

  /// Display: Diagnostic Image Report
  /// Definition: A report on diagnostic image(s).
  @JsonValue('diagnosticimagereport')
  diagnosticimagereport,

  /// Display: Professional Report
  /// Definition: A report from a licensed professional regarding the siutation, condition or proposed treatment.
  @JsonValue('professionalreport')
  professionalreport,

  /// Display: Accident Report
  /// Definition: A formal accident report as would be filed with police or a simlar official body.
  @JsonValue('accidentreport')
  accidentreport,

  /// Display: Model
  /// Definition: A physical model of the affected area.
  @JsonValue('model')
  model,

  /// Display: Picture
  /// Definition: A photograph of the affected area.
  @JsonValue('picture')
  picture,
  ;

  @override
  String toString() {
    switch (this) {
      case laborder:
        return 'laborder';
      case labreport:
        return 'labreport';
      case diagnosticimageorder:
        return 'diagnosticimageorder';
      case diagnosticimagereport:
        return 'diagnosticimagereport';
      case professionalreport:
        return 'professionalreport';
      case accidentreport:
        return 'accidentreport';
      case model:
        return 'model';
      case picture:
        return 'picture';
    }
  }

  String toJson() => toString();
  CoverageEligibilityResponseAuthSupportCodes fromString(String str) {
    switch (str) {
      case 'laborder':
        return CoverageEligibilityResponseAuthSupportCodes.laborder;
      case 'labreport':
        return CoverageEligibilityResponseAuthSupportCodes.labreport;
      case 'diagnosticimageorder':
        return CoverageEligibilityResponseAuthSupportCodes.diagnosticimageorder;
      case 'diagnosticimagereport':
        return CoverageEligibilityResponseAuthSupportCodes
            .diagnosticimagereport;
      case 'professionalreport':
        return CoverageEligibilityResponseAuthSupportCodes.professionalreport;
      case 'accidentreport':
        return CoverageEligibilityResponseAuthSupportCodes.accidentreport;
      case 'model':
        return CoverageEligibilityResponseAuthSupportCodes.model;
      case 'picture':
        return CoverageEligibilityResponseAuthSupportCodes.picture;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  CoverageEligibilityResponseAuthSupportCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
