// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Adjudication Reason codes.
enum AdjudicationReasonCodes {
  /// Display: Not covered
  /// Definition: Not covered
  ar001('ar001'),

  /// Display: Plan Limit Reached
  /// Definition: Plan Limit Reached
  ar002('ar002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdjudicationReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdjudicationReasonCodes] instances.
  static AdjudicationReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly.withElement(
        element,
      );
    }
    return AdjudicationReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
