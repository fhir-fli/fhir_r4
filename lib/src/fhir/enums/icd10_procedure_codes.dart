// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample ICD-10 Procedure codes.
enum ICD10ProcedureCodes {
  /// Display: PROC-1
  /// Definition: Procedure 1
  value123001('123001'),

  /// Display: PROC-2
  /// Definition: Procedure 2
  value123002('123002'),

  /// Display: PROC-3
  /// Definition: Procedure 3
  value123003('123003'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ICD10ProcedureCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ICD10ProcedureCodes] instances.
  static ICD10ProcedureCodes fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ICD10ProcedureCodes withElement(Element? newElement) {
    return ICD10ProcedureCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
