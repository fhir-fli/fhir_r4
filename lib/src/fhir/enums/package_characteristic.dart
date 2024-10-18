// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A characteristic of a package.
enum PackageCharacteristic {
  /// Display: Hospital pack
  /// Definition:
  HospitalPack('HospitalPack'),

  /// Display: Nurse prescribable
  /// Definition:
  NursePrescribable('NursePrescribable'),

  /// Display: Calendar pack
  /// Definition:
  CalendarPack('CalendarPack'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PackageCharacteristic(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PackageCharacteristic] instances.
  static PackageCharacteristic fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  PackageCharacteristic withElement(Element? newElement) {
    return PackageCharacteristic.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
