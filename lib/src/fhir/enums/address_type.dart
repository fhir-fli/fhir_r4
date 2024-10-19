// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of an address (physical / postal).
@collection
class AddressType {
  /// Constructor for internal use (like enum)
  AddressType({this.fhirCode, this.element})
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

  /// AddressType values
  /// postal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType postal = AddressType(
    fhirCode: 'postal',
  );

  /// physical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType physical = AddressType(
    fhirCode: 'physical',
  );

  /// both
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AddressType both = AddressType(
    fhirCode: 'both',
  );

  /// For instances where an Element is present but not value

  static final AddressType elementOnly = AddressType();

  /// List of all enum-like values
  static final List<AddressType> values = [
    postal,
    physical,
    both,
  ];

  /// Returns the enum value with an element attached
  AddressType withElement(Element? newElement) {
    return AddressType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AddressType] from JSON.
  static AddressType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    }
    return AddressType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AddressType.$fhirCode';
}
