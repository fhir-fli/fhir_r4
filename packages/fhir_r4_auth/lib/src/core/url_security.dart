/// Transport-security helpers for OAuth 2.0 / OpenID Connect endpoints.
///
/// SMART on FHIR requires every OAuth/OIDC endpoint (authorization, token,
/// revocation, introspection, and the JWKS URI) to be served over TLS. These
/// helpers enforce that centrally, while still permitting plaintext `http`
/// on loopback addresses so local development and integration servers keep
/// working.
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show SecurityException, SecurityViolationType;

/// Loopback hosts permitted to use plaintext `http` for local development.
const Set<String> _loopbackHosts = <String>{'localhost', '127.0.0.1', '::1'};

/// Whether [uri] is safe to use for an OAuth/OIDC network call.
///
/// `https` is always considered secure. Plaintext `http` is considered secure
/// only when the host is a loopback address (local development). Every other
/// scheme/host combination is treated as insecure.
bool isSecureAuthUrl(Uri uri) {
  if (uri.scheme == 'https') return true;
  if (uri.scheme == 'http' && _loopbackHosts.contains(uri.host)) return true;
  return false;
}

/// Throws a [SecurityException] unless [uri] is a secure OAuth/OIDC endpoint.
///
/// [field] names the endpoint being validated (used in the error message).
/// Set [allowInsecure] to bypass the check for tests or an explicitly
/// opted-in insecure development environment.
void assertSecureAuthUrl(
  Uri uri, {
  required String field,
  bool allowInsecure = false,
}) {
  if (allowInsecure) return;
  if (isSecureAuthUrl(uri)) return;
  throw SecurityException(
    'Insecure OAuth endpoint URL for $field',
    details: 'Refusing to use non-HTTPS URL "$uri" for $field. SMART on FHIR '
        'requires TLS for all OAuth/OpenID Connect endpoints; only https (or '
        'http on a loopback host for development) is permitted. Set '
        'allowInsecureConnections to override in development.',
    securityViolationType: SecurityViolationType.insecureConnection,
  );
}
