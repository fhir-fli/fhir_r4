import 'package:fhir_r4/fhir_r4.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
enum XPathUsageType {
  /// Display: Normal
  /// Definition: The search parameter is derived directly from the selected nodes based on the type definitions.
  normal('normal'),

  /// Display: Phonetic
  /// Definition: The search parameter is derived by a phonetic transform from the selected nodes.
  phonetic('phonetic'),

  /// Display: Nearby
  /// Definition: The search parameter is based on a spatial transform of the selected nodes.
  nearby('nearby'),

  /// Display: Distance
  /// Definition: The search parameter is based on a spatial transform of the selected nodes, using physical distance from the middle.
  distance('distance'),

  /// Display: Other
  /// Definition: The interpretation of the xpath statement is unknown (and can't be automated).
  other('other'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const XPathUsageType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static XPathUsageType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(element);
    }
    return XPathUsageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
