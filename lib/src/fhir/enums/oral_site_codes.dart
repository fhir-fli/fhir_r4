// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of FDI oral site codes.
@Entity()
class OralSiteCodes extends FhirCode {
  /// Factory constructor to create [OralSiteCodes] from JSON.
  factory OralSiteCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OralSiteCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return OralSiteCodes._(value, element);
    }
    throw ArgumentError(
      'OralSiteCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value0([this.element])
      : dbValue = '0',
        super('0', element);

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value6([this.element])
      : dbValue = '6',
        super('6', element);

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value7([this.element])
      : dbValue = '7',
        super('7', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value16([this.element])
      : dbValue = '16',
        super('16', element);

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value17([this.element])
      : dbValue = '17',
        super('17', element);

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value18([this.element])
      : dbValue = '18',
        super('18', element);

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value21([this.element])
      : dbValue = '21',
        super('21', element);

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value22([this.element])
      : dbValue = '22',
        super('22', element);

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value23([this.element])
      : dbValue = '23',
        super('23', element);

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value24([this.element])
      : dbValue = '24',
        super('24', element);

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value25([this.element])
      : dbValue = '25',
        super('25', element);

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value26([this.element])
      : dbValue = '26',
        super('26', element);

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value27([this.element])
      : dbValue = '27',
        super('27', element);

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value28([this.element])
      : dbValue = '28',
        super('28', element);

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value31([this.element])
      : dbValue = '31',
        super('31', element);

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value32([this.element])
      : dbValue = '32',
        super('32', element);

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value33([this.element])
      : dbValue = '33',
        super('33', element);

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value34([this.element])
      : dbValue = '34',
        super('34', element);

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value35([this.element])
      : dbValue = '35',
        super('35', element);

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value36([this.element])
      : dbValue = '36',
        super('36', element);

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value37([this.element])
      : dbValue = '37',
        super('37', element);

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value38([this.element])
      : dbValue = '38',
        super('38', element);

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value41([this.element])
      : dbValue = '41',
        super('41', element);

  /// value42
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value42([this.element])
      : dbValue = '42',
        super('42', element);

  /// value43
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value43([this.element])
      : dbValue = '43',
        super('43', element);

  /// value44
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value44([this.element])
      : dbValue = '44',
        super('44', element);

  /// value45
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value45([this.element])
      : dbValue = '45',
        super('45', element);

  /// value46
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value46([this.element])
      : dbValue = '46',
        super('46', element);

  /// value47
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value47([this.element])
      : dbValue = '47',
        super('47', element);

  /// value48
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OralSiteCodes.value48([this.element])
      : dbValue = '48',
        super('48', element);

  /// For instances where an Element is present but not value

  OralSiteCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OralSiteCodes._(super.input, [super.element])
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
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
  ];

  /// Returns the enum value with an element attached
  OralSiteCodes withElement(Element? newElement) {
    return OralSiteCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OralSiteCodes.$value';
}
