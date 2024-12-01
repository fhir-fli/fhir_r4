// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
class ProcedureCategoryCodesSNOMEDCT {
  // Private constructor for internal use (like enum)
  ProcedureCategoryCodesSNOMEDCT._(this.fhirCode, {this.element});

  /// Factory constructor to create [ProcedureCategoryCodesSNOMEDCT] from JSON.
  factory ProcedureCategoryCodesSNOMEDCT.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureCategoryCodesSNOMEDCT._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProcedureCategoryCodesSNOMEDCT values
  /// value24642003
  static final ProcedureCategoryCodesSNOMEDCT value24642003 =
      ProcedureCategoryCodesSNOMEDCT._(
    '24642003',
  );

  /// value409063005
  static final ProcedureCategoryCodesSNOMEDCT value409063005 =
      ProcedureCategoryCodesSNOMEDCT._(
    '409063005',
  );

  /// value409073007
  static final ProcedureCategoryCodesSNOMEDCT value409073007 =
      ProcedureCategoryCodesSNOMEDCT._(
    '409073007',
  );

  /// value387713003
  static final ProcedureCategoryCodesSNOMEDCT value387713003 =
      ProcedureCategoryCodesSNOMEDCT._(
    '387713003',
  );

  /// value103693007
  static final ProcedureCategoryCodesSNOMEDCT value103693007 =
      ProcedureCategoryCodesSNOMEDCT._(
    '103693007',
  );

  /// value46947000
  static final ProcedureCategoryCodesSNOMEDCT value46947000 =
      ProcedureCategoryCodesSNOMEDCT._(
    '46947000',
  );

  /// value410606002
  static final ProcedureCategoryCodesSNOMEDCT value410606002 =
      ProcedureCategoryCodesSNOMEDCT._(
    '410606002',
  );

  /// For instances where an Element is present but not value

  static final ProcedureCategoryCodesSNOMEDCT elementOnly =
      ProcedureCategoryCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureCategoryCodesSNOMEDCT> values = [
    value24642003,
    value409063005,
    value409073007,
    value387713003,
    value103693007,
    value46947000,
    value410606002,
  ];

  /// Returns the enum value with an element attached
  ProcedureCategoryCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureCategoryCodesSNOMEDCT._(fhirCode, element: newElement);
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
