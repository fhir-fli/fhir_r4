/// Core type definitions and enums for FHIR authentication
library;

/// OAuth 2.0 grant types
enum GrantType {
  /// Authorization code grant (most common for SMART on FHIR)
  authorizationCode('authorization_code'),

  /// Client credentials grant (for backend services)
  clientCredentials('client_credentials'),

  /// Refresh token grant
  refreshToken('refresh_token'),

  /// JWT bearer grant (SMART Backend Services)
  jwtBearer('urn:ietf:params:oauth:grant-type:jwt-bearer');

  const GrantType(this.value);
  final String value;
}

/// OAuth 2.0 response types
enum ResponseType {
  /// Authorization code response
  code('code'),

  /// Token response (implicit flow - deprecated)
  token('token'),

  /// ID token response
  idToken('id_token'),

  /// Code and ID token
  codeIdToken('code id_token');

  const ResponseType(this.value);
  final String value;
}

/// SMART on FHIR launch types
enum LaunchType {
  /// EHR launch (launched from within EHR)
  ehr,

  /// Standalone launch (launched independently)
  standalone,

  /// Backend service (no user context)
  backend,
}

/// SMART on FHIR context types
enum ContextType {
  /// Patient context
  patient,

  /// Encounter context
  encounter,

  /// Location context
  location,

  /// Practitioner context
  practitioner,

  /// Organization context
  organization,
}

/// Token types
enum TokenType {
  /// Bearer token (most common)
  bearer('Bearer'),

  /// MAC token (less common)
  mac('MAC'),

  /// JWT token
  jwt('JWT');

  const TokenType(this.value);
  final String value;
}

/// PKCE code challenge methods
enum CodeChallengeMethod {
  /// SHA256 (required by SMART on FHIR)
  s256('S256'),

  /// Plain text (NOT supported by SMART on FHIR)
  plain('plain');

  const CodeChallengeMethod(this.value);
  final String value;
}

/// Client authentication methods
enum ClientAuthMethod {
  /// No authentication (public clients)
  none,

  /// Client secret in POST body
  clientSecretPost,

  /// Client secret in Basic auth header
  clientSecretBasic,

  /// JWT assertion (SMART Backend Services)
  privateKeyJwt,
}

/// SMART on FHIR capabilities
enum SmartCapability {
  /// Launch capabilities
  launchEhr('launch-ehr'),
  launchStandalone('launch-standalone'),

  /// Client types
  clientPublic('client-public'),
  clientConfidentialSymmetric('client-confidential-symmetric'),
  clientConfidentialAsymmetric('client-confidential-asymmetric'),

  /// Grant types
  authorizePost('authorize-post'),

  /// Launch context
  contextEhrPatient('context-ehr-patient'),
  contextEhrEncounter('context-ehr-encounter'),
  contextStandalonePatient('context-standalone-patient'),
  contextStandaloneEncounter('context-standalone-encounter'),

  /// Permissions
  permissionOffline('permission-offline'),
  permissionPatient('permission-patient'),
  permissionUser('permission-user'),
  permissionV1('permission-v1'),
  permissionV2('permission-v2'),

  /// Single sign-on
  ssoOpenidConnect('sso-openid-connect'),

  /// Launch context styles
  contextStyle('context-style'),
  contextBanner('context-banner'),

  /// PKCE support
  pkceSupported('pkce-support');

  const SmartCapability(this.value);
  final String value;
}

/// JWT signing algorithms
enum JwtAlgorithm {
  /// RSA with SHA-384 (required by SMART Backend Services)
  rs384('RS384'),

  /// ECDSA with SHA-384 (required by SMART Backend Services)
  es384('ES384'),

  /// RSA with SHA-256
  rs256('RS256'),

  /// ECDSA with SHA-256
  es256('ES256'),

  /// HMAC with SHA-256 (symmetric)
  hs256('HS256');

  const JwtAlgorithm(this.value);
  final String value;
}

/// Storage keys for secure storage
class StorageKeys {
  StorageKeys._();

  static const String accessToken = 'fhir_access_token';
  static const String refreshToken = 'fhir_refresh_token';
  static const String idToken = 'fhir_id_token';
  static const String tokenExpiry = 'fhir_token_expiry';
  static const String patientId = 'fhir_patient_id';
  static const String encounterId = 'fhir_encounter_id';
  static const String fhirUser = 'fhir_user';
  static const String launchContext = 'fhir_launch_context';
  static const String scopes = 'fhir_scopes';
  static const String issuer = 'fhir_issuer';
  static const String lastRefresh = 'fhir_last_refresh';
}

/// HTTP header names
class HttpHeaders {
  HttpHeaders._();

  static const String authorization = 'Authorization';
  static const String contentType = 'Content-Type';
  static const String accept = 'Accept';
  static const String userAgent = 'User-Agent';
  static const String xRequestId = 'X-Request-ID';

  // SMART on FHIR specific headers
  static const String xAuthorizationScope = 'X-Authorization-Scope';
  static const String xAuthorizationSubject = 'X-Authorization-Subject';
  static const String xAuthorizationIssuer = 'X-Authorization-Issuer';
}

/// Content types
class ContentTypes {
  ContentTypes._();

  static const String json = 'application/json';
  static const String fhirJson = 'application/fhir+json';
  static const String formUrlEncoded = 'application/x-www-form-urlencoded';
  static const String jwt = 'application/jwt';
}

/// OAuth 2.0 parameters
class OAuthParameters {
  OAuthParameters._();

  static const String responseType = 'response_type';
  static const String clientId = 'client_id';
  static const String clientSecret = 'client_secret';
  static const String redirectUri = 'redirect_uri';
  static const String scope = 'scope';
  static const String state = 'state';
  static const String nonce = 'nonce';
  static const String codeChallenge = 'code_challenge';
  static const String codeChallengeMethod = 'code_challenge_method';
  static const String codeVerifier = 'code_verifier';
  static const String code = 'code';
  static const String grantType = 'grant_type';
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String idToken = 'id_token';
  static const String tokenType = 'token_type';
  static const String expiresIn = 'expires_in';
  static const String error = 'error';
  static const String errorDescription = 'error_description';
  static const String errorUri = 'error_uri';

  // SMART specific
  static const String aud = 'aud';
  static const String launch = 'launch';
  static const String patient = 'patient';
  static const String encounter = 'encounter';
  static const String needPatientBanner = 'need_patient_banner';
  static const String smartStyleUrl = 'smart_style_url';
  static const String intent = 'intent';
  static const String tenant = 'tenant';

  // JWT assertion parameters
  static const String clientAssertion = 'client_assertion';
  static const String clientAssertionType = 'client_assertion_type';
  static const String jwtBearerUrn =
      'urn:ietf:params:oauth:client-assertion-type:jwt-bearer';
}

/// Token expiry buffer times
class TokenExpiryBuffer {
  TokenExpiryBuffer._();

  /// Buffer before access token expiry to trigger refresh (5 minutes)
  static const Duration accessToken = Duration(minutes: 5);

  /// Buffer before refresh token expiry to trigger re-authentication (1 hour)
  static const Duration refreshToken = Duration(hours: 1);

  /// Default token lifetime if not specified (1 hour)
  static const Duration defaultLifetime = Duration(hours: 1);
}

/// User agent for HTTP requests
class UserAgent {
  UserAgent._();

  static const String package = 'fhir_r4_auth';
  static const String version = '1.0.0';
  static const String full = '$package/$version';
}
