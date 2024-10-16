import 'package:fhir_r4/fhir_r4.dart';

/// Real world event relating to the schedule.
enum EventTiming {
  /// Display: Morning
  /// Definition: Event occurs during the morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN('MORN'),

  /// Display: Early Morning
  /// Definition: Event occurs during the early morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN_early('MORN.early'),

  /// Display: Late Morning
  /// Definition: Event occurs during the late morning. The exact time is unspecified and established by institution convention or patient interpretation.
  MORN_late('MORN.late'),

  /// Display: Noon
  /// Definition: Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient interpretation.
  NOON('NOON'),

  /// Display: Afternoon
  /// Definition: Event occurs during the afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT('AFT'),

  /// Display: Early Afternoon
  /// Definition: Event occurs during the early afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT_early('AFT.early'),

  /// Display: Late Afternoon
  /// Definition: Event occurs during the late afternoon. The exact time is unspecified and established by institution convention or patient interpretation.
  AFT_late('AFT.late'),

  /// Display: Evening
  /// Definition: Event occurs during the evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE('EVE'),

  /// Display: Early Evening
  /// Definition: Event occurs during the early evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE_early('EVE.early'),

  /// Display: Late Evening
  /// Definition: Event occurs during the late evening. The exact time is unspecified and established by institution convention or patient interpretation.
  EVE_late('EVE.late'),

  /// Display: Night
  /// Definition: Event occurs during the night. The exact time is unspecified and established by institution convention or patient interpretation.
  NIGHT('NIGHT'),

  /// Display: After Sleep
  /// Definition: Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution convention or patient interpretation.
  PHS('PHS'),

  /// Display:
  /// Definition:
  HS('HS'),

  /// Display:
  /// Definition:
  WAKE('WAKE'),

  /// Display:
  /// Definition:
  C('C'),

  /// Display:
  /// Definition:
  CM('CM'),

  /// Display:
  /// Definition:
  CD('CD'),

  /// Display:
  /// Definition:
  CV('CV'),

  /// Display:
  /// Definition:
  AC('AC'),

  /// Display:
  /// Definition:
  ACM('ACM'),

  /// Display:
  /// Definition:
  ACD('ACD'),

  /// Display:
  /// Definition:
  ACV('ACV'),

  /// Display:
  /// Definition:
  PC('PC'),

  /// Display:
  /// Definition:
  PCM('PCM'),

  /// Display:
  /// Definition:
  PCD('PCD'),

  /// Display:
  /// Definition:
  PCV('PCV'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EventTiming(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EventTiming fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTiming.elementOnly.withElement(element);
    }
    return EventTiming.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EventTiming withElement(Element? newElement) {
    return EventTiming.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
