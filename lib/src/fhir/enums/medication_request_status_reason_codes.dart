// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Reason Codes
class MedicationRequestStatusReasonCodes {
  // Private constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationRequestStatusReasonCodes] from JSON.
  factory MedicationRequestStatusReasonCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return MedicationRequestStatusReasonCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationRequestStatusReasonCodes values
  /// altchoice
  static final MedicationRequestStatusReasonCodes altchoice =
      MedicationRequestStatusReasonCodes._(
    'altchoice',
  );

  /// clarif
  static final MedicationRequestStatusReasonCodes clarif =
      MedicationRequestStatusReasonCodes._(
    'clarif',
  );

  /// drughigh
  static final MedicationRequestStatusReasonCodes drughigh =
      MedicationRequestStatusReasonCodes._(
    'drughigh',
  );

  /// hospadm
  static final MedicationRequestStatusReasonCodes hospadm =
      MedicationRequestStatusReasonCodes._(
    'hospadm',
  );

  /// labint
  static final MedicationRequestStatusReasonCodes labint =
      MedicationRequestStatusReasonCodes._(
    'labint',
  );

  /// non_avail
  static final MedicationRequestStatusReasonCodes non_avail =
      MedicationRequestStatusReasonCodes._(
    'non-avail',
  );

  /// preg
  static final MedicationRequestStatusReasonCodes preg =
      MedicationRequestStatusReasonCodes._(
    'preg',
  );

  /// salg
  static final MedicationRequestStatusReasonCodes salg =
      MedicationRequestStatusReasonCodes._(
    'salg',
  );

  /// sddi
  static final MedicationRequestStatusReasonCodes sddi =
      MedicationRequestStatusReasonCodes._(
    'sddi',
  );

  /// sdupther
  static final MedicationRequestStatusReasonCodes sdupther =
      MedicationRequestStatusReasonCodes._(
    'sdupther',
  );

  /// sintol
  static final MedicationRequestStatusReasonCodes sintol =
      MedicationRequestStatusReasonCodes._(
    'sintol',
  );

  /// surg
  static final MedicationRequestStatusReasonCodes surg =
      MedicationRequestStatusReasonCodes._(
    'surg',
  );

  /// washout
  static final MedicationRequestStatusReasonCodes washout =
      MedicationRequestStatusReasonCodes._(
    'washout',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestStatusReasonCodes elementOnly =
      MedicationRequestStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<MedicationRequestStatusReasonCodes> values = [
    altchoice,
    clarif,
    drughigh,
    hospadm,
    labint,
    non_avail,
    preg,
    salg,
    sddi,
    sdupther,
    sintol,
    surg,
    washout,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestStatusReasonCodes withElement(Element? newElement) {
    return MedicationRequestStatusReasonCodes._(fhirCode, element: newElement);
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
