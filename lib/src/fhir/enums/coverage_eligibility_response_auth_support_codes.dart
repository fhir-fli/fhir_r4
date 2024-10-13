/// This value set includes CoverageEligibilityResponse Auth Support codes.
enum CoverageEligibilityResponseAuthSupportCodes {
  /// Display: Lab Order
  /// Definition: A request or authorization for laboratory diagnostic tests.
  laborder,

  /// Display: Lab Report
  /// Definition: A report on laboratory diagnostic test(s).
  labreport,

  /// Display: Diagnostic Image Order
  /// Definition: A request or authorization for diagnostic imaging.
  diagnosticimageorder,

  /// Display: Diagnostic Image Report
  /// Definition: A report on diagnostic image(s).
  diagnosticimagereport,

  /// Display: Professional Report
  /// Definition: A report from a licensed professional regarding the siutation, condition or proposed treatment.
  professionalreport,

  /// Display: Accident Report
  /// Definition: A formal accident report as would be filed with police or a simlar official body.
  accidentreport,

  /// Display: Model
  /// Definition: A physical model of the affected area.
  model,

  /// Display: Picture
  /// Definition: A photograph of the affected area.
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

  /// Returns a [String] from a [CoverageEligibilityResponseAuthSupportCodes] enum.
  String toJson() => toString();

  /// Returns a [CoverageEligibilityResponseAuthSupportCodes] from a [String] enum.
  static CoverageEligibilityResponseAuthSupportCodes fromString(String str) {
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

  /// Returns a [CoverageEligibilityResponseAuthSupportCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CoverageEligibilityResponseAuthSupportCodes fromJson(
      dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
