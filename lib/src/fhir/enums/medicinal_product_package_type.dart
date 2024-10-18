// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of medicinal product packs
enum MedicinalProductPackageType {
  /// Display: Ampoule
  /// Definition:
  value100000073490('100000073490'),

  /// Display: Applicator
  /// Definition:
  value100000073491('100000073491'),

  /// Display: Automatic injection device
  /// Definition:
  value100000073492('100000073492'),

  /// Display: Bag
  /// Definition:
  value100000073493('100000073493'),

  /// Display: Balling gun
  /// Definition:
  value100000073494('100000073494'),

  /// Display: Barrel
  /// Definition:
  value100000073495('100000073495'),

  /// Display: Blister
  /// Definition:
  value100000073496('100000073496'),

  /// Display: Bottle
  /// Definition:
  value100000073497('100000073497'),

  /// Display: Box
  /// Definition:
  value100000073498('100000073498'),

  /// Display: Sachet
  /// Definition:
  value100000073547('100000073547'),

  /// Display: Vial
  /// Definition:
  value100000073563('100000073563'),

  /// Display: Pack
  /// Definition:
  value100000143555('100000143555'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicinalProductPackageType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicinalProductPackageType] instances.
  static MedicinalProductPackageType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductPackageType.elementOnly.withElement(element);
    }
    return MedicinalProductPackageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicinalProductPackageType withElement(Element? newElement) {
    return MedicinalProductPackageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
