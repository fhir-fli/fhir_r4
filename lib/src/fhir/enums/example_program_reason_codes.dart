// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Program Reason Span codes.
enum ExampleProgramReasonCodes {
  /// Display: Child Asthma
  /// Definition: Child Asthma Program
  as_('as'),

  /// Display: Hemodialysis
  /// Definition: Hemodialysis Program.
  hd('hd'),

  /// Display: Autism Screening
  /// Definition: Autism Screening Program.
  auscr('auscr'),

  /// Display: None
  /// Definition: No program code applies.
  none('none'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleProgramReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleProgramReasonCodes] instances.
  static ExampleProgramReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProgramReasonCodes.elementOnly.withElement(element);
    }
    return ExampleProgramReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleProgramReasonCodes withElement(Element? newElement) {
    return ExampleProgramReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
