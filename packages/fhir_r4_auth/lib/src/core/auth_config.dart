/// Configuration models for authentication
library;

import 'package:fhir_r4/fhir_r4.dart' show FhirUri;
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show LaunchType, ClientAuthMethod, SmartCapability;

/// Base configuration for FHIR authentication
class AuthConfig {
  const AuthConfig({
    required this.fhirBaseUrl,
    required this.clientId,
    required this.redirectUri,
    this.scopes = const [],
    this.clientSecret,
    this.authMethod = ClientAuthMethod.none,
  });

  /// FHIR server base URL
  final FhirUri fhirBaseUrl;

  /// OAuth client ID
  final String clientId;

  /// OAuth redirect URI
  final Uri redirectUri;

  /// Requested scopes
  final List<String> scopes;

  /// Client secret (for confidential clients)
  final String? clientSecret;

  /// Client authentication method
  final ClientAuthMethod authMethod;

  /// Check if this is a public client
  bool get isPublicClient => authMethod == ClientAuthMethod.none;

  /// Check if this is a confidential client
  bool get isConfidentialClient => !isPublicClient;

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'fhirBaseUrl': fhirBaseUrl.toString(),
      'clientId': clientId,
      'redirectUri': redirectUri.toString(),
      'scopes': scopes,
      if (clientSecret != null) 'clientSecret': clientSecret,
      'authMethod': authMethod.name,
    };
  }

  /// Create from JSON
  factory AuthConfig.fromJson(Map<String, dynamic> json) {
    return AuthConfig(
      fhirBaseUrl: FhirUri(json['fhirBaseUrl'] as String),
      clientId: json['clientId'] as String,
      redirectUri: Uri.parse(json['redirectUri'] as String),
      scopes: (json['scopes'] as List<dynamic>?)?.cast<String>() ?? [],
      clientSecret: json['clientSecret'] as String?,
      authMethod: ClientAuthMethod.values.byName(
        json['authMethod'] as String? ?? 'none',
      ),
    );
  }
}

/// SMART on FHIR specific configuration
class SmartConfig extends AuthConfig {
  const SmartConfig({
    required super.fhirBaseUrl,
    required super.clientId,
    required super.redirectUri,
    super.scopes,
    super.clientSecret,
    super.authMethod,
    this.launchType = LaunchType.standalone,
    this.launchToken,
    this.iss,
    this.authorizeUrl,
    this.tokenUrl,
    this.capabilities = const [],
    this.customParameters = const {},
    this.audience,
    this.needPatientBanner,
    this.smartStyleUrl,
    this.intent,
    this.tenant,
    this.enablePkce = true,
    this.enableOpenId = true,
    this.offlineAccess = false,
  });

  /// Type of SMART launch
  final LaunchType launchType;

  /// Launch token for EHR launches
  final String? launchToken;

  /// Issuer URL (for EHR launches)
  final String? iss;

  /// Override authorization endpoint
  final Uri? authorizeUrl;

  /// Override token endpoint
  final Uri? tokenUrl;

  /// SMART capabilities supported
  final List<SmartCapability> capabilities;

  /// Custom parameters for authorization
  final Map<String, String> customParameters;

  /// Audience parameter (aud)
  final String? audience;

  /// Whether to show patient banner
  final bool? needPatientBanner;

  /// URL for SMART styling
  final String? smartStyleUrl;

  /// Launch intent
  final String? intent;

  /// Tenant identifier
  final String? tenant;

  /// Enable PKCE (should always be true)
  final bool enablePkce;

  /// Request OpenID Connect
  final bool enableOpenId;

  /// Request offline access (refresh tokens)
  final bool offlineAccess;

  /// Get effective audience (defaults to FHIR base URL)
  String get effectiveAudience => audience ?? fhirBaseUrl.toString();

  /// Check if this is an EHR launch
  bool get isEhrLaunch => launchType == LaunchType.ehr;

  /// Check if this is a standalone launch
  bool get isStandaloneLaunch => launchType == LaunchType.standalone;

  /// Check if this is a backend service
  bool get isBackendService => launchType == LaunchType.backend;

  /// Build authorization parameters
  Map<String, String> buildAuthorizationParameters() {
    final params = <String, String>{};

    // Add SMART-specific parameters
    if (launchToken != null && isEhrLaunch) {
      params['launch'] = launchToken!;
    }

    if (iss != null) {
      params['aud'] = iss!;
    } else {
      params['aud'] = effectiveAudience;
    }

    if (needPatientBanner != null) {
      params['need_patient_banner'] = needPatientBanner.toString();
    }

    if (smartStyleUrl != null) {
      params['smart_style_url'] = smartStyleUrl!;
    }

    if (intent != null) {
      params['intent'] = intent!;
    }

    if (tenant != null) {
      params['tenant'] = tenant!;
    }

    // Add custom parameters
    params.addAll(customParameters);

    return params;
  }

  /// Build scopes list with SMART defaults
  List<String> buildScopes() {
    final scopeSet = <String>{};

    // Add configured scopes
    scopeSet.addAll(scopes);

    // Add OpenID if enabled
    if (enableOpenId) {
      scopeSet.add('openid');
      scopeSet.add('fhirUser');
    }

    // Add offline access if requested
    if (offlineAccess) {
      scopeSet.add('offline_access');
    }

    // Add launch scope for standalone
    if (isStandaloneLaunch) {
      scopeSet.add('launch/patient');
    }

    return scopeSet.toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'launchType': launchType.name,
      if (launchToken != null) 'launchToken': launchToken,
      if (iss != null) 'iss': iss,
      if (authorizeUrl != null) 'authorizeUrl': authorizeUrl.toString(),
      if (tokenUrl != null) 'tokenUrl': tokenUrl.toString(),
      'capabilities': capabilities.map((c) => c.value).toList(),
      'customParameters': customParameters,
      if (audience != null) 'audience': audience,
      if (needPatientBanner != null) 'needPatientBanner': needPatientBanner,
      if (smartStyleUrl != null) 'smartStyleUrl': smartStyleUrl,
      if (intent != null) 'intent': intent,
      if (tenant != null) 'tenant': tenant,
      'enablePkce': enablePkce,
      'enableOpenId': enableOpenId,
      'offlineAccess': offlineAccess,
    };
  }

  /// Create from JSON
  factory SmartConfig.fromJson(Map<String, dynamic> json) {
    final base = AuthConfig.fromJson(json);
    return SmartConfig(
      fhirBaseUrl: base.fhirBaseUrl,
      clientId: base.clientId,
      redirectUri: base.redirectUri,
      scopes: base.scopes,
      clientSecret: base.clientSecret,
      authMethod: base.authMethod,
      launchType: LaunchType.values.byName(
        json['launchType'] as String? ?? 'standalone',
      ),
      launchToken: json['launchToken'] as String?,
      iss: json['iss'] as String?,
      authorizeUrl: json['authorizeUrl'] != null
          ? Uri.parse(json['authorizeUrl'] as String)
          : null,
      tokenUrl: json['tokenUrl'] != null
          ? Uri.parse(json['tokenUrl'] as String)
          : null,
      capabilities: (json['capabilities'] as List<dynamic>?)
              ?.map((c) => SmartCapability.values
                  .firstWhere((cap) => cap.value == c as String))
              .toList() ??
          [],
      customParameters: (json['customParameters'] as Map<String, dynamic>?)
              ?.cast<String, String>() ??
          const {},
      audience: json['audience'] as String?,
      needPatientBanner: json['needPatientBanner'] as bool?,
      smartStyleUrl: json['smartStyleUrl'] as String?,
      intent: json['intent'] as String?,
      tenant: json['tenant'] as String?,
      enablePkce: json['enablePkce'] as bool? ?? true,
      enableOpenId: json['enableOpenId'] as bool? ?? true,
      offlineAccess: json['offlineAccess'] as bool? ?? false,
    );
  }

  /// Create from launch parameters (e.g., from URL query)
  factory SmartConfig.fromLaunchParameters({
    required Map<String, String> parameters,
    required Uri currentUrl,
    required String clientId,
    Uri? redirectUri,
    List<String>? scopes,
    String? clientSecret,
  }) {
    // Extract SMART parameters
    final iss = parameters['iss'];
    final launch = parameters['launch'];

    // Determine launch type
    final launchType = launch != null ? LaunchType.ehr : LaunchType.standalone;

    // Build redirect URI if not provided
    redirectUri ??= Uri(
      scheme: currentUrl.scheme,
      host: currentUrl.host,
      port: currentUrl.port,
      path: '/redirect',
    );

    return SmartConfig(
      fhirBaseUrl: FhirUri(iss ?? currentUrl.toString()),
      clientId: clientId,
      redirectUri: redirectUri,
      scopes: scopes ?? [],
      clientSecret: clientSecret,
      launchType: launchType,
      launchToken: launch,
      iss: iss,
      audience: iss,
    );
  }
}

/// Backend service configuration
class BackendServiceConfig extends AuthConfig {
  BackendServiceConfig({
    required super.fhirBaseUrl,
    required super.clientId,
    required this.privateKey,
    required this.tokenUrl,
    super.scopes,
    this.algorithm = 'RS384',
    this.keyId,
    this.tokenLifetime = const Duration(minutes: 5),
  }) : super(
          redirectUri: Uri.parse('urn:ietf:wg:oauth:2.0:oob'),
          authMethod: ClientAuthMethod.privateKeyJwt,
        );

  /// Private key for JWT signing
  final String privateKey;

  /// Token endpoint URL
  final Uri tokenUrl;

  /// JWT signing algorithm
  final String algorithm;

  /// Key ID for JWT header
  final String? keyId;

  /// JWT token lifetime
  final Duration tokenLifetime;

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'privateKey': privateKey,
      'tokenUrl': tokenUrl.toString(),
      'algorithm': algorithm,
      if (keyId != null) 'keyId': keyId,
      'tokenLifetime': tokenLifetime.inSeconds,
    };
  }
}
