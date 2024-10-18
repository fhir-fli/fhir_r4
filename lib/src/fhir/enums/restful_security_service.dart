// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RestfulSecurityService(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RestfulSecurityService] instances.
  static RestfulSecurityService fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulSecurityService.elementOnly.withElement(element);
    }
    return RestfulSecurityService.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RestfulSecurityService withElement(Element? newElement) {
    return RestfulSecurityService.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
