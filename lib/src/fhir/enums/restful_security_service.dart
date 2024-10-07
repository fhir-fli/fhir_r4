import 'package:json_annotation/json_annotation.dart';

/// Types of security services used with FHIR.
enum RestfulSecurityService {
  /// Display: OAuth
  /// Definition: OAuth (unspecified version see oauth.net).
  @JsonValue('OAuth')
  OAuth,

  /// Display: SMART-on-FHIR
  /// Definition: OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).
  @JsonValue('SMART-on-FHIR')
  SMART_on_FHIR,

  /// Display: NTLM
  /// Definition: Microsoft NTLM Authentication.
  @JsonValue('NTLM')
  NTLM,

  /// Display: Basic
  /// Definition: Basic authentication defined in HTTP specification.
  @JsonValue('Basic')
  Basic,

  /// Display: Kerberos
  /// Definition: see http://www.ietf.org/rfc/rfc4120.txt.
  @JsonValue('Kerberos')
  Kerberos,

  /// Display: Certificates
  /// Definition: SSL where client must have a certificate registered with the server.
  @JsonValue('Certificates')
  Certificates,
  ;

  @override
  String toString() {
    switch (this) {
      case OAuth:
        return 'OAuth';
      case SMART_on_FHIR:
        return 'SMART-on-FHIR';
      case NTLM:
        return 'NTLM';
      case Basic:
        return 'Basic';
      case Kerberos:
        return 'Kerberos';
      case Certificates:
        return 'Certificates';
    }
  }

  String toJson() => toString();
  RestfulSecurityService fromString(String str) {
    switch (str) {
      case 'OAuth':
        return RestfulSecurityService.OAuth;
      case 'SMART-on-FHIR':
        return RestfulSecurityService.SMART_on_FHIR;
      case 'NTLM':
        return RestfulSecurityService.NTLM;
      case 'Basic':
        return RestfulSecurityService.Basic;
      case 'Kerberos':
        return RestfulSecurityService.Kerberos;
      case 'Certificates':
        return RestfulSecurityService.Certificates;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  RestfulSecurityService fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
