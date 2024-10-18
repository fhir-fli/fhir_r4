// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The prescription supply types appropriate to a medicinal product
enum LegalStatusOfSupply {
  /// Display: Medicinal product not subject to medical prescription
  /// Definition:
  value100000072076('100000072076'),

  /// Display: Medicinal product on medical prescription for renewable or non-renewable delivery
  /// Definition:
  value100000072077('100000072077'),

  /// Display: Medicinal product subject to restricted medical prescription
  /// Definition:
  value100000072078('100000072078'),

  /// Display: Medicinal product on medical prescription for non-renewable delivery
  /// Definition:
  value100000072079('100000072079'),

  /// Display: Medicinal product subject to medical prescription
  /// Definition:
  value100000072084('100000072084'),

  /// Display: Medicinal product subject to special medical prescription
  /// Definition:
  value100000072085('100000072085'),

  /// Display: Medicinal product on medical prescription for renewable delivery
  /// Definition:
  value100000072086('100000072086'),

  /// Display: Medicinal product subject to special and restricted medical prescription
  /// Definition:
  value100000157313('100000157313'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LegalStatusOfSupply(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LegalStatusOfSupply] instances.
  static LegalStatusOfSupply fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LegalStatusOfSupply.elementOnly.withElement(element);
    }
    return LegalStatusOfSupply.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  LegalStatusOfSupply withElement(Element? newElement) {
    return LegalStatusOfSupply.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
