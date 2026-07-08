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

  /// Associates each variant with its OAuth `grant_type` wire [value].
  const GrantType(this.value);

  /// The `grant_type` wire value sent to the token endpoint
  /// (e.g. `authorization_code`).
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

  /// Associates each variant with its OAuth `response_type` wire [value].
  const ResponseType(this.value);

  /// The `response_type` wire value sent on the authorize request
  /// (e.g. `code`).
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

  /// Associates each variant with its `token_type` wire [value].
  const TokenType(this.value);

  /// The `token_type` value returned by the token endpoint and used
  /// in the `Authorization` scheme (e.g. `Bearer`).
  final String value;
}

/// PKCE code challenge methods
enum CodeChallengeMethod {
  /// SHA256 (required by SMART on FHIR)
  s256('S256'),

  /// Plain text (NOT supported by SMART on FHIR)
  plain('plain');

  /// Associates each variant with its `code_challenge_method` wire [value].
  const CodeChallengeMethod(this.value);

  /// The `code_challenge_method` wire value advertised during PKCE
  /// (e.g. `S256`).
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
  /// `launch-ehr`: supports launch from within an EHR session.
  launchEhr('launch-ehr'),

  /// `launch-standalone`: supports app-initiated standalone launch.
  launchStandalone('launch-standalone'),

  /// `client-public`: supports public clients (no secret).
  clientPublic('client-public'),

  /// `client-confidential-symmetric`: supports confidential clients
  /// authenticating with a shared client secret.
  clientConfidentialSymmetric('client-confidential-symmetric'),

  /// `client-confidential-asymmetric`: supports confidential clients
  /// authenticating with an asymmetric (private key JWT) credential.
  clientConfidentialAsymmetric('client-confidential-asymmetric'),

  /// `authorize-post`: supports POST to the authorization endpoint.
  authorizePost('authorize-post'),

  /// `context-ehr-patient`: supplies patient context on EHR launch.
  contextEhrPatient('context-ehr-patient'),

  /// `context-ehr-encounter`: supplies encounter context on EHR launch.
  contextEhrEncounter('context-ehr-encounter'),

  /// `context-standalone-patient`: supplies patient context on
  /// standalone launch.
  contextStandalonePatient('context-standalone-patient'),

  /// `context-standalone-encounter`: supplies encounter context on
  /// standalone launch.
  contextStandaloneEncounter('context-standalone-encounter'),

  /// `permission-offline`: supports refresh tokens for offline access.
  permissionOffline('permission-offline'),

  /// `permission-patient`: supports patient-level scopes.
  permissionPatient('permission-patient'),

  /// `permission-user`: supports user-level scopes.
  permissionUser('permission-user'),

  /// `permission-v1`: supports SMART v1 scope syntax.
  permissionV1('permission-v1'),

  /// `permission-v2`: supports SMART v2 scope syntax.
  permissionV2('permission-v2'),

  /// `sso-openid-connect`: supports OpenID Connect single sign-on
  /// (issues an `id_token`).
  ssoOpenidConnect('sso-openid-connect'),

  /// `context-style`: supplies a `smart_style_url` for UI theming.
  contextStyle('context-style'),

  /// `context-banner`: supplies a `need_patient_banner` flag.
  contextBanner('context-banner'),

  /// `pkce-support`: supports Proof Key for Code Exchange (PKCE).
  pkceSupported('pkce-support');

  /// Associates each variant with its SMART capability wire [value].
  const SmartCapability(this.value);

  /// The capability token advertised in the server's `.well-known`
  /// SMART configuration `capabilities` list (e.g. `launch-ehr`).
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

  /// Associates each variant with its JWA `alg` header [value].
  const JwtAlgorithm(this.value);

  /// The JWA algorithm identifier placed in a JWT `alg` header
  /// (e.g. `RS384`).
  final String value;
}

/// Storage keys for secure storage
class StorageKeys {
  /// Not instantiable — this class only holds static storage-key
  /// constants.
  StorageKeys._();

  /// Secure-storage key holding the current OAuth access token.
  static const String accessToken = 'fhir_access_token';

  /// Secure-storage key holding the OAuth refresh token.
  static const String refreshToken = 'fhir_refresh_token';

  /// Secure-storage key holding the OpenID Connect ID token.
  static const String idToken = 'fhir_id_token';

  /// Secure-storage key holding the access token's expiry timestamp.
  static const String tokenExpiry = 'fhir_token_expiry';

  /// Secure-storage key holding the launch patient context id.
  static const String patientId = 'fhir_patient_id';

  /// Secure-storage key holding the launch encounter context id.
  static const String encounterId = 'fhir_encounter_id';

  /// Secure-storage key holding the authenticated `fhirUser` URL.
  static const String fhirUser = 'fhir_user';

  /// Secure-storage key holding the serialized SMART launch context.
  static const String launchContext = 'fhir_launch_context';

  /// Secure-storage key holding the granted OAuth scopes.
  static const String scopes = 'fhir_scopes';

  /// Secure-storage key holding the FHIR authorization server issuer.
  static const String issuer = 'fhir_issuer';

  /// Secure-storage key holding the timestamp of the last token
  /// refresh.
  static const String lastRefresh = 'fhir_last_refresh';
}

/// HTTP header names
class HttpHeaders {
  /// Not instantiable — this class only holds static header-name
  /// constants.
  HttpHeaders._();

  /// `Authorization` header carrying the bearer token credential.
  static const String authorization = 'Authorization';

  /// `Content-Type` header describing the request body media type.
  static const String contentType = 'Content-Type';

  /// `Accept` header declaring the acceptable response media type.
  static const String accept = 'Accept';

  /// `User-Agent` header identifying this client library.
  static const String userAgent = 'User-Agent';

  /// `X-Request-ID` header used to correlate a request and response.
  static const String xRequestId = 'X-Request-ID';

  /// `X-Authorization-Scope` header conveying the granted OAuth
  /// scopes to a downstream FHIR resource server.
  static const String xAuthorizationScope = 'X-Authorization-Scope';

  /// `X-Authorization-Subject` header conveying the authorized
  /// subject (user) to a downstream FHIR resource server.
  static const String xAuthorizationSubject = 'X-Authorization-Subject';

  /// `X-Authorization-Issuer` header conveying the authorization
  /// server issuer to a downstream FHIR resource server.
  static const String xAuthorizationIssuer = 'X-Authorization-Issuer';
}

/// Content types
class ContentTypes {
  /// Not instantiable — this class only holds static media-type
  /// constants.
  ContentTypes._();

  /// `application/json` media type for plain JSON bodies.
  static const String json = 'application/json';

  /// `application/fhir+json` media type for FHIR resource bodies.
  static const String fhirJson = 'application/fhir+json';

  /// `application/x-www-form-urlencoded` media type used for OAuth
  /// token endpoint request bodies.
  static const String formUrlEncoded = 'application/x-www-form-urlencoded';

  /// `application/jwt` media type for a bare JWT body.
  static const String jwt = 'application/jwt';
}

/// OAuth 2.0 parameters
class OAuthParameters {
  /// Not instantiable — this class only holds static OAuth parameter
  /// name constants.
  OAuthParameters._();

  /// OAuth `response_type` parameter selecting the authorize flow.
  static const String responseType = 'response_type';

  /// OAuth `client_id` parameter identifying the registered app.
  static const String clientId = 'client_id';

  /// OAuth `client_secret` parameter for confidential-client auth.
  static const String clientSecret = 'client_secret';

  /// OAuth `redirect_uri` parameter the code is returned to.
  static const String redirectUri = 'redirect_uri';

  /// OAuth `scope` parameter listing the requested permissions.
  static const String scope = 'scope';

  /// OAuth `state` parameter for CSRF protection and round-tripping.
  static const String state = 'state';

  /// OpenID Connect `nonce` parameter binding the ID token to the
  /// authorize request.
  static const String nonce = 'nonce';

  /// PKCE `code_challenge` parameter derived from the code verifier.
  static const String codeChallenge = 'code_challenge';

  /// PKCE `code_challenge_method` parameter (e.g. `S256`).
  static const String codeChallengeMethod = 'code_challenge_method';

  /// PKCE `code_verifier` parameter sent when redeeming the code.
  static const String codeVerifier = 'code_verifier';

  /// OAuth `code` parameter carrying the authorization code.
  static const String code = 'code';

  /// OAuth `grant_type` parameter selecting the token request flow.
  static const String grantType = 'grant_type';

  /// OAuth `access_token` response field.
  static const String accessToken = 'access_token';

  /// OAuth `refresh_token` request/response field.
  static const String refreshToken = 'refresh_token';

  /// OpenID Connect `id_token` response field.
  static const String idToken = 'id_token';

  /// OAuth `token_type` response field (e.g. `Bearer`).
  static const String tokenType = 'token_type';

  /// OAuth `expires_in` response field (token lifetime in seconds).
  static const String expiresIn = 'expires_in';

  /// OAuth `error` response field carrying an error code.
  static const String error = 'error';

  /// OAuth `error_description` response field with human-readable
  /// detail.
  static const String errorDescription = 'error_description';

  /// OAuth `error_uri` response field linking to error documentation.
  static const String errorUri = 'error_uri';

  /// SMART `aud` parameter naming the target FHIR resource server.
  static const String aud = 'aud';

  /// SMART `launch` parameter carrying the opaque EHR launch token.
  static const String launch = 'launch';

  /// SMART `patient` token-response field with the in-context
  /// patient id.
  static const String patient = 'patient';

  /// SMART `encounter` token-response field with the in-context
  /// encounter id.
  static const String encounter = 'encounter';

  /// SMART `need_patient_banner` token-response flag indicating the
  /// app should render a patient banner.
  static const String needPatientBanner = 'need_patient_banner';

  /// SMART `smart_style_url` token-response field linking to UI
  /// styling directives.
  static const String smartStyleUrl = 'smart_style_url';

  /// SMART `intent` parameter conveying the app's launch intent.
  static const String intent = 'intent';

  /// SMART `tenant` parameter identifying a multi-tenant EHR tenant.
  static const String tenant = 'tenant';

  /// OAuth `client_assertion` parameter carrying the signed JWT used
  /// for asymmetric client authentication.
  static const String clientAssertion = 'client_assertion';

  /// OAuth `client_assertion_type` parameter naming the assertion
  /// format (see [jwtBearerUrn]).
  static const String clientAssertionType = 'client_assertion_type';

  /// The `client_assertion_type` value identifying a JWT bearer
  /// client assertion.
  static const String jwtBearerUrn =
      'urn:ietf:params:oauth:client-assertion-type:jwt-bearer';
}

/// Token expiry buffer times
class TokenExpiryBuffer {
  /// Not instantiable — this class only holds static duration
  /// constants.
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
  /// Not instantiable — this class only holds static user-agent
  /// constants.
  UserAgent._();

  /// Package name component of the `User-Agent` string.
  static const String package = 'fhir_r4_auth';

  /// Version component of the `User-Agent` string.
  static const String version = '1.0.0';

  /// Full `User-Agent` value in `package/version` form.
  static const String full = '$package/$version';
}
