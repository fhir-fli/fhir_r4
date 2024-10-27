// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure follow up codes: A selection of SNOMED CT codes relevant to procedure follow up.
class ProcedureFollowUpCodesSNOMEDCT {
  // Private constructor for internal use (like enum)
  ProcedureFollowUpCodesSNOMEDCT._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProcedureFollowUpCodesSNOMEDCT values
  /// value18949003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value18949003 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '18949003',
  );

  /// value30549001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value30549001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '30549001',
  );

  /// value241031001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value241031001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '241031001',
  );

  /// value35963001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value35963001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '35963001',
  );

  /// value225164002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value225164002 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '225164002',
  );

  /// value447346005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value447346005 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '447346005',
  );

  /// value229506003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value229506003 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '229506003',
  );

  /// value274441001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value274441001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '274441001',
  );

  /// value394725008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value394725008 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '394725008',
  );

  /// value359825008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureFollowUpCodesSNOMEDCT value359825008 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '359825008',
  );

  /// For instances where an Element is present but not value

  static final ProcedureFollowUpCodesSNOMEDCT elementOnly =
      ProcedureFollowUpCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureFollowUpCodesSNOMEDCT> values = [
    value18949003,
    value30549001,
    value241031001,
    value35963001,
    value225164002,
    value447346005,
    value229506003,
    value274441001,
    value394725008,
    value359825008,
  ];

  /// Returns the enum value with an element attached
  ProcedureFollowUpCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureFollowUpCodesSNOMEDCT._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProcedureFollowUpCodesSNOMEDCT] from JSON.
  static ProcedureFollowUpCodesSNOMEDCT fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureFollowUpCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureFollowUpCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
