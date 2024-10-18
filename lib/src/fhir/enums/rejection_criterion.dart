// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Criterion for rejection of the specimen by laboratory.
enum RejectionCriterion {
  /// Display: hemolized specimen
  /// Definition: blood specimen hemolized.
  hemolized('hemolized'),

  /// Display: insufficient specimen volume
  /// Definition: insufficient quantity of specimen.
  insufficient('insufficient'),

  /// Display: broken specimen container
  /// Definition: specimen container broken.
  broken('broken'),

  /// Display: specimen clotted
  /// Definition: specimen clotted.
  clotted('clotted'),

  /// Display: specimen temperature inappropriate
  /// Definition: specimen temperature inappropriate.
  wrong_temperature('wrong-temperature'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RejectionCriterion(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RejectionCriterion] instances.
  static RejectionCriterion fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RejectionCriterion.elementOnly.withElement(
        element,
      );
    }
    return RejectionCriterion.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RejectionCriterion withElement(Element? newElement) {
    return RejectionCriterion.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
