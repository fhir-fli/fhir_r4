// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
@collection
class ProcedureCategoryCodesSNOMEDCT {
  /// Constructor for internal use (like enum)
  ProcedureCategoryCodesSNOMEDCT({this.fhirCode, this.element})
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

  /// ProcedureCategoryCodesSNOMEDCT values
  /// value24642003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value24642003 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '24642003',
  );

  /// value409063005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value409063005 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '409063005',
  );

  /// value409073007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value409073007 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '409073007',
  );

  /// value387713003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value387713003 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '387713003',
  );

  /// value103693007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value103693007 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '103693007',
  );

  /// value46947000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value46947000 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '46947000',
  );

  /// value410606002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProcedureCategoryCodesSNOMEDCT value410606002 =
      ProcedureCategoryCodesSNOMEDCT(
    fhirCode: '410606002',
  );

  /// For instances where an Element is present but not value

  static final ProcedureCategoryCodesSNOMEDCT elementOnly =
      ProcedureCategoryCodesSNOMEDCT();

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
    return ProcedureCategoryCodesSNOMEDCT(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProcedureCategoryCodesSNOMEDCT] from JSON.
  static ProcedureCategoryCodesSNOMEDCT fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureCategoryCodesSNOMEDCT.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcedureCategoryCodesSNOMEDCT.$fhirCode';
}
