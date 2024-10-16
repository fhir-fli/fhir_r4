import 'package:fhir_r4/fhir_r4.dart';

/// Types of security services used with FHIR.
enum RestfulSecurityService {
  /// Display: OAuth
  /// Definition: OAuth (unspecified version see oauth.net).
  OAuth('OAuth'),

  /// Display: SMART-on-FHIR
  /// Definition: OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).
  SMART_on_FHIR('SMART-on-FHIR'),

  /// Display: NTLM
  /// Definition: Microsoft NTLM Authentication.
  NTLM('NTLM'),

  /// Display: Basic
  /// Definition: Basic authentication defined in HTTP specification.
  Basic('Basic'),

  /// Display: Kerberos
  /// Definition: see http://www.ietf.org/rfc/rfc4120.txt.
  Kerberos('Kerberos'),

  /// Display: Certificates
  /// Definition: SSL where client must have a certificate registered with the server.
  Certificates('Certificates'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RestfulSecurityService(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RestfulSecurityService fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulSecurityService.elementOnly.withElement(element);
    }
    return RestfulSecurityService.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RestfulSecurityService withElement(Element? newElement) {
    return RestfulSecurityService.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
