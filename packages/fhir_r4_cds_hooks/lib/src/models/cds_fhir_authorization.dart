/// FHIR authorization details provided in a CDS Hooks request.
///
/// Note: CDS Hooks uses snake_case for these JSON fields per the spec.
class CdsFhirAuthorization {
  /// Creates a [CdsFhirAuthorization].
  CdsFhirAuthorization({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.scope,
    required this.subject,
  });

  /// Creates a [CdsFhirAuthorization] from a JSON map.
  factory CdsFhirAuthorization.fromJson(Map<String, dynamic> json) {
    return CdsFhirAuthorization(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as int,
      scope: json['scope'] as String,
      subject: json['subject'] as String,
    );
  }

  /// The OAuth 2.0 access token.
  final String accessToken;

  /// The token type (typically "Bearer").
  final String tokenType;

  /// The lifetime of the access token in seconds.
  final int expiresIn;

  /// The scopes granted.
  final String scope;

  /// The subject (user) the token represents.
  final String subject;

  /// Serializes to a JSON map using snake_case keys per the CDS Hooks spec.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'scope': scope,
        'subject': subject,
      };

  /// Returns a copy with the given fields replaced.
  CdsFhirAuthorization copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? scope,
    String? subject,
  }) {
    return CdsFhirAuthorization(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      scope: scope ?? this.scope,
      subject: subject ?? this.subject,
    );
  }
}
