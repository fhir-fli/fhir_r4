// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Code for a known / defined timing pattern.
@collection
class TimingAbbreviation {
  /// Constructor for internal use (like enum)
  TimingAbbreviation({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TimingAbbreviation values
  /// BID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation BID = TimingAbbreviation(
    fhirCode: 'BID',
  );

  /// TID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation TID = TimingAbbreviation(
    fhirCode: 'TID',
  );

  /// QID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation QID = TimingAbbreviation(
    fhirCode: 'QID',
  );

  /// AM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation AM = TimingAbbreviation(
    fhirCode: 'AM',
  );

  /// PM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation PM = TimingAbbreviation(
    fhirCode: 'PM',
  );

  /// QD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation QD = TimingAbbreviation(
    fhirCode: 'QD',
  );

  /// QOD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation QOD = TimingAbbreviation(
    fhirCode: 'QOD',
  );

  /// Q1H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q1H = TimingAbbreviation(
    fhirCode: 'Q1H',
  );

  /// Q2H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q2H = TimingAbbreviation(
    fhirCode: 'Q2H',
  );

  /// Q3H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q3H = TimingAbbreviation(
    fhirCode: 'Q3H',
  );

  /// Q4H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q4H = TimingAbbreviation(
    fhirCode: 'Q4H',
  );

  /// Q6H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q6H = TimingAbbreviation(
    fhirCode: 'Q6H',
  );

  /// Q8H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation Q8H = TimingAbbreviation(
    fhirCode: 'Q8H',
  );

  /// BED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation BED = TimingAbbreviation(
    fhirCode: 'BED',
  );

  /// WK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation WK = TimingAbbreviation(
    fhirCode: 'WK',
  );

  /// MO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TimingAbbreviation MO = TimingAbbreviation(
    fhirCode: 'MO',
  );

  /// For instances where an Element is present but not value

  static final TimingAbbreviation elementOnly = TimingAbbreviation();

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
    return TimingAbbreviation(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TimingAbbreviation] from JSON.
  static TimingAbbreviation fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly.withElement(element);
    }
    return TimingAbbreviation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TimingAbbreviation.$fhirCode';
}
