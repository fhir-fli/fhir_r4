// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a property value.
class PropertyTypeEnum {
  // Private constructor for internal use (like enum)
  PropertyTypeEnum._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PropertyTypeEnum values
  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum code = PropertyTypeEnum._(
    'code',
  );

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum Coding = PropertyTypeEnum._(
    'Coding',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum string = PropertyTypeEnum._(
    'string',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum integer = PropertyTypeEnum._(
    'integer',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum boolean = PropertyTypeEnum._(
    'boolean',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum dateTime = PropertyTypeEnum._(
    'dateTime',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum decimal = PropertyTypeEnum._(
    'decimal',
  );

  /// For instances where an Element is present but not value

  static final PropertyTypeEnum elementOnly = PropertyTypeEnum._('');

  /// List of all enum-like values
  static final List<PropertyTypeEnum> values = [
    code,
    Coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Returns the enum value with an element attached
  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PropertyTypeEnum] from JSON.
  static PropertyTypeEnum fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum.elementOnly.withElement(element);
    }
    return PropertyTypeEnum.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
