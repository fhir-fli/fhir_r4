// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusReasonCodes {
  // Private constructor for internal use (like enum)
  MedicationDispenseStatusReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationDispenseStatusReasonCodes values
  /// frr01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr01 =
      MedicationDispenseStatusReasonCodes._(
    'frr01',
  );

  /// frr02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr02 =
      MedicationDispenseStatusReasonCodes._(
    'frr02',
  );

  /// frr03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr03 =
      MedicationDispenseStatusReasonCodes._(
    'frr03',
  );

  /// frr04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr04 =
      MedicationDispenseStatusReasonCodes._(
    'frr04',
  );

  /// frr05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr05 =
      MedicationDispenseStatusReasonCodes._(
    'frr05',
  );

  /// frr06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr06 =
      MedicationDispenseStatusReasonCodes._(
    'frr06',
  );

  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes altchoice =
      MedicationDispenseStatusReasonCodes._(
    'altchoice',
  );

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes clarif =
      MedicationDispenseStatusReasonCodes._(
    'clarif',
  );

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes drughigh =
      MedicationDispenseStatusReasonCodes._(
    'drughigh',
  );

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes hospadm =
      MedicationDispenseStatusReasonCodes._(
    'hospadm',
  );

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes labint =
      MedicationDispenseStatusReasonCodes._(
    'labint',
  );

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes non_avail =
      MedicationDispenseStatusReasonCodes._(
    'non-avail',
  );

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes preg =
      MedicationDispenseStatusReasonCodes._(
    'preg',
  );

  /// saig
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes saig =
      MedicationDispenseStatusReasonCodes._(
    'saig',
  );

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sddi =
      MedicationDispenseStatusReasonCodes._(
    'sddi',
  );

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sdupther =
      MedicationDispenseStatusReasonCodes._(
    'sdupther',
  );

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sintol =
      MedicationDispenseStatusReasonCodes._(
    'sintol',
  );

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes surg =
      MedicationDispenseStatusReasonCodes._(
    'surg',
  );

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes washout =
      MedicationDispenseStatusReasonCodes._(
    'washout',
  );

  /// outofstock
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes outofstock =
      MedicationDispenseStatusReasonCodes._(
    'outofstock',
  );

  /// offmarket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes offmarket =
      MedicationDispenseStatusReasonCodes._(
    'offmarket',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusReasonCodes elementOnly =
      MedicationDispenseStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<MedicationDispenseStatusReasonCodes> values = [
    frr01,
    frr02,
    frr03,
    frr04,
    frr05,
    frr06,
    altchoice,
    clarif,
    drughigh,
    hospadm,
    labint,
    non_avail,
    preg,
    saig,
    sddi,
    sdupther,
    sintol,
    surg,
    washout,
    outofstock,
    offmarket,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusReasonCodes withElement(Element? newElement) {
    return MedicationDispenseStatusReasonCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationDispenseStatusReasonCodes] from JSON.
  static MedicationDispenseStatusReasonCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return MedicationDispenseStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseStatusReasonCodes.$fhirCode';
}
