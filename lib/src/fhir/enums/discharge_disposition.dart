// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
@collection
class DischargeDisposition {
  /// Constructor for internal use (like enum)
  DischargeDisposition({this.fhirCode, this.element})
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

  /// DischargeDisposition values
  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition home = DischargeDisposition(
    fhirCode: 'home',
  );

  /// alt_home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition alt_home = DischargeDisposition(
    fhirCode: 'alt-home',
  );

  /// other_hcf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition other_hcf = DischargeDisposition(
    fhirCode: 'other-hcf',
  );

  /// hosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition hosp = DischargeDisposition(
    fhirCode: 'hosp',
  );

  /// long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition long = DischargeDisposition(
    fhirCode: 'long',
  );

  /// aadvice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition aadvice = DischargeDisposition(
    fhirCode: 'aadvice',
  );

  /// exp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition exp = DischargeDisposition(
    fhirCode: 'exp',
  );

  /// psy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition psy = DischargeDisposition(
    fhirCode: 'psy',
  );

  /// rehab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition rehab = DischargeDisposition(
    fhirCode: 'rehab',
  );

  /// snf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition snf = DischargeDisposition(
    fhirCode: 'snf',
  );

  /// oth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition oth = DischargeDisposition(
    fhirCode: 'oth',
  );

  /// For instances where an Element is present but not value

  static final DischargeDisposition elementOnly = DischargeDisposition();

  /// List of all enum-like values
  static final List<DischargeDisposition> values = [
    home,
    alt_home,
    other_hcf,
    hosp,
    long,
    aadvice,
    exp,
    psy,
    rehab,
    snf,
    oth,
  ];

  /// Returns the enum value with an element attached
  DischargeDisposition withElement(Element? newElement) {
    return DischargeDisposition(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DischargeDisposition] from JSON.
  static DischargeDisposition fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DischargeDisposition.elementOnly.withElement(element);
    }
    return DischargeDisposition.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DischargeDisposition.$fhirCode';
}
