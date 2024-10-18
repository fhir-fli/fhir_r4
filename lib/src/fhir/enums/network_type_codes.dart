// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Network type codes.
enum NetworkTypeCodes {
  /// Display: In Network
  /// Definition: Services rendered by a Network provider
  in_('in'),

  /// Display: Out of Network
  /// Definition: Services rendered by a provider who is not in the Network
  out('out'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NetworkTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NetworkTypeCodes] instances.
  static NetworkTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NetworkTypeCodes.elementOnly.withElement(element);
    }
    return NetworkTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NetworkTypeCodes withElement(Element? newElement) {
    return NetworkTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
