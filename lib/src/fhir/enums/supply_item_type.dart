// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value sets refers to a specific supply item.
@Entity()
class SupplyItemType extends FhirCode {
  /// Factory constructor to create [SupplyItemType] from JSON.
  factory SupplyItemType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyItemType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SupplyItemType._(value, element);
    }
    throw ArgumentError(
      'SupplyItemType.fromJson: JSON value is not a valid value',
    );
  }

  /// medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyItemType.medication([this.element])
      : dbValue = 'medication',
        super('medication', element);

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyItemType.device([this.element])
      : dbValue = 'device',
        super('device', element);

  /// For instances where an Element is present but not value

  SupplyItemType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SupplyItemType._(super.input, [super.element])
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
    'medication',
    'device',
  ];

  /// Returns the enum value with an element attached
  SupplyItemType withElement(Element? newElement) {
    return SupplyItemType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyItemType.$value';
}
