/// Mobile platform authenticator using flutter_appauth
///
/// This authenticator uses flutter_appauth for the FULL OAuth flow
/// (authorization + token exchange). For authorization-only flows,
/// use WebAuthenticator which works on all platforms.
library;

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:logging/logging.dart';

import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show SmartTokenResponse, PlatformAuthenticationException;

/// Mobile authenticator for full OAuth flow using native AppAuth
class MobileFullFlowAuthenticator {
  MobileFullFlowAuthenticator({
    required this.clientId,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.redirectUri,
    this.discoveryUrl,
    this.clientSecret,
    this.scopes = const <String>[],
    this.additionalParameters = const <String, String>{},
    this.allowInsecureConnections = false,
    FlutterAppAuth? appAuth,
    Logger? logger,
  })  : _appAuth = appAuth ?? const FlutterAppAuth(),
        _logger = logger ?? Logger('MobileFullFlowAuthenticator');

  /// OAuth client ID
  final String clientId;

  /// Authorization endpoint
  final Uri authorizationEndpoint;

  /// Token endpoint
  final Uri tokenEndpoint;

  /// Redirect URI
  final Uri redirectUri;

  /// Discovery URL for OpenID Connect
  final String? discoveryUrl;

  /// Client secret (for confidential clients)
  final String? clientSecret;

  /// OAuth scopes
  final List<String> scopes;

  /// Additional parameters
  final Map<String, String> additionalParameters;

  /// Allow insecure connections (development only!)
  final bool allowInsecureConnections;

  final FlutterAppAuth _appAuth;
  final Logger _logger;

  /// Perform authorization and token exchange in one flow
  Future<SmartTokenResponse> authenticateAndExchange() async {
    try {
      _logger.fine('Starting native OAuth flow with token exchange');

      AuthorizationTokenResponse result;

      if (discoveryUrl != null) {
        // Use discovery document
        result = await _appAuth.authorizeAndExchangeCode(
          AuthorizationTokenRequest(
            clientId,
            redirectUri.toString(),
            discoveryUrl: discoveryUrl,
            clientSecret: clientSecret,
            scopes: scopes,
            additionalParameters: additionalParameters,
            allowInsecureConnections: allowInsecureConnections,
            nonce: null,
          ),
        );
      } else {
        // Use explicit endpoints
        result = await _appAuth.authorizeAndExchangeCode(
          AuthorizationTokenRequest(
            clientId,
            redirectUri.toString(),
            serviceConfiguration: AuthorizationServiceConfiguration(
              authorizationEndpoint: authorizationEndpoint.toString(),
              tokenEndpoint: tokenEndpoint.toString(),
            ),
            clientSecret: clientSecret,
            scopes: scopes,
            additionalParameters: additionalParameters,
            allowInsecureConnections: allowInsecureConnections,
            nonce: null,
          ),
        );
      }

      // Check if we got valid tokens
      if (result.accessToken == null) {
        throw const PlatformAuthenticationException(
          'No access token received',
          platformError: 'missing_token',
        );
      }

      // Convert to SmartTokenResponse
      final tokenResponse = SmartTokenResponse(
        accessToken: result.accessToken!,
        refreshToken: result.refreshToken,
        idToken: result.idToken,
        tokenType: result.tokenType ?? 'Bearer',
        expiresIn: result.accessTokenExpirationDateTime
            ?.difference(DateTime.now())
            .inSeconds,
        scope: scopes.join(' '),
      );

      _logger.fine('OAuth flow completed successfully');
      return tokenResponse;
    } on FlutterAppAuthUserCancelledException {
      _logger.info('User cancelled authentication');
      throw const PlatformAuthenticationException(
        'Authentication cancelled by user',
        platformError: 'user_cancelled',
      );
    } on FlutterAppAuthPlatformException catch (e) {
      _logger.severe('Platform authentication error', e);
      throw PlatformAuthenticationException(
        'Authentication failed: ${e.platformErrorDetails.error ?? e.message}',
        details: e.platformErrorDetails.errorDescription,
        platformError: e.platformErrorDetails.error,
        innerException: e,
      );
    } catch (e, stackTrace) {
      _logger.severe('Authentication failed', e, stackTrace);

      if (e is PlatformAuthenticationException) {
        rethrow;
      }

      throw PlatformAuthenticationException(
        'Authentication failed',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Refresh an access token
  Future<SmartTokenResponse> refresh(String refreshToken) async {
    try {
      _logger.fine('Refreshing access token');

      TokenResponse result;

      if (discoveryUrl != null) {
        result = await _appAuth.token(
          TokenRequest(
            clientId,
            redirectUri.toString(),
            discoveryUrl: discoveryUrl,
            clientSecret: clientSecret,
            refreshToken: refreshToken,
            grantType: 'refresh_token',
            additionalParameters: additionalParameters,
            allowInsecureConnections: allowInsecureConnections,
          ),
        );
      } else {
        result = await _appAuth.token(
          TokenRequest(
            clientId,
            redirectUri.toString(),
            serviceConfiguration: AuthorizationServiceConfiguration(
              authorizationEndpoint: authorizationEndpoint.toString(),
              tokenEndpoint: tokenEndpoint.toString(),
            ),
            clientSecret: clientSecret,
            refreshToken: refreshToken,
            grantType: 'refresh_token',
            additionalParameters: additionalParameters,
            allowInsecureConnections: allowInsecureConnections,
          ),
        );
      }

      // Check if we got valid tokens
      if (result.accessToken == null) {
        throw const PlatformAuthenticationException(
          'No access token received',
          platformError: 'missing_token',
        );
      }

      // Convert to SmartTokenResponse
      final tokenResponse = SmartTokenResponse(
        accessToken: result.accessToken!,
        refreshToken: result.refreshToken ?? refreshToken,
        idToken: result.idToken,
        tokenType: result.tokenType ?? 'Bearer',
        expiresIn: result.accessTokenExpirationDateTime
            ?.difference(DateTime.now())
            .inSeconds,
        scope: scopes.join(' '),
      );

      _logger.fine('Token refresh successful');
      return tokenResponse;
    } on FlutterAppAuthPlatformException catch (e) {
      _logger.severe('Token refresh error', e);
      throw PlatformAuthenticationException(
        'Token refresh failed: ${e.platformErrorDetails.error ?? e.message}',
        details: e.platformErrorDetails.errorDescription,
        platformError: e.platformErrorDetails.error,
        innerException: e,
      );
    } catch (e, stackTrace) {
      _logger.severe('Token refresh failed', e, stackTrace);

      if (e is PlatformAuthenticationException) {
        rethrow;
      }

      throw PlatformAuthenticationException(
        'Token refresh failed',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }
}
