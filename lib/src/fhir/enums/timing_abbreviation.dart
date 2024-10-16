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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TimingAbbreviation(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TimingAbbreviation fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly.withElement(element);
    }
    return TimingAbbreviation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TimingAbbreviation withElement(Element? newElement) {
    return TimingAbbreviation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
