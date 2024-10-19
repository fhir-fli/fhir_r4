// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Code for a known / defined timing pattern.
@Entity()
class TimingAbbreviation extends FhirCode {
  /// Factory constructor to create [TimingAbbreviation] from JSON.
  factory TimingAbbreviation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly(element);
    }
    if (values.contains(value)) {
      return TimingAbbreviation._(value, element);
    }
    throw ArgumentError(
      'TimingAbbreviation.fromJson: JSON value is not a valid value',
    );
  }

  /// BID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.BID([this.element])
      : dbValue = 'BID',
        super('BID', element);

  /// TID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.TID([this.element])
      : dbValue = 'TID',
        super('TID', element);

  /// QID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.QID([this.element])
      : dbValue = 'QID',
        super('QID', element);

  /// AM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.AM([this.element])
      : dbValue = 'AM',
        super('AM', element);

  /// PM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.PM([this.element])
      : dbValue = 'PM',
        super('PM', element);

  /// QD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.QD([this.element])
      : dbValue = 'QD',
        super('QD', element);

  /// QOD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.QOD([this.element])
      : dbValue = 'QOD',
        super('QOD', element);

  /// Q1H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q1H([this.element])
      : dbValue = 'Q1H',
        super('Q1H', element);

  /// Q2H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q2H([this.element])
      : dbValue = 'Q2H',
        super('Q2H', element);

  /// Q3H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q3H([this.element])
      : dbValue = 'Q3H',
        super('Q3H', element);

  /// Q4H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q4H([this.element])
      : dbValue = 'Q4H',
        super('Q4H', element);

  /// Q6H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q6H([this.element])
      : dbValue = 'Q6H',
        super('Q6H', element);

  /// Q8H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.Q8H([this.element])
      : dbValue = 'Q8H',
        super('Q8H', element);

  /// BED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.BED([this.element])
      : dbValue = 'BED',
        super('BED', element);

  /// WK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.WK([this.element])
      : dbValue = 'WK',
        super('WK', element);

  /// MO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TimingAbbreviation.MO([this.element])
      : dbValue = 'MO',
        super('MO', element);

  /// For instances where an Element is present but not value

  TimingAbbreviation.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TimingAbbreviation._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'BID',
    'TID',
    'QID',
    'AM',
    'PM',
    'QD',
    'QOD',
    'Q1H',
    'Q2H',
    'Q3H',
    'Q4H',
    'Q6H',
    'Q8H',
    'BED',
    'WK',
    'MO',
  ];

  /// Returns the enum value with an element attached
  TimingAbbreviation withElement(Element? newElement) {
    return TimingAbbreviation._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TimingAbbreviation.$value';
}
