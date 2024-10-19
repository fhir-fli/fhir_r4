// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The use of an address.
@Entity()
class AddressUse extends FhirCode {
  /// Factory constructor to create [AddressUse] from JSON.
  factory AddressUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return AddressUse._(value, element);
    }
    throw ArgumentError(
      'AddressUse.fromJson: JSON value is not a valid value',
    );
  }

  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AddressUse.home([this.element])
      : dbValue = 'home',
        super('home', element);

  /// work
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AddressUse.work([this.element])
      : dbValue = 'work',
        super('work', element);

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AddressUse.temp([this.element])
      : dbValue = 'temp',
        super('temp', element);

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AddressUse.old([this.element])
      : dbValue = 'old',
        super('old', element);

  /// billing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AddressUse.billing([this.element])
      : dbValue = 'billing',
        super('billing', element);

  /// For instances where an Element is present but not value

  AddressUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AddressUse._(super.input, [super.element])
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
    'home',
    'work',
    'temp',
    'old',
    'billing',
  ];

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AddressUse.$value';
}
