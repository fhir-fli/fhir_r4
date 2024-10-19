// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of USCLS codes.
@Entity()
class USCLSCodes extends FhirCode {
  /// Factory constructor to create [USCLSCodes] from JSON.
  factory USCLSCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return USCLSCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return USCLSCodes._(value, element);
    }
    throw ArgumentError(
      'USCLSCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value1101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value1101([this.element])
      : dbValue = '1101',
        super('1101', element);

  /// value1102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value1102([this.element])
      : dbValue = '1102',
        super('1102', element);

  /// value1103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value1103([this.element])
      : dbValue = '1103',
        super('1103', element);

  /// value1201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value1201([this.element])
      : dbValue = '1201',
        super('1201', element);

  /// value1205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value1205([this.element])
      : dbValue = '1205',
        super('1205', element);

  /// value2101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value2101([this.element])
      : dbValue = '2101',
        super('2101', element);

  /// value2102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value2102([this.element])
      : dbValue = '2102',
        super('2102', element);

  /// value2141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value2141([this.element])
      : dbValue = '2141',
        super('2141', element);

  /// value2601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value2601([this.element])
      : dbValue = '2601',
        super('2601', element);

  /// value11101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value11101([this.element])
      : dbValue = '11101',
        super('11101', element);

  /// value11102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value11102([this.element])
      : dbValue = '11102',
        super('11102', element);

  /// value11103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value11103([this.element])
      : dbValue = '11103',
        super('11103', element);

  /// value11104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value11104([this.element])
      : dbValue = '11104',
        super('11104', element);

  /// value21211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value21211([this.element])
      : dbValue = '21211',
        super('21211', element);

  /// value21212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value21212([this.element])
      : dbValue = '21212',
        super('21212', element);

  /// value27211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value27211([this.element])
      : dbValue = '27211',
        super('27211', element);

  /// value67211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value67211([this.element])
      : dbValue = '67211',
        super('67211', element);

  /// value99111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value99111([this.element])
      : dbValue = '99111',
        super('99111', element);

  /// value99333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value99333([this.element])
      : dbValue = '99333',
        super('99333', element);

  /// value99555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  USCLSCodes.value99555([this.element])
      : dbValue = '99555',
        super('99555', element);

  /// For instances where an Element is present but not value

  USCLSCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  USCLSCodes._(super.input, [super.element])
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
    '1101',
    '1102',
    '1103',
    '1201',
    '1205',
    '2101',
    '2102',
    '2141',
    '2601',
    '11101',
    '11102',
    '11103',
    '11104',
    '21211',
    '21212',
    '27211',
    '67211',
    '99111',
    '99333',
    '99555',
  ];

  /// Returns the enum value with an element attached
  USCLSCodes withElement(Element? newElement) {
    return USCLSCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'USCLSCodes.$value';
}
