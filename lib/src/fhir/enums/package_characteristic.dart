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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PackageCharacteristic(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PackageCharacteristic fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageCharacteristic.elementOnly.withElement(element);
    }
    return PackageCharacteristic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PackageCharacteristic withElement(Element? newElement) {
    return PackageCharacteristic.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
