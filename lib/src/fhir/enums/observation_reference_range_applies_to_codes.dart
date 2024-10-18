// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
enum ObservationReferenceRangeAppliesToCodes {
  /// Display:
  /// Definition:
  value248153007('248153007'),

  /// Display:
  /// Definition:
  value248152002('248152002'),

  /// Display:
  /// Definition:
  value77386006('77386006'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ObservationReferenceRangeAppliesToCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ObservationReferenceRangeAppliesToCodes] instances.
  static ObservationReferenceRangeAppliesToCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeAppliesToCodes.elementOnly.withElement(
        element,
      );
    }
    return ObservationReferenceRangeAppliesToCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ObservationReferenceRangeAppliesToCodes withElement(Element? newElement) {
    return ObservationReferenceRangeAppliesToCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
