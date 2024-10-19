// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
class IdentifierTypeCodes {
  // Private constructor for internal use (like enum)
  IdentifierTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IdentifierTypeCodes values
  /// DL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes DL = IdentifierTypeCodes._(
    'DL',
  );

  /// PPN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PPN = IdentifierTypeCodes._(
    'PPN',
  );

  /// BRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes BRN = IdentifierTypeCodes._(
    'BRN',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MR = IdentifierTypeCodes._(
    'MR',
  );

  /// MCN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MCN = IdentifierTypeCodes._(
    'MCN',
  );

  /// EN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes EN = IdentifierTypeCodes._(
    'EN',
  );

  /// TAX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes TAX = IdentifierTypeCodes._(
    'TAX',
  );

  /// NIIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes NIIP = IdentifierTypeCodes._(
    'NIIP',
  );

  /// PRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PRN = IdentifierTypeCodes._(
    'PRN',
  );

  /// MD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes MD = IdentifierTypeCodes._(
    'MD',
  );

  /// DR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes DR = IdentifierTypeCodes._(
    'DR',
  );

  /// ACSN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes ACSN = IdentifierTypeCodes._(
    'ACSN',
  );

  /// UDI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes UDI = IdentifierTypeCodes._(
    'UDI',
  );

  /// SNO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes SNO = IdentifierTypeCodes._(
    'SNO',
  );

  /// SB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes SB = IdentifierTypeCodes._(
    'SB',
  );

  /// PLAC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes PLAC = IdentifierTypeCodes._(
    'PLAC',
  );

  /// FILL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes FILL = IdentifierTypeCodes._(
    'FILL',
  );

  /// JHN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierTypeCodes JHN = IdentifierTypeCodes._(
    'JHN',
  );

  /// For instances where an Element is present but not value

  static final IdentifierTypeCodes elementOnly = IdentifierTypeCodes._('');

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
    return IdentifierTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
