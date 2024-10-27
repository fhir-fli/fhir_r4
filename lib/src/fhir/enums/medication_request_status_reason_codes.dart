// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Reason Codes
class MedicationRequestStatusReasonCodes {
  // Private constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationRequestStatusReasonCodes values
  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes altchoice =
      MedicationRequestStatusReasonCodes._(
    'altchoice',
  );

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes clarif =
      MedicationRequestStatusReasonCodes._(
    'clarif',
  );

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes drughigh =
      MedicationRequestStatusReasonCodes._(
    'drughigh',
  );

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes hospadm =
      MedicationRequestStatusReasonCodes._(
    'hospadm',
  );

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes labint =
      MedicationRequestStatusReasonCodes._(
    'labint',
  );

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes non_avail =
      MedicationRequestStatusReasonCodes._(
    'non-avail',
  );

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes preg =
      MedicationRequestStatusReasonCodes._(
    'preg',
  );

  /// salg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes salg =
      MedicationRequestStatusReasonCodes._(
    'salg',
  );

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sddi =
      MedicationRequestStatusReasonCodes._(
    'sddi',
  );

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sdupther =
      MedicationRequestStatusReasonCodes._(
    'sdupther',
  );

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sintol =
      MedicationRequestStatusReasonCodes._(
    'sintol',
  );

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes surg =
      MedicationRequestStatusReasonCodes._(
    'surg',
  );

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [MedicationRequestStatusReasonCodes] from JSON.
  static MedicationRequestStatusReasonCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return MedicationRequestStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
