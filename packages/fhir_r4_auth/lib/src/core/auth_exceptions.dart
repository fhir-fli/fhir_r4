/// Custom exceptions for FHIR authentication operations
///
/// These exceptions provide detailed error information without
/// exposing sensitive data or implementation details
library;

/// Base class for all authentication-related exceptions
class FhirAuthException implements Exception {
  /// Creates an authentication exception
  const FhirAuthException(
    this.message, {
    this.details,
    this.statusCode,
    this.innerException,
    this.stackTrace,
  });

  /// User-friendly error message
  final String message;

  /// Additional details for debugging (not shown to end users)
  final String? details;

  /// HTTP status code if applicable
  final int? statusCode;

  /// Original exception that caused this error
  final Object? innerException;

  /// Stack trace for debugging
  final StackTrace? stackTrace;

  @override
  String toString() => 'FhirAuthException: $message';

  /// Creates a sanitized version safe for user display
  FhirAuthException sanitized() => FhirAuthException(
        message,
        statusCode: statusCode,
      );
}

/// Exception thrown when authentication fails
class AuthenticationException extends FhirAuthException {
  /// Creates an exception describing a failed authentication attempt.
  const AuthenticationException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
  });
}

/// Exception thrown when authorization fails
class AuthorizationException extends FhirAuthException {
  /// Creates an exception carrying the OAuth 2.0 error response fields
  /// ([errorCode], [errorDescription], [errorUri]) returned by the server.
  const AuthorizationException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
    this.errorCode,
    this.errorDescription,
    this.errorUri,
  });

  /// OAuth 2.0 standard error code
  /// Common values: 'invalid_request', 'invalid_client', 'invalid_grant',
  /// 'unauthorized_client', 'unsupported_grant_type', 'invalid_scope',
  /// 'access_denied', 'unsupported_response_type', 'server_error',
  /// 'temporarily_unavailable'
  final String? errorCode;

  /// Human-readable description of the error
  final String? errorDescription;

  /// OAuth error URI for more information
  final Uri? errorUri;
}

/// Exception thrown for security violations
class SecurityException extends FhirAuthException {
  /// Creates an exception for a detected security violation of the given
  /// [securityViolationType] (e.g. CSRF, replay, tampered token).
  const SecurityException(
    super.message, {
    super.details,
    super.innerException,
    super.stackTrace,
    required this.securityViolationType,
  });

  /// Type of security violation
  final SecurityViolationType securityViolationType;
}

/// Types of security violations
enum SecurityViolationType {
  /// State parameter mismatch (CSRF attack)
  stateMismatch,

  /// Nonce mismatch (replay attack)
  nonceMismatch,

  /// Invalid JWT signature
  invalidJwtSignature,

  /// JWT expired
  jwtExpired,

  /// Invalid issuer
  invalidIssuer,

  /// Invalid audience
  invalidAudience,

  /// Token tampering detected
  tokenTampered,

  /// Insecure connection
  insecureConnection,
}

/// Exception thrown when token operations fail
class TokenException extends FhirAuthException {
  /// Creates an exception for a token operation failure; [isExpired] flags
  /// that the failure was specifically due to an expired token.
  const TokenException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
    this.isExpired = false,
  });

  /// Whether the token is expired
  final bool isExpired;
}

/// Exception thrown when network operations fail
class NetworkException extends FhirAuthException {
  /// Creates an exception for a network failure; [isTimeout] and
  /// [isConnectionError] classify the underlying cause.
  const NetworkException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
    this.isTimeout = false,
    this.isConnectionError = false,
  });

  /// Whether the error was due to timeout
  final bool isTimeout;

  /// Whether the error was due to connection issues
  final bool isConnectionError;
}

/// Exception thrown when configuration is invalid
class ConfigurationException extends FhirAuthException {
  /// Creates an exception naming the invalid [configurationField].
  const ConfigurationException(
    super.message, {
    super.details,
    super.innerException,
    super.stackTrace,
    required this.configurationField,
  });

  /// The configuration field that is invalid
  final String configurationField;
}

/// Exception thrown when storage operations fail
class StorageException extends FhirAuthException {
  /// Creates an exception for a token-storage failure; [isCorrupted] and
  /// [isUnavailable] describe the storage state.
  const StorageException(
    super.message, {
    super.details,
    super.innerException,
    super.stackTrace,
    this.isCorrupted = false,
    this.isUnavailable = false,
  });

  /// Whether the storage is corrupted
  final bool isCorrupted;

  /// Whether the storage is unavailable
  final bool isUnavailable;
}

/// Exception thrown when provider-specific issues occur
class ProviderException extends FhirAuthException {
  /// Creates an exception for an error specific to the named [provider].
  const ProviderException(
    super.message, {
    super.details,
    super.statusCode,
    super.innerException,
    super.stackTrace,
    required this.provider,
  });

  /// The provider that caused the exception
  final String provider;
}

/// Exception thrown when SMART launch fails
class SmartLaunchException extends FhirAuthException {
  /// Creates an exception for a failed SMART launch; [launchType] and
  /// [missingParameter] identify which launch and what was missing.
  const SmartLaunchException(
    super.message, {
    super.details,
    super.innerException,
    super.stackTrace,
    this.launchType,
    this.missingParameter,
  });

  /// Type of launch that failed
  final String? launchType;

  /// Missing required parameter
  final String? missingParameter;
}
