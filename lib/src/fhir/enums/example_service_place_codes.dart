// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of Service Place codes.
@Entity()
class ExampleServicePlaceCodes extends FhirCode {
  /// Factory constructor to create [ExampleServicePlaceCodes] from JSON.
  factory ExampleServicePlaceCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleServicePlaceCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleServicePlaceCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleServicePlaceCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value01([this.element])
      : dbValue = '01',
        super('01', element);

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value03([this.element])
      : dbValue = '03',
        super('03', element);

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value04([this.element])
      : dbValue = '04',
        super('04', element);

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value05([this.element])
      : dbValue = '05',
        super('05', element);

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value06([this.element])
      : dbValue = '06',
        super('06', element);

  /// value07
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value07([this.element])
      : dbValue = '07',
        super('07', element);

  /// value08
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value08([this.element])
      : dbValue = '08',
        super('08', element);

  /// value09
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value09([this.element])
      : dbValue = '09',
        super('09', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value19([this.element])
      : dbValue = '19',
        super('19', element);

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value20([this.element])
      : dbValue = '20',
        super('20', element);

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value21([this.element])
      : dbValue = '21',
        super('21', element);

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleServicePlaceCodes.value41([this.element])
      : dbValue = '41',
        super('41', element);

  /// For instances where an Element is present but not value

  ExampleServicePlaceCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleServicePlaceCodes._(super.input, [super.element])
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
    '01',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '11',
    '12',
    '13',
    '14',
    '15',
    '19',
    '20',
    '21',
    '41',
  ];

  /// Returns the enum value with an element attached
  ExampleServicePlaceCodes withElement(Element? newElement) {
    return ExampleServicePlaceCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleServicePlaceCodes.$value';
}
