import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Network type codes.
enum NetworkTypeCodes {
  /// Display: In Network
  /// Definition: Services rendered by a Network provider
  in_('in'),

  /// Display: Out of Network
  /// Definition: Services rendered by a provider who is not in the Network
  out('out'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NetworkTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NetworkTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NetworkTypeCodes.elementOnly.withElement(element);
    }
    return NetworkTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NetworkTypeCodes withElement(Element? newElement) {
    return NetworkTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
