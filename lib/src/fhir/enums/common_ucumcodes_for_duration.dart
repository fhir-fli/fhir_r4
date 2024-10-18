// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
enum CommonUCUMCodesForDuration {
  /// Display: milliseconds
  /// Definition:
  ms('ms'),

  /// Display: seconds
  /// Definition:
  s('s'),

  /// Display: minutes
  /// Definition:
  min('min'),

  /// Display: hours
  /// Definition:
  h('h'),

  /// Display: days
  /// Definition:
  d('d'),

  /// Display: weeks
  /// Definition:
  wk('wk'),

  /// Display: months
  /// Definition:
  mo('mo'),

  /// Display: years
  /// Definition:
  a('a'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CommonUCUMCodesForDuration(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CommonUCUMCodesForDuration] instances.
  static CommonUCUMCodesForDuration fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDuration.elementOnly.withElement(
        element,
      );
    }
    return CommonUCUMCodesForDuration.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CommonUCUMCodesForDuration withElement(Element? newElement) {
    return CommonUCUMCodesForDuration.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
