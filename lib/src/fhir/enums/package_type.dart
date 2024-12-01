// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A high level categorisation of a package.
class PackageType {
  // Private constructor for internal use (like enum)
  PackageType._(this.fhirCode, {this.element});

  /// Factory constructor to create [PackageType] from JSON.
  factory PackageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageType.elementOnly.withElement(element);
    }
    return PackageType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PackageType values
  /// MedicinalProductPack
  static final PackageType MedicinalProductPack = PackageType._(
    'MedicinalProductPack',
  );

  /// RawMaterialPackage
  static final PackageType RawMaterialPackage = PackageType._(
    'RawMaterialPackage',
  );

  /// Shipping_TransportContainer
  static final PackageType Shipping_TransportContainer = PackageType._(
    'Shipping-TransportContainer',
  );

  /// For instances where an Element is present but not value

  static final PackageType elementOnly = PackageType._('');

  /// List of all enum-like values
  static final List<PackageType> values = [
    MedicinalProductPack,
    RawMaterialPackage,
    Shipping_TransportContainer,
  ];

  /// Returns the enum value with an element attached
  PackageType withElement(Element? newElement) {
    return PackageType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
