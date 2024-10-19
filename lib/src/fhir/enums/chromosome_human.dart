// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Chromosome number for human.
@Entity()
class ChromosomeHuman extends FhirCode {
  /// Factory constructor to create [ChromosomeHuman] from JSON.
  factory ChromosomeHuman.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChromosomeHuman.elementOnly(element);
    }
    if (values.contains(value)) {
      return ChromosomeHuman._(value, element);
    }
    throw ArgumentError(
      'ChromosomeHuman.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value6([this.element])
      : dbValue = '6',
        super('6', element);

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value7([this.element])
      : dbValue = '7',
        super('7', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value9([this.element])
      : dbValue = '9',
        super('9', element);

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value10([this.element])
      : dbValue = '10',
        super('10', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value16([this.element])
      : dbValue = '16',
        super('16', element);

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value17([this.element])
      : dbValue = '17',
        super('17', element);

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value18([this.element])
      : dbValue = '18',
        super('18', element);

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value19([this.element])
      : dbValue = '19',
        super('19', element);

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value20([this.element])
      : dbValue = '20',
        super('20', element);

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value21([this.element])
      : dbValue = '21',
        super('21', element);

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.value22([this.element])
      : dbValue = '22',
        super('22', element);

  /// X
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.X([this.element])
      : dbValue = 'X',
        super('X', element);

  /// Y
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChromosomeHuman.Y([this.element])
      : dbValue = 'Y',
        super('Y', element);

  /// For instances where an Element is present but not value

  ChromosomeHuman.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ChromosomeHuman._(super.input, [super.element])
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
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    'X',
    'Y',
  ];

  /// Returns the enum value with an element attached
  ChromosomeHuman withElement(Element? newElement) {
    return ChromosomeHuman._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ChromosomeHuman.$value';
}
