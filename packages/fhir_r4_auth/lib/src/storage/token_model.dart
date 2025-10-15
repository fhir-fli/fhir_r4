/// Token data models for secure storage
library;

import 'dart:convert';
import '../core/auth_types.dart';

/// Represents OAuth 2.0 tokens and associated SMART on FHIR metadata
class SmartTokenResponse {
  SmartTokenResponse({
    required this.accessToken,
    this.refreshToken,
    this.idToken,
    this.tokenType = 'Bearer',
    this.expiresIn,
    this.scope,
    DateTime? issuedAt,
    this.patientContext,
    this.encounterContext,
    this.fhirUser,
    this.needPatientBanner,
    this.smartStyleUrl,
    this.intent,
    this.tenant,
    this.additionalClaims = const {},
  }) : issuedAt = issuedAt ?? DateTime.now();

  /// Access token for API calls
  final String accessToken;

  /// Refresh token for obtaining new access tokens
  final String? refreshToken;

  /// ID token containing user claims (OpenID Connect)
  final String? idToken;

  /// Token type (usually 'Bearer')
  final String tokenType;

  /// Lifetime in seconds
  final int? expiresIn;

  /// Granted scopes (space-delimited)
  final String? scope;

  /// When the token was issued
  final DateTime issuedAt;

  /// SMART patient context
  final String? patientContext;

  /// SMART encounter context
  final String? encounterContext;

  /// FHIR user reference
  final String? fhirUser;

  /// Whether to show patient banner
  final bool? needPatientBanner;

  /// URL for SMART styling
  final String? smartStyleUrl;

  /// Launch intent
  final String? intent;

  /// Tenant identifier
  final String? tenant;

  /// Additional claims from the token response
  final Map<String, dynamic> additionalClaims;

  /// Calculate expiry time
  DateTime? get expiresAt {
    if (expiresIn == null) return null;
    return issuedAt.add(Duration(seconds: expiresIn!));
  }

  /// Check if token is expired (with buffer)
  bool get isExpired {
    final expiry = expiresAt;
    if (expiry == null) return false;
    return DateTime.now().isAfter(
      expiry.subtract(TokenExpiryBuffer.accessToken),
    );
  }

  /// Check if refresh token is expired (with buffer)
  bool get isRefreshExpired {
    if (refreshToken == null) return true;

    // Per OAuth 2.0 RFC 6749: refresh token expiration is intentionally not
    // communicated to the client. SMART on FHIR does not define refresh_expires_in.
    // Refresh tokens typically have much longer lifetimes than access tokens,
    // or don't expire at all until revoked by the user or authorization server.
    // We treat refresh tokens as valid until the server tells us otherwise.
    return false;
  }

  /// Parse granted scopes into a list
  List<String> get scopesList {
    if (scope == null || scope!.isEmpty) return <String>[];
    return scope!.split(' ');
  }

  /// Create from OAuth token response
  factory SmartTokenResponse.fromJson(Map<String, dynamic> json) {
    return SmartTokenResponse(
      accessToken: json[OAuthParameters.accessToken] as String,
      refreshToken: json[OAuthParameters.refreshToken] as String?,
      idToken: json[OAuthParameters.idToken] as String?,
      tokenType: json[OAuthParameters.tokenType] as String? ?? 'Bearer',
      expiresIn: json[OAuthParameters.expiresIn] as int?,
      scope: json[OAuthParameters.scope] as String?,
      patientContext: json[OAuthParameters.patient] as String?,
      encounterContext: json[OAuthParameters.encounter] as String?,
      fhirUser: json['fhirUser'] as String?,
      needPatientBanner: json[OAuthParameters.needPatientBanner] as bool?,
      smartStyleUrl: json[OAuthParameters.smartStyleUrl] as String?,
      intent: json[OAuthParameters.intent] as String?,
      tenant: json[OAuthParameters.tenant] as String?,
      additionalClaims: Map<String, dynamic>.from(json)
        ..removeWhere((key, _) => _standardKeys.contains(key)),
    );
  }

  /// Convert to JSON for storage
  Map<String, dynamic> toJson() {
    return {
      OAuthParameters.accessToken: accessToken,
      if (refreshToken != null) OAuthParameters.refreshToken: refreshToken,
      if (idToken != null) OAuthParameters.idToken: idToken,
      OAuthParameters.tokenType: tokenType,
      if (expiresIn != null) OAuthParameters.expiresIn: expiresIn,
      if (scope != null) OAuthParameters.scope: scope,
      'issuedAt': issuedAt.toIso8601String(),
      if (patientContext != null) OAuthParameters.patient: patientContext,
      if (encounterContext != null) OAuthParameters.encounter: encounterContext,
      if (fhirUser != null) 'fhirUser': fhirUser,
      if (needPatientBanner != null)
        OAuthParameters.needPatientBanner: needPatientBanner,
      if (smartStyleUrl != null) OAuthParameters.smartStyleUrl: smartStyleUrl,
      if (intent != null) OAuthParameters.intent: intent,
      if (tenant != null) OAuthParameters.tenant: tenant,
      ...additionalClaims,
    };
  }

  /// Create from stored JSON string
  factory SmartTokenResponse.fromStoredJson(String json) {
    final map = jsonDecode(json) as Map<String, dynamic>;
    if (map['issuedAt'] != null) {
      map['issuedAt'] = DateTime.parse(map['issuedAt'] as String);
    }
    return SmartTokenResponse.fromJson(map);
  }

  /// Convert to JSON string for storage
  String toStoredJson() => jsonEncode(toJson());

  /// Standard OAuth/SMART keys to exclude from additional claims
  static final Set<String> _standardKeys = {
    OAuthParameters.accessToken,
    OAuthParameters.refreshToken,
    OAuthParameters.idToken,
    OAuthParameters.tokenType,
    OAuthParameters.expiresIn,
    OAuthParameters.scope,
    OAuthParameters.patient,
    OAuthParameters.encounter,
    'fhirUser',
    OAuthParameters.needPatientBanner,
    OAuthParameters.smartStyleUrl,
    OAuthParameters.intent,
    OAuthParameters.tenant,
    'issuedAt',
  };

  /// Create a copy with updated fields
  SmartTokenResponse copyWith({
    String? accessToken,
    String? refreshToken,
    String? idToken,
    String? tokenType,
    int? expiresIn,
    String? scope,
    DateTime? issuedAt,
    String? patientContext,
    String? encounterContext,
    String? fhirUser,
    bool? needPatientBanner,
    String? smartStyleUrl,
    String? intent,
    String? tenant,
    Map<String, dynamic>? additionalClaims,
  }) {
    return SmartTokenResponse(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      idToken: idToken ?? this.idToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      scope: scope ?? this.scope,
      issuedAt: issuedAt ?? this.issuedAt,
      patientContext: patientContext ?? this.patientContext,
      encounterContext: encounterContext ?? this.encounterContext,
      fhirUser: fhirUser ?? this.fhirUser,
      needPatientBanner: needPatientBanner ?? this.needPatientBanner,
      smartStyleUrl: smartStyleUrl ?? this.smartStyleUrl,
      intent: intent ?? this.intent,
      tenant: tenant ?? this.tenant,
      additionalClaims: additionalClaims ?? this.additionalClaims,
    );
  }
}

/// Represents a JWT token's claims
class JwtClaims {
  JwtClaims({
    required this.issuer,
    required this.subject,
    required this.audience,
    required this.expiresAt,
    required this.issuedAt,
    required this.notBefore,
    this.jwtId,
    this.nonce,
    this.azp,
    this.additionalClaims = const {},
  });

  /// Token issuer (iss)
  final String issuer;

  /// Subject (sub) - usually user ID
  final String subject;

  /// Audience (aud) - intended recipient
  final dynamic audience; // Can be String or List<String>

  /// Expiration time (exp)
  final DateTime expiresAt;

  /// Issued at (iat)
  final DateTime issuedAt;

  /// Not before (nbf)
  final DateTime notBefore;

  /// JWT ID (jti)
  final String? jwtId;

  /// Nonce for replay protection
  final String? nonce;

  /// Authorized party (azp)
  final String? azp;

  /// Additional non-standard claims
  final Map<String, dynamic> additionalClaims;

  /// Check if token is expired
  bool get isExpired => DateTime.now().isAfter(expiresAt);

  /// Check if token is not yet valid
  bool get isNotYetValid => DateTime.now().isBefore(notBefore);

  /// Check if token is currently valid
  bool get isValid => !isExpired && !isNotYetValid;

  /// Parse from JWT payload
  factory JwtClaims.fromJson(Map<String, dynamic> json) {
    // Handle numeric date values (seconds since epoch)
    DateTime parseNumericDate(dynamic value) {
      if (value is int) {
        return DateTime.fromMillisecondsSinceEpoch(value * 1000);
      } else if (value is String) {
        return DateTime.parse(value);
      }
      throw FormatException('Invalid date format: $value');
    }

    return JwtClaims(
      issuer: json['iss'] as String,
      subject: json['sub'] as String,
      audience: json['aud'], // Can be String or List<String>
      expiresAt: parseNumericDate(json['exp']),
      issuedAt: parseNumericDate(json['iat']),
      notBefore: parseNumericDate(json['nbf'] ?? json['iat']),
      jwtId: json['jti'] as String?,
      nonce: json['nonce'] as String?,
      azp: json['azp'] as String?,
      additionalClaims: Map<String, dynamic>.from(json)
        ..removeWhere((key, _) => _standardJwtKeys.contains(key)),
    );
  }

  /// Standard JWT claim keys
  static final Set<String> _standardJwtKeys = {
    'iss',
    'sub',
    'aud',
    'exp',
    'iat',
    'nbf',
    'jti',
    'nonce',
    'azp',
  };

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'iss': issuer,
      'sub': subject,
      'aud': audience,
      'exp': expiresAt.millisecondsSinceEpoch ~/ 1000,
      'iat': issuedAt.millisecondsSinceEpoch ~/ 1000,
      'nbf': notBefore.millisecondsSinceEpoch ~/ 1000,
      if (jwtId != null) 'jti': jwtId,
      if (nonce != null) 'nonce': nonce,
      if (azp != null) 'azp': azp,
      ...additionalClaims,
    };
  }
}

/// Represents stored authentication state
class AuthState {
  AuthState({
    this.tokenResponse,
    this.lastAuthenticated,
    this.authMethod,
    this.sessionId,
  });

  /// Current token response
  final SmartTokenResponse? tokenResponse;

  /// When user last authenticated
  final DateTime? lastAuthenticated;

  /// How user authenticated
  final ClientAuthMethod? authMethod;

  /// Session identifier
  final String? sessionId;

  /// Check if authenticated
  bool get isAuthenticated =>
      tokenResponse != null && !tokenResponse!.isExpired;

  /// Check if refresh is possible
  bool get canRefresh =>
      tokenResponse?.refreshToken != null && !tokenResponse!.isRefreshExpired;

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      if (tokenResponse != null) 'tokenResponse': tokenResponse!.toJson(),
      if (lastAuthenticated != null)
        'lastAuthenticated': lastAuthenticated!.toIso8601String(),
      if (authMethod != null) 'authMethod': authMethod!.name,
      if (sessionId != null) 'sessionId': sessionId,
    };
  }

  /// Create from JSON
  factory AuthState.fromJson(Map<String, dynamic> json) {
    return AuthState(
      tokenResponse: json['tokenResponse'] != null
          ? SmartTokenResponse.fromJson(
              json['tokenResponse'] as Map<String, dynamic>)
          : null,
      lastAuthenticated: json['lastAuthenticated'] != null
          ? DateTime.parse(json['lastAuthenticated'] as String)
          : null,
      authMethod: json['authMethod'] != null
          ? ClientAuthMethod.values.byName(json['authMethod'] as String)
          : null,
      sessionId: json['sessionId'] as String?,
    );
  }
}
