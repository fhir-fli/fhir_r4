/// PKCE (Proof Key for Code Exchange) implementation
/// Following RFC 7636 specifications
library;

import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show CodeChallengeMethod, OAuthParameters;

/// PKCE generator for OAuth 2.0 authorization code flow
class PkceManager {
  PkceManager({
    String? codeVerifier,
    Random? random,
  })  : _random = random ?? Random.secure(),
        _codeVerifier = codeVerifier;

  final Random _random;
  String? _codeVerifier;
  String? _codeChallenge;

  /// Allowed characters for code verifier (RFC 7636 Section 4.1)
  static const String _allowedChars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~';

  /// Minimum length for code verifier (RFC 7636)
  static const int _minLength = 43;

  /// Maximum length for code verifier (RFC 7636)
  static const int _maxLength = 128;

  /// Default length for code verifier (recommended)
  static const int _defaultLength = 128;

  /// Get or generate the code verifier
  String get codeVerifier {
    _codeVerifier ??= _generateCodeVerifier();
    return _codeVerifier!;
  }

  /// Get the code challenge for the verifier
  String get codeChallenge {
    _codeChallenge ??= _generateCodeChallenge(codeVerifier);
    return _codeChallenge!;
  }

  /// Get the challenge method (always S256 for SMART on FHIR)
  String get challengeMethod => CodeChallengeMethod.s256.value;

  /// Generate a new code verifier
  String _generateCodeVerifier([int length = _defaultLength]) {
    if (length < _minLength || length > _maxLength) {
      throw ArgumentError(
        'Code verifier length must be between $_minLength and $_maxLength',
      );
    }

    final buffer = StringBuffer();
    for (int i = 0; i < length; i++) {
      buffer.write(_allowedChars[_random.nextInt(_allowedChars.length)]);
    }

    return buffer.toString();
  }

  /// Generate code challenge from verifier using S256 method
  String _generateCodeChallenge(String verifier) {
    // S256 = base64url(sha256(verifier))
    final bytes = utf8.encode(verifier);
    final digest = sha256.convert(bytes);

    // Base64URL encode without padding
    return base64Url.encode(digest.bytes).replaceAll('=', ''); // Remove padding
  }

  /// Validate a code verifier against RFC 7636 requirements
  static bool isValidCodeVerifier(String verifier) {
    // Check length
    if (verifier.length < _minLength || verifier.length > _maxLength) {
      return false;
    }

    // Check characters
    final regex = RegExp(r'^[A-Za-z0-9\-._~]+$');
    return regex.hasMatch(verifier);
  }

  /// Verify that a code verifier matches a challenge
  static bool verifyChallenge({
    required String verifier,
    required String challenge,
    CodeChallengeMethod method = CodeChallengeMethod.s256,
  }) {
    if (method == CodeChallengeMethod.plain) {
      // Plain method not supported by SMART on FHIR
      return false;
    }

    // Generate expected challenge
    final bytes = utf8.encode(verifier);
    final digest = sha256.convert(bytes);
    final expectedChallenge =
        base64Url.encode(digest.bytes).replaceAll('=', '');

    return expectedChallenge == challenge;
  }

  /// Reset the PKCE parameters (generates new ones on next access)
  void reset() {
    _codeVerifier = null;
    _codeChallenge = null;
  }

  /// Create PKCE parameters for authorization request
  Map<String, String> toAuthorizationParameters() {
    return {
      OAuthParameters.codeChallenge: codeChallenge,
      OAuthParameters.codeChallengeMethod: challengeMethod,
    };
  }

  /// Create PKCE parameters for token request
  Map<String, String> toTokenParameters() {
    return {
      OAuthParameters.codeVerifier: codeVerifier,
    };
  }
}

/// PKCE parameters for storage/transfer
class PkceParameters {
  const PkceParameters({
    required this.codeVerifier,
    required this.codeChallenge,
    this.challengeMethod = CodeChallengeMethod.s256,
  });

  final String codeVerifier;
  final String codeChallenge;
  final CodeChallengeMethod challengeMethod;

  /// Create from a PKCE manager
  factory PkceParameters.fromManager(PkceManager manager) {
    return PkceParameters(
      codeVerifier: manager.codeVerifier,
      codeChallenge: manager.codeChallenge,
      challengeMethod: CodeChallengeMethod.s256,
    );
  }

  /// Validate the parameters
  bool get isValid {
    // Verify the verifier is valid
    if (!PkceManager.isValidCodeVerifier(codeVerifier)) {
      return false;
    }

    // Verify the challenge matches
    return PkceManager.verifyChallenge(
      verifier: codeVerifier,
      challenge: codeChallenge,
      method: challengeMethod,
    );
  }

  /// Convert to JSON for storage
  Map<String, dynamic> toJson() {
    return {
      'codeVerifier': codeVerifier,
      'codeChallenge': codeChallenge,
      'challengeMethod': challengeMethod.value,
    };
  }

  /// Create from JSON
  factory PkceParameters.fromJson(Map<String, dynamic> json) {
    return PkceParameters(
      codeVerifier: json['codeVerifier'] as String,
      codeChallenge: json['codeChallenge'] as String,
      challengeMethod: CodeChallengeMethod.values.firstWhere(
        (m) => m.value == json['challengeMethod'],
        orElse: () => CodeChallengeMethod.s256,
      ),
    );
  }
}
