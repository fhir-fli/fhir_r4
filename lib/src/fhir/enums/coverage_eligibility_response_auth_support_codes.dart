// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes CoverageEligibilityResponse Auth Support codes.
class CoverageEligibilityResponseAuthSupportCodes {
  // Private constructor for internal use (like enum)
  CoverageEligibilityResponseAuthSupportCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [CoverageEligibilityResponseAuthSupportCodes] from JSON.
  factory CoverageEligibilityResponseAuthSupportCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageEligibilityResponseAuthSupportCodes.elementOnly
          .withElement(element);
    }
    return CoverageEligibilityResponseAuthSupportCodes._(value!,
        element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CoverageEligibilityResponseAuthSupportCodes values
  /// laborder
  static final CoverageEligibilityResponseAuthSupportCodes laborder =
      CoverageEligibilityResponseAuthSupportCodes._(
    'laborder',
  );

  /// labreport
  static final CoverageEligibilityResponseAuthSupportCodes labreport =
      CoverageEligibilityResponseAuthSupportCodes._(
    'labreport',
  );

  /// diagnosticimageorder
  static final CoverageEligibilityResponseAuthSupportCodes
      diagnosticimageorder = CoverageEligibilityResponseAuthSupportCodes._(
    'diagnosticimageorder',
  );

  /// diagnosticimagereport
  static final CoverageEligibilityResponseAuthSupportCodes
      diagnosticimagereport = CoverageEligibilityResponseAuthSupportCodes._(
    'diagnosticimagereport',
  );

  /// professionalreport
  static final CoverageEligibilityResponseAuthSupportCodes professionalreport =
      CoverageEligibilityResponseAuthSupportCodes._(
    'professionalreport',
  );

  /// accidentreport
  static final CoverageEligibilityResponseAuthSupportCodes accidentreport =
      CoverageEligibilityResponseAuthSupportCodes._(
    'accidentreport',
  );

  /// model
  static final CoverageEligibilityResponseAuthSupportCodes model =
      CoverageEligibilityResponseAuthSupportCodes._(
    'model',
  );

  /// picture
  static final CoverageEligibilityResponseAuthSupportCodes picture =
      CoverageEligibilityResponseAuthSupportCodes._(
    'picture',
  );

  /// For instances where an Element is present but not value

  static final CoverageEligibilityResponseAuthSupportCodes elementOnly =
      CoverageEligibilityResponseAuthSupportCodes._('');

  /// List of all enum-like values
  static final List<CoverageEligibilityResponseAuthSupportCodes> values = [
    laborder,
    labreport,
    diagnosticimageorder,
    diagnosticimagereport,
    professionalreport,
    accidentreport,
    model,
    picture,
  ];

  /// Returns the enum value with an element attached
  CoverageEligibilityResponseAuthSupportCodes withElement(Element? newElement) {
    return CoverageEligibilityResponseAuthSupportCodes._(fhirCode,
        element: newElement);
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
