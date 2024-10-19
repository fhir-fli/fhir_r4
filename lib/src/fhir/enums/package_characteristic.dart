// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A characteristic of a package.
@collection
class PackageCharacteristic {
  /// Constructor for internal use (like enum)
  PackageCharacteristic({this.fhirCode, this.element})
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

  /// PackageCharacteristic values
  /// HospitalPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageCharacteristic HospitalPack = PackageCharacteristic(
    fhirCode: 'HospitalPack',
  );

  /// NursePrescribable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageCharacteristic NursePrescribable = PackageCharacteristic(
    fhirCode: 'NursePrescribable',
  );

  /// CalendarPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageCharacteristic CalendarPack = PackageCharacteristic(
    fhirCode: 'CalendarPack',
  );

  /// For instances where an Element is present but not value

  static final PackageCharacteristic elementOnly = PackageCharacteristic();

  /// List of all enum-like values
  static final List<PackageCharacteristic> values = [
    HospitalPack,
    NursePrescribable,
    CalendarPack,
  ];

  /// Returns the enum value with an element attached
  PackageCharacteristic withElement(Element? newElement) {
    return PackageCharacteristic(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PackageCharacteristic] from JSON.
  static PackageCharacteristic fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageCharacteristic.elementOnly.withElement(element);
    }
    return PackageCharacteristic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackageCharacteristic.$fhirCode';
}
