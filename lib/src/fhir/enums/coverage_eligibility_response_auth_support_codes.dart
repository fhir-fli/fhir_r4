// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes CoverageEligibilityResponse Auth Support codes.
@collection
class CoverageEligibilityResponseAuthSupportCodes {
  /// Constructor for internal use (like enum)
  CoverageEligibilityResponseAuthSupportCodes({this.fhirCode, this.element})
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

  /// CoverageEligibilityResponseAuthSupportCodes values
  /// laborder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes laborder =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'laborder',
  );

  /// labreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes labreport =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'labreport',
  );

  /// diagnosticimageorder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes
      diagnosticimageorder = CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'diagnosticimageorder',
  );

  /// diagnosticimagereport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes
      diagnosticimagereport = CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'diagnosticimagereport',
  );

  /// professionalreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes professionalreport =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'professionalreport',
  );

  /// accidentreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes accidentreport =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'accidentreport',
  );

  /// model
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes model =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'model',
  );

  /// picture
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageEligibilityResponseAuthSupportCodes picture =
      CoverageEligibilityResponseAuthSupportCodes(
    fhirCode: 'picture',
  );

  /// For instances where an Element is present but not value

  static final CoverageEligibilityResponseAuthSupportCodes elementOnly =
      CoverageEligibilityResponseAuthSupportCodes();

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
    return CoverageEligibilityResponseAuthSupportCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CoverageEligibilityResponseAuthSupportCodes] from JSON.
  static CoverageEligibilityResponseAuthSupportCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageEligibilityResponseAuthSupportCodes.elementOnly
          .withElement(element);
    }
    return CoverageEligibilityResponseAuthSupportCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageEligibilityResponseAuthSupportCodes.$fhirCode';
}
