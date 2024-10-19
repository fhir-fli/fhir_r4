// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
@Entity()
class LocationType extends FhirCode {
  /// Factory constructor to create [LocationType] from JSON.
  factory LocationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return LocationType._(value, element);
    }
    throw ArgumentError(
      'LocationType.fromJson: JSON value is not a valid value',
    );
  }

  /// si
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.si([this.element])
      : dbValue = 'si',
        super('si', element);

  /// bu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.bu([this.element])
      : dbValue = 'bu',
        super('bu', element);

  /// wi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.wi([this.element])
      : dbValue = 'wi',
        super('wi', element);

  /// wa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.wa([this.element])
      : dbValue = 'wa',
        super('wa', element);

  /// lvl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.lvl([this.element])
      : dbValue = 'lvl',
        super('lvl', element);

  /// co
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.co([this.element])
      : dbValue = 'co',
        super('co', element);

  /// ro
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.ro([this.element])
      : dbValue = 'ro',
        super('ro', element);

  /// bd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.bd([this.element])
      : dbValue = 'bd',
        super('bd', element);

  /// ve
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.ve([this.element])
      : dbValue = 've',
        super('ve', element);

  /// ho
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.ho([this.element])
      : dbValue = 'ho',
        super('ho', element);

  /// ca
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.ca([this.element])
      : dbValue = 'ca',
        super('ca', element);

  /// rd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.rd([this.element])
      : dbValue = 'rd',
        super('rd', element);

  /// area
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.area([this.element])
      : dbValue = 'area',
        super('area', element);

  /// jdn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LocationType.jdn([this.element])
      : dbValue = 'jdn',
        super('jdn', element);

  /// For instances where an Element is present but not value

  LocationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  LocationType._(super.input, [super.element])
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
    'si',
    'bu',
    'wi',
    'wa',
    'lvl',
    'co',
    'ro',
    'bd',
    've',
    'ho',
    'ca',
    'rd',
    'area',
    'jdn',
  ];

  /// Returns the enum value with an element attached
  LocationType withElement(Element? newElement) {
    return LocationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LocationType.$value';
}
