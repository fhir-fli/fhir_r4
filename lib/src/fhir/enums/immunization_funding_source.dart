// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
enum ImmunizationFundingSource {
  /// Display: Private
  /// Definition: The vaccine was purchased with private funds.
  private('private'),

  /// Display: Public
  /// Definition: The vaccine was purchased with public funds.
  public('public'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationFundingSource(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationFundingSource] instances.
  static ImmunizationFundingSource fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFundingSource.elementOnly.withElement(element);
    }
    return ImmunizationFundingSource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationFundingSource withElement(Element? newElement) {
    return ImmunizationFundingSource.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
