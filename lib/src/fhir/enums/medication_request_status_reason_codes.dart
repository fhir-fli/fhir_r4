// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationRequest Status Reason Codes
@collection
class MedicationRequestStatusReasonCodes {
  /// Constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes({this.fhirCode, this.element})
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

  /// MedicationRequestStatusReasonCodes values
  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes altchoice =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'altchoice',
  );

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes clarif =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'clarif',
  );

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes drughigh =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'drughigh',
  );

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes hospadm =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'hospadm',
  );

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes labint =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'labint',
  );

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes non_avail =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'non-avail',
  );

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes preg =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'preg',
  );

  /// salg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes salg =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'salg',
  );

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sddi =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'sddi',
  );

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sdupther =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'sdupther',
  );

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes sintol =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'sintol',
  );

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes surg =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'surg',
  );

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestStatusReasonCodes washout =
      MedicationRequestStatusReasonCodes(
    fhirCode: 'washout',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestStatusReasonCodes elementOnly =
      MedicationRequestStatusReasonCodes();

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
    return MedicationRequestStatusReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestStatusReasonCodes.$fhirCode';
}
