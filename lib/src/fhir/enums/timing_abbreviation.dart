// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for a known / defined timing pattern.
enum TimingAbbreviation {
  /// Display: BID
  /// Definition:
  BID('BID'),

  /// Display: TID
  /// Definition:
  TID('TID'),

  /// Display: QID
  /// Definition:
  QID('QID'),

  /// Display: AM
  /// Definition:
  AM('AM'),

  /// Display: PM
  /// Definition:
  PM('PM'),

  /// Display: QD
  /// Definition:
  QD('QD'),

  /// Display: QOD
  /// Definition:
  QOD('QOD'),

  /// Display: every hour
  /// Definition:
  Q1H('Q1H'),

  /// Display: every 2 hours
  /// Definition:
  Q2H('Q2H'),

  /// Display: every 3 hours
  /// Definition:
  Q3H('Q3H'),

  /// Display: Q4H
  /// Definition:
  Q4H('Q4H'),

  /// Display: Q6H
  /// Definition:
  Q6H('Q6H'),

  /// Display: every 8 hours
  /// Definition:
  Q8H('Q8H'),

  /// Display: at bedtime
  /// Definition:
  BED('BED'),

  /// Display: weekly
  /// Definition:
  WK('WK'),

  /// Display: monthly
  /// Definition:
  MO('MO'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TimingAbbreviation(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TimingAbbreviation] instances.
  static TimingAbbreviation fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly.withElement(
        element,
      );
    }
    return TimingAbbreviation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TimingAbbreviation withElement(Element? newElement) {
    return TimingAbbreviation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
