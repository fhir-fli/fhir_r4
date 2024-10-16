import 'package:fhir_r4/fhir_r4.dart';

/// A high level categorisation of a package.
enum PackageType {
  /// Display: Medicinal product pack
  /// Definition:
  MedicinalProductPack('MedicinalProductPack'),

  /// Display: Raw material package
  /// Definition:
  RawMaterialPackage('RawMaterialPackage'),

  /// Display: Shipping or transport container
  /// Definition:
  Shipping_TransportContainer('Shipping-TransportContainer'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PackageType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PackageType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageType.elementOnly.withElement(element);
    }
    return PackageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PackageType withElement(Element? newElement) {
    return PackageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
