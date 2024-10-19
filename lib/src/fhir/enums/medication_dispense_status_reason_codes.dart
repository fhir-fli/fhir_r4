// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationDispense Status Codes
@collection
class MedicationDispenseStatusReasonCodes {
  /// Constructor for internal use (like enum)
  MedicationDispenseStatusReasonCodes({this.fhirCode, this.element})
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

  /// MedicationDispenseStatusReasonCodes values
  /// frr01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr01 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr01',
  );

  /// frr02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr02 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr02',
  );

  /// frr03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr03 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr03',
  );

  /// frr04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr04 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr04',
  );

  /// frr05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr05 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr05',
  );

  /// frr06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes frr06 =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'frr06',
  );

  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes altchoice =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'altchoice',
  );

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes clarif =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'clarif',
  );

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes drughigh =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'drughigh',
  );

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes hospadm =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'hospadm',
  );

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes labint =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'labint',
  );

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes non_avail =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'non-avail',
  );

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes preg =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'preg',
  );

  /// saig
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes saig =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'saig',
  );

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sddi =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'sddi',
  );

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sdupther =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'sdupther',
  );

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes sintol =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'sintol',
  );

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes surg =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'surg',
  );

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes washout =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'washout',
  );

  /// outofstock
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes outofstock =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'outofstock',
  );

  /// offmarket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusReasonCodes offmarket =
      MedicationDispenseStatusReasonCodes(
    fhirCode: 'offmarket',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusReasonCodes elementOnly =
      MedicationDispenseStatusReasonCodes();

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
    return MedicationDispenseStatusReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
