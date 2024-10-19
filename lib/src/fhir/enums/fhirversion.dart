// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// All published FHIR Versions.
@Entity()
class FHIRVersion extends FhirCode {
  /// Factory constructor to create [FHIRVersion] from JSON.
  factory FHIRVersion.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRVersion._(value, element);
    }
    throw ArgumentError(
      'FHIRVersion.fromJson: JSON value is not a valid value',
    );
  }

  /// value0_01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_01([this.element])
      : dbValue = '0.01',
        super('0.01', element);

  /// value0_05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_05([this.element])
      : dbValue = '0.05',
        super('0.05', element);

  /// value0_06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_06([this.element])
      : dbValue = '0.06',
        super('0.06', element);

  /// value0_11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_11([this.element])
      : dbValue = '0.11',
        super('0.11', element);

  /// value0_0_80
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_0_80([this.element])
      : dbValue = '0.0.80',
        super('0.0.80', element);

  /// value0_0_81
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_0_81([this.element])
      : dbValue = '0.0.81',
        super('0.0.81', element);

  /// value0_0_82
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_0_82([this.element])
      : dbValue = '0.0.82',
        super('0.0.82', element);

  /// value0_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_4_0([this.element])
      : dbValue = '0.4.0',
        super('0.4.0', element);

  /// value0_5_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value0_5_0([this.element])
      : dbValue = '0.5.0',
        super('0.5.0', element);

  /// value1_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_0_0([this.element])
      : dbValue = '1.0.0',
        super('1.0.0', element);

  /// value1_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_0_1([this.element])
      : dbValue = '1.0.1',
        super('1.0.1', element);

  /// value1_0_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_0_2([this.element])
      : dbValue = '1.0.2',
        super('1.0.2', element);

  /// value1_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_1_0([this.element])
      : dbValue = '1.1.0',
        super('1.1.0', element);

  /// value1_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_4_0([this.element])
      : dbValue = '1.4.0',
        super('1.4.0', element);

  /// value1_6_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_6_0([this.element])
      : dbValue = '1.6.0',
        super('1.6.0', element);

  /// value1_8_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value1_8_0([this.element])
      : dbValue = '1.8.0',
        super('1.8.0', element);

  /// value3_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value3_0_0([this.element])
      : dbValue = '3.0.0',
        super('3.0.0', element);

  /// value3_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value3_0_1([this.element])
      : dbValue = '3.0.1',
        super('3.0.1', element);

  /// value3_0_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value3_0_2([this.element])
      : dbValue = '3.0.2',
        super('3.0.2', element);

  /// value3_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value3_3_0([this.element])
      : dbValue = '3.3.0',
        super('3.3.0', element);

  /// value3_5_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value3_5_0([this.element])
      : dbValue = '3.5.0',
        super('3.5.0', element);

  /// value4_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_0_0([this.element])
      : dbValue = '4.0.0',
        super('4.0.0', element);

  /// value4_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_0_1([this.element])
      : dbValue = '4.0.1',
        super('4.0.1', element);

  /// value4_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_1_0([this.element])
      : dbValue = '4.1.0',
        super('4.1.0', element);

  /// value4_3_0_cibuild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_3_0_cibuild([this.element])
      : dbValue = '4.3.0-cibuild',
        super('4.3.0-cibuild', element);

  /// value4_3_0_snapshot1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_3_0_snapshot1([this.element])
      : dbValue = '4.3.0-snapshot1',
        super('4.3.0-snapshot1', element);

  /// value4_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRVersion.value4_3_0([this.element])
      : dbValue = '4.3.0',
        super('4.3.0', element);

  /// For instances where an Element is present but not value

  FHIRVersion.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRVersion._(super.input, [super.element])
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
    '0.01',
    '0.05',
    '0.06',
    '0.11',
    '0.0.80',
    '0.0.81',
    '0.0.82',
    '0.4.0',
    '0.5.0',
    '1.0.0',
    '1.0.1',
    '1.0.2',
    '1.1.0',
    '1.4.0',
    '1.6.0',
    '1.8.0',
    '3.0.0',
    '3.0.1',
    '3.0.2',
    '3.3.0',
    '3.5.0',
    '4.0.0',
    '4.0.1',
    '4.1.0',
    '4.3.0-cibuild',
    '4.3.0-snapshot1',
    '4.3.0',
  ];

  /// Returns the enum value with an element attached
  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRVersion.$value';
}
