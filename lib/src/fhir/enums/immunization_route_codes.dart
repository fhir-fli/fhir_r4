// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
@collection
class ImmunizationRouteCodes {
  /// Constructor for internal use (like enum)
  ImmunizationRouteCodes({this.fhirCode, this.element})
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

  /// ImmunizationRouteCodes values
  /// IDINJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes IDINJ = ImmunizationRouteCodes(
    fhirCode: 'IDINJ',
  );

  /// IM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes IM = ImmunizationRouteCodes(
    fhirCode: 'IM',
  );

  /// NASINHLC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes NASINHLC = ImmunizationRouteCodes(
    fhirCode: 'NASINHLC',
  );

  /// IVINJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes IVINJ = ImmunizationRouteCodes(
    fhirCode: 'IVINJ',
  );

  /// PO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes PO = ImmunizationRouteCodes(
    fhirCode: 'PO',
  );

  /// SQ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes SQ = ImmunizationRouteCodes(
    fhirCode: 'SQ',
  );

  /// TRNSDERM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRouteCodes TRNSDERM = ImmunizationRouteCodes(
    fhirCode: 'TRNSDERM',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRouteCodes elementOnly = ImmunizationRouteCodes();

  /// List of all enum-like values
  static final List<ImmunizationRouteCodes> values = [
    IDINJ,
    IM,
    NASINHLC,
    IVINJ,
    PO,
    SQ,
    TRNSDERM,
  ];

  /// Returns the enum value with an element attached
  ImmunizationRouteCodes withElement(Element? newElement) {
    return ImmunizationRouteCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationRouteCodes] from JSON.
  static ImmunizationRouteCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRouteCodes.elementOnly.withElement(element);
    }
    return ImmunizationRouteCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRouteCodes.$fhirCode';
}
