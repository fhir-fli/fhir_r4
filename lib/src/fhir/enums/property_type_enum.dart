// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of a property value.
@collection
class PropertyTypeEnum {
  /// Constructor for internal use (like enum)
  PropertyTypeEnum({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PropertyTypeEnum values
  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum code = PropertyTypeEnum(
    fhirCode: 'code',
  );

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum Coding = PropertyTypeEnum(
    fhirCode: 'Coding',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum string = PropertyTypeEnum(
    fhirCode: 'string',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum integer = PropertyTypeEnum(
    fhirCode: 'integer',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum boolean = PropertyTypeEnum(
    fhirCode: 'boolean',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum dateTime = PropertyTypeEnum(
    fhirCode: 'dateTime',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PropertyTypeEnum decimal = PropertyTypeEnum(
    fhirCode: 'decimal',
  );

  /// For instances where an Element is present but not value

  static final PropertyTypeEnum elementOnly = PropertyTypeEnum();

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
    return PropertyTypeEnum(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PropertyTypeEnum.$fhirCode';
}
