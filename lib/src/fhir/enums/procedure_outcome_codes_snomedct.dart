// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
@collection
class ProcedureOutcomeCodesSNOMEDCT {
  /// Constructor for internal use (like enum)
  ProcedureOutcomeCodesSNOMEDCT({this.fhirCode, this.element})
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

  /// ProcedureOutcomeCodesSNOMEDCT values
  /// value385669000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385669000 =
      ProcedureOutcomeCodesSNOMEDCT(
    fhirCode: '385669000',
  );

  /// value385671000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385671000 =
      ProcedureOutcomeCodesSNOMEDCT(
    fhirCode: '385671000',
  );

  /// value385670004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385670004 =
      ProcedureOutcomeCodesSNOMEDCT(
    fhirCode: '385670004',
  );

  /// For instances where an Element is present but not value

  static final ProcedureOutcomeCodesSNOMEDCT elementOnly =
      ProcedureOutcomeCodesSNOMEDCT();

  /// List of all enum-like values
  static final List<ProcedureOutcomeCodesSNOMEDCT> values = [
    value385669000,
    value385671000,
    value385670004,
  ];

  /// Returns the enum value with an element attached
  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProcedureOutcomeCodesSNOMEDCT] from JSON.
  static ProcedureOutcomeCodesSNOMEDCT fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureOutcomeCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureOutcomeCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcedureOutcomeCodesSNOMEDCT.$fhirCode';
}
