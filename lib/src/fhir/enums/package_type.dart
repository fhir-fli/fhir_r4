// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A high level categorisation of a package.
@collection
class PackageType {
  /// Constructor for internal use (like enum)
  PackageType({this.fhirCode, this.element})
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

  /// PackageType values
  /// MedicinalProductPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageType MedicinalProductPack = PackageType(
    fhirCode: 'MedicinalProductPack',
  );

  /// RawMaterialPackage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageType RawMaterialPackage = PackageType(
    fhirCode: 'RawMaterialPackage',
  );

  /// Shipping_TransportContainer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackageType Shipping_TransportContainer = PackageType(
    fhirCode: 'Shipping-TransportContainer',
  );

  /// For instances where an Element is present but not value

  static final PackageType elementOnly = PackageType();

  /// List of all enum-like values
  static final List<PackageType> values = [
    MedicinalProductPack,
    RawMaterialPackage,
    Shipping_TransportContainer,
  ];

  /// Returns the enum value with an element attached
  PackageType withElement(Element? newElement) {
    return PackageType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PackageType] from JSON.
  static PackageType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageType.elementOnly.withElement(element);
    }
    return PackageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackageType.$fhirCode';
}
