// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The use of an address.
@collection
class AddressUse {
  /// Constructor for internal use (like enum)
  AddressUse({this.fhirCode, this.element})
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

  /// AddressUse values
  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressUse home = AddressUse(
    fhirCode: 'home',
  );

  /// work
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressUse work = AddressUse(
    fhirCode: 'work',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressUse temp = AddressUse(
    fhirCode: 'temp',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressUse old = AddressUse(
    fhirCode: 'old',
  );

  /// billing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressUse billing = AddressUse(
    fhirCode: 'billing',
  );

  /// For instances where an Element is present but not value

  static final AddressUse elementOnly = AddressUse();

  /// List of all enum-like values
  static final List<AddressUse> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AddressUse] from JSON.
  static AddressUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(element);
    }
    return AddressUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AddressUse.$fhirCode';
}
