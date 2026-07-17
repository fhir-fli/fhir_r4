/// Base authenticator interface for platform-specific authentication
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart' show AuthenticationException;

/// Abstract interface for platform-specific authentication
abstract class Authenticator {
  /// Authenticate and return the authorization response
  ///
  /// [authorizationUrl] is the URL to launch for authentication
  /// [redirectUri] is the URL to redirect back to after authentication
  /// [callbackUrlScheme] is the custom URL scheme for mobile apps (optional)
  ///
  /// Returns the full redirect URL with authorization response parameters
  Future<Uri> authenticate({
    required Uri authorizationUrl,
    required Uri redirectUri,
    String? callbackUrlScheme,
  });

  /// Cancel any ongoing authentication
  void cancel();
}

/// Result of an authentication attempt
class AuthenticationResult {
  /// Create from response URL
  factory AuthenticationResult.fromResponseUrl(Uri responseUrl) {
    final params = responseUrl.queryParameters;

    if (params.containsKey('error')) {
      return AuthenticationResult.error(
        error: params['error'],
        errorDescription: params['error_description'],
      );
    }

    return AuthenticationResult.success(
      responseUrl: responseUrl,
      code: params['code'],
      state: params['state'],
      additionalParameters: Map.from(params)
        ..remove('code')
        ..remove('state'),
    );
  }

  /// Create a successful result carrying the authorization [code] and [state]
  /// returned on the redirect, with no error fields set.
  const AuthenticationResult.success({
    required this.responseUrl,
    this.code,
    this.state,
    this.additionalParameters = const {},
  })  : error = null,
        errorDescription = null;

  /// Create a failed result from an OAuth [error] code and optional
  /// human-readable [errorDescription], with no authorization code or state.
  const AuthenticationResult.error({
    required this.error,
    this.errorDescription,
  })  : responseUrl = null,
        code = null,
        state = null,
        additionalParameters = const {};

  /// Create a result representing the user cancelling the browser flow,
  /// encoded as the `user_cancelled` error.
  const AuthenticationResult.cancelled()
      : responseUrl = null,
        code = null,
        state = null,
        error = 'user_cancelled',
        errorDescription = 'User cancelled the authentication',
        additionalParameters = const {};

  /// The full response URL
  final Uri? responseUrl;

  /// Authorization code (for success)
  final String? code;

  /// State parameter (for success)
  final String? state;

  /// Error code (for failure)
  final String? error;

  /// Error description (for failure)
  final String? errorDescription;

  /// Additional parameters from the response
  final Map<String, String> additionalParameters;

  /// Check if authentication was successful
  bool get isSuccess => error == null && code != null;

  /// Check if authentication failed
  bool get isError => error != null;

  /// Check if user cancelled
  bool get isCancelled => error == 'user_cancelled';

  /// Convert to response parameters map
  Map<String, String> toParameters() {
    final params = <String, String>{};

    if (code != null) params['code'] = code!;
    if (state != null) params['state'] = state!;
    if (error != null) params['error'] = error!;
    if (errorDescription != null) {
      params['error_description'] = errorDescription!;
    }
    params.addAll(additionalParameters);

    return params;
  }
}

/// Exception thrown when authentication fails at the platform level
class PlatformAuthenticationException extends AuthenticationException {
  /// Wrap a platform-level authentication failure, optionally carrying the
  /// native [platformError] code alongside the base exception details.
  const PlatformAuthenticationException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
    this.platformError,
  });

  /// Platform-specific error code
  final String? platformError;
}
