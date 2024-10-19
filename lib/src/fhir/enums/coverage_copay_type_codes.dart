// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Coverage Copayment Type codes.
@collection
class CoverageCopayTypeCodes {
  /// Constructor for internal use (like enum)
  CoverageCopayTypeCodes({this.fhirCode, this.element})
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

  /// CoverageCopayTypeCodes values
  /// gpvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes gpvisit = CoverageCopayTypeCodes(
    fhirCode: 'gpvisit',
  );

  /// spvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes spvisit = CoverageCopayTypeCodes(
    fhirCode: 'spvisit',
  );

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes emergency = CoverageCopayTypeCodes(
    fhirCode: 'emergency',
  );

  /// inpthosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes inpthosp = CoverageCopayTypeCodes(
    fhirCode: 'inpthosp',
  );

  /// televisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes televisit = CoverageCopayTypeCodes(
    fhirCode: 'televisit',
  );

  /// urgentcare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes urgentcare = CoverageCopayTypeCodes(
    fhirCode: 'urgentcare',
  );

  /// copaypct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes copaypct = CoverageCopayTypeCodes(
    fhirCode: 'copaypct',
  );

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes copay = CoverageCopayTypeCodes(
    fhirCode: 'copay',
  );

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes deductible = CoverageCopayTypeCodes(
    fhirCode: 'deductible',
  );

  /// maxoutofpocket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageCopayTypeCodes maxoutofpocket = CoverageCopayTypeCodes(
    fhirCode: 'maxoutofpocket',
  );

  /// For instances where an Element is present but not value

  static final CoverageCopayTypeCodes elementOnly = CoverageCopayTypeCodes();

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
    return CoverageCopayTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CoverageCopayTypeCodes] from JSON.
  static CoverageCopayTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageCopayTypeCodes.elementOnly.withElement(element);
    }
    return CoverageCopayTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageCopayTypeCodes.$fhirCode';
}
