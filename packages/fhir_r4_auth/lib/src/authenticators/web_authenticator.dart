/// Web platform authenticator using flutter_web_auth_2
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show Authenticator, PlatformAuthenticationException;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:flutter_web_auth_2_platform_interface/flutter_web_auth_2_platform_interface.dart';
import 'package:logging/logging.dart';

/// Web authenticator using flutter_web_auth_2
class WebAuthenticator implements Authenticator {
  /// Create a browser-redirect authenticator backed by flutter_web_auth_2,
  /// optionally using an ephemeral session and custom Android [intentFlags].
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
      _logger
        ..fine('Starting web authentication')
        ..fine('Authorization URL: $authorizationUrl')
        ..fine('Redirect URI: $redirectUri')
        ..fine('Callback scheme: $callbackUrlScheme');

      // Platform-specific callbackUrlScheme handling:
      // - Web: uses localStorage polling, just needs the URI scheme
      //   (e.g. "http")
      // - Linux/Windows: starts a local HTTP server, needs full origin
      //   (e.g. "http://localhost:8080")
      // - Mobile: uses custom URL schemes (e.g. "com.example.app")
      var resolvedScheme = callbackUrlScheme;
      if (resolvedScheme == null || resolvedScheme == redirectUri.scheme) {
        if (kIsWeb) {
          // On web, pass just the scheme — flutter_web_auth_2 validates it
          // as a URI scheme and rejects full URLs like "http://localhost:8080"
          resolvedScheme = redirectUri.scheme;
        } else if (redirectUri.scheme == 'http' ||
            redirectUri.scheme == 'https') {
          // Desktop (Linux/Windows) needs the full origin
          resolvedScheme =
              '${redirectUri.scheme}://${redirectUri.host}:${redirectUri.port}';
        } else {
          resolvedScheme = redirectUri.scheme;
        }
      }

      final options = FlutterWebAuth2Options(
        preferEphemeral: preferEphemeral,
        intentFlags:
            intentFlags.isEmpty ? null : _combineIntentFlags(intentFlags),
        // Don't show a popup confirmation on web
        useWebview: false,
        // Set timeout in seconds
        timeout: 300, // 5 minutes
      );

      // On Linux/Windows the login happens in the system browser while a
      // temporary local HTTP server waits for the redirect. FlutterWebAuth2's
      // top-level authenticate() registers an app-lifecycle observer that
      // force-closes that server ("dangling call" cleanup) as soon as the
      // desktop window regains focus — so a user who refocuses the app while
      // the browser login is still in progress gets their pending auth
      // cancelled. Call the platform implementation directly on desktop to
      // skip that observer; the 300s timeout above still bounds the wait.
      // (On mobile the observer is the intended abandoned-login detection,
      // and on web the cleanup is a no-op — keep the stock call there.)
      final isDesktopServerFlow = !kIsWeb &&
          (defaultTargetPlatform == TargetPlatform.linux ||
              defaultTargetPlatform == TargetPlatform.windows);

      // Launch authentication
      final result = isDesktopServerFlow
          ? await FlutterWebAuth2Platform.instance.authenticate(
              url: authorizationUrl.toString(),
              callbackUrlScheme: resolvedScheme,
              options: options.toJson(),
            )
          : await FlutterWebAuth2.authenticate(
              url: authorizationUrl.toString(),
              callbackUrlScheme: resolvedScheme,
              options: options,
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
      final params = <String, String>{};
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
  /// Create an authenticator that manages the redirect flow directly, with a
  /// [redirectTimeout] and an optional popup-window strategy via [usePopup].
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
