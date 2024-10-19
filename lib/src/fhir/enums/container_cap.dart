// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Color of the container cap.
@Entity()
class ContainerCap extends FhirCode {
  /// Factory constructor to create [ContainerCap] from JSON.
  factory ContainerCap.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerCap.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContainerCap._(value, element);
    }
    throw ArgumentError(
      'ContainerCap.fromJson: JSON value is not a valid value',
    );
  }

  /// red
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.red([this.element])
      : dbValue = 'red',
        super('red', element);

  /// yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.yellow([this.element])
      : dbValue = 'yellow',
        super('yellow', element);

  /// dark_yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.dark_yellow([this.element])
      : dbValue = 'dark-yellow',
        super('dark-yellow', element);

  /// grey
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.grey([this.element])
      : dbValue = 'grey',
        super('grey', element);

  /// light_blue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.light_blue([this.element])
      : dbValue = 'light-blue',
        super('light-blue', element);

  /// black
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.black([this.element])
      : dbValue = 'black',
        super('black', element);

  /// green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.green([this.element])
      : dbValue = 'green',
        super('green', element);

  /// light_green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.light_green([this.element])
      : dbValue = 'light-green',
        super('light-green', element);

  /// lavender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.lavender([this.element])
      : dbValue = 'lavender',
        super('lavender', element);

  /// brown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.brown([this.element])
      : dbValue = 'brown',
        super('brown', element);

  /// white
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.white([this.element])
      : dbValue = 'white',
        super('white', element);

  /// pink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerCap.pink([this.element])
      : dbValue = 'pink',
        super('pink', element);

  /// For instances where an Element is present but not value

  ContainerCap.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContainerCap._(super.input, [super.element])
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
    'red',
    'yellow',
    'dark-yellow',
    'grey',
    'light-blue',
    'black',
    'green',
    'light-green',
    'lavender',
    'brown',
    'white',
    'pink',
  ];

  /// Returns the enum value with an element attached
  ContainerCap withElement(Element? newElement) {
    return ContainerCap._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContainerCap.$value';
}
