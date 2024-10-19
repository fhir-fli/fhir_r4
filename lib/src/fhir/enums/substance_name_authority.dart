// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An authority that officates substance names.
class SubstanceNameAuthority {
  // Private constructor for internal use (like enum)
  SubstanceNameAuthority._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceNameAuthority values
  /// BAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority BAN = SubstanceNameAuthority._(
    'BAN',
  );

  /// COSING
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority COSING = SubstanceNameAuthority._(
    'COSING',
  );

  /// Ph_Eur_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority Ph_Eur_ = SubstanceNameAuthority._(
    'Ph.Eur.',
  );

  /// FCC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority FCC = SubstanceNameAuthority._(
    'FCC',
  );

  /// INCI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority INCI = SubstanceNameAuthority._(
    'INCI',
  );

  /// INN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority INN = SubstanceNameAuthority._(
    'INN',
  );

  /// JAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority JAN = SubstanceNameAuthority._(
    'JAN',
  );

  /// JECFA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority JECFA = SubstanceNameAuthority._(
    'JECFA',
  );

  /// MARTINDALE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority MARTINDALE = SubstanceNameAuthority._(
    'MARTINDALE',
  );

  /// USAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority USAN = SubstanceNameAuthority._(
    'USAN',
  );

  /// USP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority USP = SubstanceNameAuthority._(
    'USP',
  );

  /// PHF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority PHF = SubstanceNameAuthority._(
    'PHF',
  );

  /// HAB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority HAB = SubstanceNameAuthority._(
    'HAB',
  );

  /// PhF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority PhF = SubstanceNameAuthority._(
    'PhF',
  );

  /// IUIS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameAuthority IUIS = SubstanceNameAuthority._(
    'IUIS',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameAuthority elementOnly =
      SubstanceNameAuthority._('');

  /// List of all enum-like values
  static final List<SubstanceNameAuthority> values = [
    BAN,
    COSING,
    Ph_Eur_,
    FCC,
    INCI,
    INN,
    JAN,
    JECFA,
    MARTINDALE,
    USAN,
    USP,
    PHF,
    HAB,
    PhF,
    IUIS,
  ];

  /// Returns the enum value with an element attached
  SubstanceNameAuthority withElement(Element? newElement) {
    return SubstanceNameAuthority._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceNameAuthority] from JSON.
  static SubstanceNameAuthority fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameAuthority.elementOnly.withElement(element);
    }
    return SubstanceNameAuthority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameAuthority.$fhirCode';
}
