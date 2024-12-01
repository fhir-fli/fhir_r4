// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
class IdentifierTypeCodes {
  // Private constructor for internal use (like enum)
  IdentifierTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [IdentifierTypeCodes] from JSON.
  factory IdentifierTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly.withElement(element);
    }
    return IdentifierTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IdentifierTypeCodes values
  /// DL
  static final IdentifierTypeCodes DL = IdentifierTypeCodes._(
    'DL',
  );

  /// PPN
  static final IdentifierTypeCodes PPN = IdentifierTypeCodes._(
    'PPN',
  );

  /// BRN
  static final IdentifierTypeCodes BRN = IdentifierTypeCodes._(
    'BRN',
  );

  /// MR
  static final IdentifierTypeCodes MR = IdentifierTypeCodes._(
    'MR',
  );

  /// MCN
  static final IdentifierTypeCodes MCN = IdentifierTypeCodes._(
    'MCN',
  );

  /// EN
  static final IdentifierTypeCodes EN = IdentifierTypeCodes._(
    'EN',
  );

  /// TAX
  static final IdentifierTypeCodes TAX = IdentifierTypeCodes._(
    'TAX',
  );

  /// NIIP
  static final IdentifierTypeCodes NIIP = IdentifierTypeCodes._(
    'NIIP',
  );

  /// PRN
  static final IdentifierTypeCodes PRN = IdentifierTypeCodes._(
    'PRN',
  );

  /// MD
  static final IdentifierTypeCodes MD = IdentifierTypeCodes._(
    'MD',
  );

  /// DR
  static final IdentifierTypeCodes DR = IdentifierTypeCodes._(
    'DR',
  );

  /// ACSN
  static final IdentifierTypeCodes ACSN = IdentifierTypeCodes._(
    'ACSN',
  );

  /// UDI
  static final IdentifierTypeCodes UDI = IdentifierTypeCodes._(
    'UDI',
  );

  /// SNO
  static final IdentifierTypeCodes SNO = IdentifierTypeCodes._(
    'SNO',
  );

  /// SB
  static final IdentifierTypeCodes SB = IdentifierTypeCodes._(
    'SB',
  );

  /// PLAC
  static final IdentifierTypeCodes PLAC = IdentifierTypeCodes._(
    'PLAC',
  );

  /// FILL
  static final IdentifierTypeCodes FILL = IdentifierTypeCodes._(
    'FILL',
  );

  /// JHN
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

  /// String representation
  @override
  String toString() => fhirCode;
}
