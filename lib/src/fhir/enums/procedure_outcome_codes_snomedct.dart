// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
class ProcedureOutcomeCodesSNOMEDCT {
  // Private constructor for internal use (like enum)
  ProcedureOutcomeCodesSNOMEDCT._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProcedureOutcomeCodesSNOMEDCT values
  /// value385669000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385669000 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385669000',
  );

  /// value385671000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385671000 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385671000',
  );

  /// value385670004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureOutcomeCodesSNOMEDCT value385670004 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385670004',
  );

  /// For instances where an Element is present but not value

  static final ProcedureOutcomeCodesSNOMEDCT elementOnly =
      ProcedureOutcomeCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureOutcomeCodesSNOMEDCT> values = [
    value385669000,
    value385671000,
    value385670004,
  ];

  /// Returns the enum value with an element attached
  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return ProcedureOutcomeCodesSNOMEDCT._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
