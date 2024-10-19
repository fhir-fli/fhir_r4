// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of a property value.
@Entity()
class PropertyTypeEnum extends FhirCode {
  /// Factory constructor to create [PropertyTypeEnum] from JSON.
  factory PropertyTypeEnum.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum.elementOnly(element);
    }
    if (values.contains(value)) {
      return PropertyTypeEnum._(value, element);
    }
    throw ArgumentError(
      'PropertyTypeEnum.fromJson: JSON value is not a valid value',
    );
  }

  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.code([this.element])
      : dbValue = 'code',
        super('code', element);

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.Coding([this.element])
      : dbValue = 'Coding',
        super('Coding', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.integer([this.element])
      : dbValue = 'integer',
        super('integer', element);

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.boolean([this.element])
      : dbValue = 'boolean',
        super('boolean', element);

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.dateTime([this.element])
      : dbValue = 'dateTime',
        super('dateTime', element);

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyTypeEnum.decimal([this.element])
      : dbValue = 'decimal',
        super('decimal', element);

  /// For instances where an Element is present but not value

  PropertyTypeEnum.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PropertyTypeEnum._(super.input, [super.element])
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
    'code',
    'Coding',
    'string',
    'integer',
    'boolean',
    'dateTime',
    'decimal',
  ];

  /// Returns the enum value with an element attached
  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PropertyTypeEnum.$value';
}
