// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
enum Use {
  /// Display: Claim
  /// Definition: The treatment is complete and this represents a Claim for the services.
  claim('claim'),

  /// Display: Preauthorization
  /// Definition: The treatment is proposed and this represents a Pre-authorization for the services.
  preauthorization('preauthorization'),

  /// Display: Predetermination
  /// Definition: The treatment is proposed and this represents a Pre-determination for the services.
  predetermination('predetermination'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const Use(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [Use] instances.
  static Use fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly.withElement(
        element,
      );
    }
    return Use.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  Use withElement(Element? newElement) {
    return Use.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
