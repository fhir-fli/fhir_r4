// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Coverage Copayment Type codes.
class CoverageCopayTypeCodes {
  // Private constructor for internal use (like enum)
  CoverageCopayTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [CoverageCopayTypeCodes] from JSON.
  factory CoverageCopayTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageCopayTypeCodes.elementOnly.withElement(element);
    }
    return CoverageCopayTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CoverageCopayTypeCodes values
  /// gpvisit
  static final CoverageCopayTypeCodes gpvisit = CoverageCopayTypeCodes._(
    'gpvisit',
  );

  /// spvisit
  static final CoverageCopayTypeCodes spvisit = CoverageCopayTypeCodes._(
    'spvisit',
  );

  /// emergency
  static final CoverageCopayTypeCodes emergency = CoverageCopayTypeCodes._(
    'emergency',
  );

  /// inpthosp
  static final CoverageCopayTypeCodes inpthosp = CoverageCopayTypeCodes._(
    'inpthosp',
  );

  /// televisit
  static final CoverageCopayTypeCodes televisit = CoverageCopayTypeCodes._(
    'televisit',
  );

  /// urgentcare
  static final CoverageCopayTypeCodes urgentcare = CoverageCopayTypeCodes._(
    'urgentcare',
  );

  /// copaypct
  static final CoverageCopayTypeCodes copaypct = CoverageCopayTypeCodes._(
    'copaypct',
  );

  /// copay
  static final CoverageCopayTypeCodes copay = CoverageCopayTypeCodes._(
    'copay',
  );

  /// deductible
  static final CoverageCopayTypeCodes deductible = CoverageCopayTypeCodes._(
    'deductible',
  );

  /// maxoutofpocket
  static final CoverageCopayTypeCodes maxoutofpocket = CoverageCopayTypeCodes._(
    'maxoutofpocket',
  );

  /// For instances where an Element is present but not value

  static final CoverageCopayTypeCodes elementOnly =
      CoverageCopayTypeCodes._('');

  /// List of all enum-like values
  static final List<CoverageCopayTypeCodes> values = [
    gpvisit,
    spvisit,
    emergency,
    inpthosp,
    televisit,
    urgentcare,
    copaypct,
    copay,
    deductible,
    maxoutofpocket,
  ];

  /// Returns the enum value with an element attached
  CoverageCopayTypeCodes withElement(Element? newElement) {
    return CoverageCopayTypeCodes._(fhirCode, element: newElement);
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
