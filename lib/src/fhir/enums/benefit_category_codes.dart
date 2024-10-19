// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes examples of Benefit Category codes.
@Entity()
class BenefitCategoryCodes extends FhirCode {
  /// Factory constructor to create [BenefitCategoryCodes] from JSON.
  factory BenefitCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return BenefitCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'BenefitCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value23([this.element])
      : dbValue = '23',
        super('23', element);

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value24([this.element])
      : dbValue = '24',
        super('24', element);

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value25([this.element])
      : dbValue = '25',
        super('25', element);

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value26([this.element])
      : dbValue = '26',
        super('26', element);

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value27([this.element])
      : dbValue = '27',
        super('27', element);

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value28([this.element])
      : dbValue = '28',
        super('28', element);

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value30([this.element])
      : dbValue = '30',
        super('30', element);

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value35([this.element])
      : dbValue = '35',
        super('35', element);

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value36([this.element])
      : dbValue = '36',
        super('36', element);

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value37([this.element])
      : dbValue = '37',
        super('37', element);

  /// value49
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value49([this.element])
      : dbValue = '49',
        super('49', element);

  /// value55
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value55([this.element])
      : dbValue = '55',
        super('55', element);

  /// value56
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value56([this.element])
      : dbValue = '56',
        super('56', element);

  /// value61
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value61([this.element])
      : dbValue = '61',
        super('61', element);

  /// value62
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value62([this.element])
      : dbValue = '62',
        super('62', element);

  /// value63
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value63([this.element])
      : dbValue = '63',
        super('63', element);

  /// value69
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value69([this.element])
      : dbValue = '69',
        super('69', element);

  /// value76
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.value76([this.element])
      : dbValue = '76',
        super('76', element);

  /// F1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.F1([this.element])
      : dbValue = 'F1',
        super('F1', element);

  /// F3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.F3([this.element])
      : dbValue = 'F3',
        super('F3', element);

  /// F4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.F4([this.element])
      : dbValue = 'F4',
        super('F4', element);

  /// F6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitCategoryCodes.F6([this.element])
      : dbValue = 'F6',
        super('F6', element);

  /// For instances where an Element is present but not value

  BenefitCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BenefitCategoryCodes._(super.input, [super.element])
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
    '1',
    '2',
    '3',
    '4',
    '5',
    '14',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '30',
    '35',
    '36',
    '37',
    '49',
    '55',
    '56',
    '61',
    '62',
    '63',
    '69',
    '76',
    'F1',
    'F3',
    'F4',
    'F6',
  ];

  /// Returns the enum value with an element attached
  BenefitCategoryCodes withElement(Element? newElement) {
    return BenefitCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitCategoryCodes.$value';
}
