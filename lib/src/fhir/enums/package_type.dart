// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A high level categorisation of a package.
@Entity()
class PackageType extends FhirCode {
  /// Factory constructor to create [PackageType] from JSON.
  factory PackageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageType.elementOnly(element);
    }
    if (values.contains(value)) {
      return PackageType._(value, element);
    }
    throw ArgumentError(
      'PackageType.fromJson: JSON value is not a valid value',
    );
  }

  /// MedicinalProductPack
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageType.MedicinalProductPack([this.element])
      : dbValue = 'MedicinalProductPack',
        super('MedicinalProductPack', element);

  /// RawMaterialPackage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageType.RawMaterialPackage([this.element])
      : dbValue = 'RawMaterialPackage',
        super('RawMaterialPackage', element);

  /// Shipping_TransportContainer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageType.Shipping_TransportContainer([this.element])
      : dbValue = 'Shipping-TransportContainer',
        super('Shipping-TransportContainer', element);

  /// For instances where an Element is present but not value

  PackageType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PackageType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'MedicinalProductPack',
    'RawMaterialPackage',
    'Shipping-TransportContainer',
  ];

  /// Returns the enum value with an element attached
  PackageType withElement(Element? newElement) {
    return PackageType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackageType.$value';
}
