// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of a name for a Medicinal Product.
enum ProductNameType {
  /// Display: British Approved Name
  /// Definition:
  BAN('BAN'),

  /// Display: International Non-Proprietary Name
  /// Definition:
  INN('INN'),

  /// Display: Modified International Non-Proprietary Name
  /// Definition:
  INNM('INNM'),

  /// Display: Proposed International Non-Proprietary Name
  /// Definition:
  pINN('pINN'),

  /// Display: Recommended International Non-Proprietary Name
  /// Definition:
  rINN('rINN'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProductNameType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProductNameType] instances.
  static ProductNameType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNameType.elementOnly.withElement(element);
    }
    return ProductNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProductNameType withElement(Element? newElement) {
    return ProductNameType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
