/// Types of security services used with FHIR.
enum RestfulSecurityService {
  /// Display: OAuth
  /// Definition: OAuth (unspecified version see oauth.net).
  OAuth,

  /// Display: SMART-on-FHIR
  /// Definition: OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).
  SMART_on_FHIR,

  /// Display: NTLM
  /// Definition: Microsoft NTLM Authentication.
  NTLM,

  /// Display: Basic
  /// Definition: Basic authentication defined in HTTP specification.
  Basic,

  /// Display: Kerberos
  /// Definition: see http://www.ietf.org/rfc/rfc4120.txt.
  Kerberos,

  /// Display: Certificates
  /// Definition: SSL where client must have a certificate registered with the server.
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

  /// Returns a [String] from a [RestfulSecurityService] enum.
  String toJson() => toString();

  /// Returns a [RestfulSecurityService] from a [String] enum.
  static RestfulSecurityService fromString(String str) {
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

  /// Returns a [RestfulSecurityService] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RestfulSecurityService fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
