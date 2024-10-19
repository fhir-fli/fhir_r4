// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes; HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the Social Security Administration; and other anticipated consent directives related to participation in a clinical trial, medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate (DNR); Physician Orders for Life-Sustaining Treatment (POLST)
@collection
class ConsentCategoryCodes {
  /// Constructor for internal use (like enum)
  ConsentCategoryCodes({this.fhirCode, this.element})
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

  /// ConsentCategoryCodes values
  /// acd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes acd = ConsentCategoryCodes(
    fhirCode: 'acd',
  );

  /// dnr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes dnr = ConsentCategoryCodes(
    fhirCode: 'dnr',
  );

  /// emrgonly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes emrgonly = ConsentCategoryCodes(
    fhirCode: 'emrgonly',
  );

  /// hcd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes hcd = ConsentCategoryCodes(
    fhirCode: 'hcd',
  );

  /// npp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes npp = ConsentCategoryCodes(
    fhirCode: 'npp',
  );

  /// polst
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes polst = ConsentCategoryCodes(
    fhirCode: 'polst',
  );

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes research = ConsentCategoryCodes(
    fhirCode: 'research',
  );

  /// rsdid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes rsdid = ConsentCategoryCodes(
    fhirCode: 'rsdid',
  );

  /// rsreid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes rsreid = ConsentCategoryCodes(
    fhirCode: 'rsreid',
  );

  /// value59284_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes value59284_0 = ConsentCategoryCodes(
    fhirCode: '59284-0',
  );

  /// value57016_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes value57016_8 = ConsentCategoryCodes(
    fhirCode: '57016-8',
  );

  /// value57017_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes value57017_6 = ConsentCategoryCodes(
    fhirCode: '57017-6',
  );

  /// value64292_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentCategoryCodes value64292_6 = ConsentCategoryCodes(
    fhirCode: '64292-6',
  );

  /// For instances where an Element is present but not value

  static final ConsentCategoryCodes elementOnly = ConsentCategoryCodes();

  /// List of all enum-like values
  static final List<ConsentCategoryCodes> values = [
    acd,
    dnr,
    emrgonly,
    hcd,
    npp,
    polst,
    research,
    rsdid,
    rsreid,
    value59284_0,
    value57016_8,
    value57017_6,
    value64292_6,
  ];

  /// Returns the enum value with an element attached
  ConsentCategoryCodes withElement(Element? newElement) {
    return ConsentCategoryCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentCategoryCodes] from JSON.
  static ConsentCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentCategoryCodes.elementOnly.withElement(element);
    }
    return ConsentCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentCategoryCodes.$fhirCode';
}
