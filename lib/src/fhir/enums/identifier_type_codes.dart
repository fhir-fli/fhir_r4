// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
@collection
class IdentifierTypeCodes {
  /// Constructor for internal use (like enum)
  IdentifierTypeCodes({this.fhirCode, this.element})
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

  /// IdentifierTypeCodes values
  /// DL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes DL = IdentifierTypeCodes(
    fhirCode: 'DL',
  );

  /// PPN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PPN = IdentifierTypeCodes(
    fhirCode: 'PPN',
  );

  /// BRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes BRN = IdentifierTypeCodes(
    fhirCode: 'BRN',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MR = IdentifierTypeCodes(
    fhirCode: 'MR',
  );

  /// MCN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MCN = IdentifierTypeCodes(
    fhirCode: 'MCN',
  );

  /// EN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes EN = IdentifierTypeCodes(
    fhirCode: 'EN',
  );

  /// TAX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes TAX = IdentifierTypeCodes(
    fhirCode: 'TAX',
  );

  /// NIIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes NIIP = IdentifierTypeCodes(
    fhirCode: 'NIIP',
  );

  /// PRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PRN = IdentifierTypeCodes(
    fhirCode: 'PRN',
  );

  /// MD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MD = IdentifierTypeCodes(
    fhirCode: 'MD',
  );

  /// DR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes DR = IdentifierTypeCodes(
    fhirCode: 'DR',
  );

  /// ACSN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes ACSN = IdentifierTypeCodes(
    fhirCode: 'ACSN',
  );

  /// UDI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes UDI = IdentifierTypeCodes(
    fhirCode: 'UDI',
  );

  /// SNO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes SNO = IdentifierTypeCodes(
    fhirCode: 'SNO',
  );

  /// SB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes SB = IdentifierTypeCodes(
    fhirCode: 'SB',
  );

  /// PLAC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PLAC = IdentifierTypeCodes(
    fhirCode: 'PLAC',
  );

  /// FILL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes FILL = IdentifierTypeCodes(
    fhirCode: 'FILL',
  );

  /// JHN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes JHN = IdentifierTypeCodes(
    fhirCode: 'JHN',
  );

  /// For instances where an Element is present but not value

  static final IdentifierTypeCodes elementOnly = IdentifierTypeCodes();

  /// List of all enum-like values
  static final List<IdentifierTypeCodes> values = [
    DL,
    PPN,
    BRN,
    MR,
    MCN,
    EN,
    TAX,
    NIIP,
    PRN,
    MD,
    DR,
    ACSN,
    UDI,
    SNO,
    SB,
    PLAC,
    FILL,
    JHN,
  ];

  /// Returns the enum value with an element attached
  IdentifierTypeCodes withElement(Element? newElement) {
    return IdentifierTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IdentifierTypeCodes] from JSON.
  static IdentifierTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly.withElement(element);
    }
    return IdentifierTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentifierTypeCodes.$fhirCode';
}
