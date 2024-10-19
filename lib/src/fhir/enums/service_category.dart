// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
@Entity()
class ServiceCategory extends FhirCode {
  /// Factory constructor to create [ServiceCategory] from JSON.
  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return ServiceCategory._(value, element);
    }
    throw ArgumentError(
      'ServiceCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value34([this.element])
      : dbValue = '34',
        super('34', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value6([this.element])
      : dbValue = '6',
        super('6', element);

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value7([this.element])
      : dbValue = '7',
        super('7', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value36([this.element])
      : dbValue = '36',
        super('36', element);

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value9([this.element])
      : dbValue = '9',
        super('9', element);

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value10([this.element])
      : dbValue = '10',
        super('10', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value16([this.element])
      : dbValue = '16',
        super('16', element);

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value17([this.element])
      : dbValue = '17',
        super('17', element);

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value35([this.element])
      : dbValue = '35',
        super('35', element);

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value18([this.element])
      : dbValue = '18',
        super('18', element);

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value19([this.element])
      : dbValue = '19',
        super('19', element);

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value20([this.element])
      : dbValue = '20',
        super('20', element);

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value21([this.element])
      : dbValue = '21',
        super('21', element);

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value22([this.element])
      : dbValue = '22',
        super('22', element);

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value38([this.element])
      : dbValue = '38',
        super('38', element);

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value23([this.element])
      : dbValue = '23',
        super('23', element);

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value24([this.element])
      : dbValue = '24',
        super('24', element);

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value25([this.element])
      : dbValue = '25',
        super('25', element);

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value26([this.element])
      : dbValue = '26',
        super('26', element);

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value27([this.element])
      : dbValue = '27',
        super('27', element);

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value28([this.element])
      : dbValue = '28',
        super('28', element);

  /// value29
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value29([this.element])
      : dbValue = '29',
        super('29', element);

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value30([this.element])
      : dbValue = '30',
        super('30', element);

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value31([this.element])
      : dbValue = '31',
        super('31', element);

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value32([this.element])
      : dbValue = '32',
        super('32', element);

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value37([this.element])
      : dbValue = '37',
        super('37', element);

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceCategory.value33([this.element])
      : dbValue = '33',
        super('33', element);

  /// For instances where an Element is present but not value

  ServiceCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ServiceCategory._(super.input, [super.element])
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
    '1',
    '2',
    '34',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '36',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '35',
    '18',
    '19',
    '20',
    '21',
    '22',
    '38',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '37',
    '33',
  ];

  /// Returns the enum value with an element attached
  ServiceCategory withElement(Element? newElement) {
    return ServiceCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceCategory.$value';
}
