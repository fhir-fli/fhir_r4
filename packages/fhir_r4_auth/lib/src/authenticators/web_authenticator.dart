/// Web platform authenticator using flutter_web_auth_2
library;

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:logging/logging.dart';

import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show Authenticator, PlatformAuthenticationException;

/// Web authenticator using flutter_web_auth_2
class WebAuthenticator implements Authenticator {
  WebAuthenticator({
    this.preferEphemeral = false,
    this.intentFlags = const {},
    Logger? logger,
  }) : _logger = logger ?? Logger('WebAuthenticator');

  /// Prefer ephemeral browser session (no cookies)
  final bool preferEphemeral;

  /// Additional intent flags for Android (as integers)
  final Set<int> intentFlags;

  final Logger _logger;

  /// Combine intent flags into a single integer
  int _combineIntentFlags(Set<int> flags) {
    if (flags.isEmpty) return 1 << 29 | 1 << 28; // defaultIntentFlags
    return flags.reduce((a, b) => a | b);
  }

  @override
  Future<Uri> authenticate({
    required Uri authorizationUrl,
    required Uri redirectUri,
    String? callbackUrlScheme,
  }) async {
    try {
      _logger.fine('Starting web authentication');
      _logger.fine('Authorization URL: $authorizationUrl');
      _logger.fine('Redirect URI: $redirectUri');
      _logger.fine('Callback scheme: $callbackUrlScheme');

      // Extract callback URL scheme from redirect URI if not provided
      callbackUrlScheme ??= redirectUri.scheme;

      // Validate callback URL scheme
      if (callbackUrlScheme.isEmpty ||
          callbackUrlScheme == 'http' ||
          callbackUrlScheme == 'https') {
        // For web platform, we might need special handling
        if (identical(0, 0.0)) {
          // This is a trick to detect web platform
          _logger.warning(
              'HTTP(S) redirect URIs may not work properly on web platform');
        }
      }

      // Launch authentication
      final result = await FlutterWebAuth2.authenticate(
        url: authorizationUrl.toString(),
        callbackUrlScheme: callbackUrlScheme,
        options: FlutterWebAuth2Options(
          preferEphemeral: preferEphemeral,
          intentFlags:
              intentFlags.isEmpty ? null : _combineIntentFlags(intentFlags),
          // Don't show a popup confirmation on web
          useWebview: false,
          // Set timeout in seconds
          timeout: 300, // 5 minutes
        ),
      );

      _logger.fine('Authentication completed successfully');

      // Parse the result URL
      final responseUri = Uri.parse(result);

      // Validate that we got a proper response
      if (!responseUri.hasQuery && !responseUri.hasFragment) {
        throw PlatformAuthenticationException(
          'Invalid response - no parameters returned',
          details: 'Response URL: $result',
        );
      }

      // Handle both query parameters and fragment (for implicit flow)
      Map<String, String> params = {};
      if (responseUri.hasQuery) {
        params.addAll(responseUri.queryParameters);
      }
      if (responseUri.hasFragment) {
        // Parse fragment as query parameters (for implicit flow)
        final fragmentParams = Uri.splitQueryString(responseUri.fragment);
        params.addAll(fragmentParams);
      }

      // Check for errors
      if (params.containsKey('error')) {
        throw PlatformAuthenticationException(
          'Authentication failed: ${params['error']}',
          details: params['error_description'],
          platformError: params['error'],
        );
      }

      // Rebuild URI with parameters in query (standardize format)
      final standardizedUri = Uri(
        scheme: responseUri.scheme,
        host: responseUri.host,
        port: responseUri.port,
        path: responseUri.path,
        queryParameters: params,
      );

      return standardizedUri;
    } catch (e, stackTrace) {
      _logger.severe('Authentication failed', e, stackTrace);

      // Check for common error patterns in the exception message
      final errorString = e.toString().toLowerCase();

      if (errorString.contains('user cancelled') ||
          errorString.contains('user canceled') ||
          errorString.contains('cancelled')) {
        throw const PlatformAuthenticationException(
          'Authentication cancelled by user',
          platformError: 'user_cancelled',
        );
      }

      if (errorString.contains('timeout')) {
        throw const PlatformAuthenticationException(
          'Authentication timeout',
          platformError: 'timeout',
        );
      }

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

  @override
  void cancel() {
    _logger.fine('Cancel requested - not supported by flutter_web_auth_2');
    // flutter_web_auth_2 doesn't support cancellation
    // The user can cancel by closing the browser window
  }
}

/// Web authenticator with custom HTML redirect handling
/// This is useful for more control over the redirect process
class CustomWebAuthenticator implements Authenticator {
  CustomWebAuthenticator({
    this.redirectTimeout = const Duration(minutes: 5),
    this.usePopup = false,
    Logger? logger,
  }) : _logger = logger ?? Logger('CustomWebAuthenticator');

  /// Timeout for waiting for redirect
  final Duration redirectTimeout;

  /// Use popup window instead of redirect
  final bool usePopup;

  final Logger _logger;

  @override
  Future<Uri> authenticate({
    required Uri authorizationUrl,
    required Uri redirectUri,
    String? callbackUrlScheme,
  }) async {
    _logger.fine('Custom web authentication not yet implemented');

    // This would require platform-specific implementation
    // For web: window.location or window.open
    // For mobile/desktop: fall back to WebAuthenticator

    throw UnimplementedError(
      'CustomWebAuthenticator requires platform-specific implementation',
    );
  }

  @override
  void cancel() {
    _logger.fine('Cancelling custom web authentication');
    // Implementation would depend on platform
  }
}
