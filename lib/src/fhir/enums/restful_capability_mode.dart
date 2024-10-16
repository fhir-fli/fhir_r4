import 'package:fhir_r4/fhir_r4.dart';

/// The mode of a RESTful capability statement.
enum RestfulCapabilityMode {
  /// Display: Client
  /// Definition: The application acts as a client for this resource.
  client('client'),

  /// Display: Server
  /// Definition: The application acts as a server for this resource.
  server('server'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RestfulCapabilityMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RestfulCapabilityMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulCapabilityMode.elementOnly.withElement(element);
    }
    return RestfulCapabilityMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RestfulCapabilityMode withElement(Element? newElement) {
    return RestfulCapabilityMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
