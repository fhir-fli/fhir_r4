// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for a known / defined timing pattern.
class TimingAbbreviation {
  // Private constructor for internal use (like enum)
  TimingAbbreviation._(this.fhirCode, {this.element});

  /// Factory constructor to create [TimingAbbreviation] from JSON.
  factory TimingAbbreviation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly.withElement(element);
    }
    return TimingAbbreviation._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TimingAbbreviation values
  /// BID
  static final TimingAbbreviation BID = TimingAbbreviation._(
    'BID',
  );

  /// TID
  static final TimingAbbreviation TID = TimingAbbreviation._(
    'TID',
  );

  /// QID
  static final TimingAbbreviation QID = TimingAbbreviation._(
    'QID',
  );

  /// AM
  static final TimingAbbreviation AM = TimingAbbreviation._(
    'AM',
  );

  /// PM
  static final TimingAbbreviation PM = TimingAbbreviation._(
    'PM',
  );

  /// QD
  static final TimingAbbreviation QD = TimingAbbreviation._(
    'QD',
  );

  /// QOD
  static final TimingAbbreviation QOD = TimingAbbreviation._(
    'QOD',
  );

  /// Q1H
  static final TimingAbbreviation Q1H = TimingAbbreviation._(
    'Q1H',
  );

  /// Q2H
  static final TimingAbbreviation Q2H = TimingAbbreviation._(
    'Q2H',
  );

  /// Q3H
  static final TimingAbbreviation Q3H = TimingAbbreviation._(
    'Q3H',
  );

  /// Q4H
  static final TimingAbbreviation Q4H = TimingAbbreviation._(
    'Q4H',
  );

  /// Q6H
  static final TimingAbbreviation Q6H = TimingAbbreviation._(
    'Q6H',
  );

  /// Q8H
  static final TimingAbbreviation Q8H = TimingAbbreviation._(
    'Q8H',
  );

  /// BED
  static final TimingAbbreviation BED = TimingAbbreviation._(
    'BED',
  );

  /// WK
  static final TimingAbbreviation WK = TimingAbbreviation._(
    'WK',
  );

  /// MO
  static final TimingAbbreviation MO = TimingAbbreviation._(
    'MO',
  );

  /// For instances where an Element is present but not value

  static final TimingAbbreviation elementOnly = TimingAbbreviation._('');

  /// List of all enum-like values
  static final List<TimingAbbreviation> values = [
    BID,
    TID,
    QID,
    AM,
    PM,
    QD,
    QOD,
    Q1H,
    Q2H,
    Q3H,
    Q4H,
    Q6H,
    Q8H,
    BED,
    WK,
    MO,
  ];

  /// Returns the enum value with an element attached
  TimingAbbreviation withElement(Element? newElement) {
    return TimingAbbreviation._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
