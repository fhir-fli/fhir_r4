// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample ICD-10 Procedure codes.
@collection
class ICD10ProcedureCodes {
  /// Constructor for internal use (like enum)
  ICD10ProcedureCodes({this.fhirCode, this.element})
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

  /// ICD10ProcedureCodes values
  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ICD10ProcedureCodes value123001 = ICD10ProcedureCodes(
    fhirCode: '123001',
  );

  /// value123002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ICD10ProcedureCodes value123002 = ICD10ProcedureCodes(
    fhirCode: '123002',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ICD10ProcedureCodes value123003 = ICD10ProcedureCodes(
    fhirCode: '123003',
  );

  /// For instances where an Element is present but not value

  static final ICD10ProcedureCodes elementOnly = ICD10ProcedureCodes();

  /// List of all enum-like values
  static final List<ICD10ProcedureCodes> values = [
    value123001,
    value123002,
    value123003,
  ];

  /// Returns the enum value with an element attached
  ICD10ProcedureCodes withElement(Element? newElement) {
    return ICD10ProcedureCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ICD10ProcedureCodes] from JSON.
  static ICD10ProcedureCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ICD10ProcedureCodes.elementOnly.withElement(element);
    }
    return ICD10ProcedureCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ICD10ProcedureCodes.$fhirCode';
}
