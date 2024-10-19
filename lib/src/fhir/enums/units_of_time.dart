// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A unit of time (units from UCUM).
@Entity()
class UnitsOfTime extends FhirCode {
  /// Factory constructor to create [UnitsOfTime] from JSON.
  factory UnitsOfTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime.elementOnly(element);
    }
    if (values.contains(value)) {
      return UnitsOfTime._(value, element);
    }
    throw ArgumentError(
      'UnitsOfTime.fromJson: JSON value is not a valid value',
    );
  }

  /// s
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.s([this.element])
      : dbValue = 's',
        super('s', element);

  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.min([this.element])
      : dbValue = 'min',
        super('min', element);

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.h([this.element])
      : dbValue = 'h',
        super('h', element);

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.d([this.element])
      : dbValue = 'd',
        super('d', element);

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.wk([this.element])
      : dbValue = 'wk',
        super('wk', element);

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.mo([this.element])
      : dbValue = 'mo',
        super('mo', element);

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitsOfTime.a([this.element])
      : dbValue = 'a',
        super('a', element);

  /// For instances where an Element is present but not value

  UnitsOfTime.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  UnitsOfTime._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    's',
    'min',
    'h',
    'd',
    'wk',
    'mo',
    'a',
  ];

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UnitsOfTime.$value';
}
