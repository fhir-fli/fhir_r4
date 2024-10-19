// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The days of the week.
@Entity()
class DaysOfWeek extends FhirCode {
  /// Factory constructor to create [DaysOfWeek] from JSON.
  factory DaysOfWeek.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly(element);
    }
    if (values.contains(value)) {
      return DaysOfWeek._(value, element);
    }
    throw ArgumentError(
      'DaysOfWeek.fromJson: JSON value is not a valid value',
    );
  }

  /// mon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.mon([this.element])
      : dbValue = 'mon',
        super('mon', element);

  /// tue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.tue([this.element])
      : dbValue = 'tue',
        super('tue', element);

  /// wed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.wed([this.element])
      : dbValue = 'wed',
        super('wed', element);

  /// thu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.thu([this.element])
      : dbValue = 'thu',
        super('thu', element);

  /// fri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.fri([this.element])
      : dbValue = 'fri',
        super('fri', element);

  /// sat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.sat([this.element])
      : dbValue = 'sat',
        super('sat', element);

  /// sun
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DaysOfWeek.sun([this.element])
      : dbValue = 'sun',
        super('sun', element);

  /// For instances where an Element is present but not value

  DaysOfWeek.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DaysOfWeek._(super.input, [super.element])
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
    'mon',
    'tue',
    'wed',
    'thu',
    'fri',
    'sat',
    'sun',
  ];

  /// Returns the enum value with an element attached
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DaysOfWeek.$value';
}
