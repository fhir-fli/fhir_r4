// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
enum CommonUCUMCodesForDistance {
  /// Display: nanometers
  /// Definition:
  nm('nm'),

  /// Display: micrometers
  /// Definition:
  um('um'),

  /// Display: millimeters
  /// Definition:
  mm('mm'),

  /// Display: meters
  /// Definition:
  m('m'),

  /// Display: kilometers
  /// Definition:
  km('km'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CommonUCUMCodesForDistance(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CommonUCUMCodesForDistance] instances.
  static CommonUCUMCodesForDistance fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDistance.elementOnly.withElement(
        element,
      );
    }
    return CommonUCUMCodesForDistance.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CommonUCUMCodesForDistance withElement(Element? newElement) {
    return CommonUCUMCodesForDistance.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
