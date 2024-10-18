// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of an address (physical / postal).
enum AddressType {
  /// Display: Postal
  /// Definition: Mailing addresses - PO Boxes and care-of addresses.
  postal('postal'),

  /// Display: Physical
  /// Definition: A physical address that can be visited.
  physical('physical'),

  /// Display: Postal & Physical
  /// Definition: An address that is both physical and postal.
  both('both'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AddressType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AddressType] instances.
  static AddressType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    }
    return AddressType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AddressType withElement(Element? newElement) {
    return AddressType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
