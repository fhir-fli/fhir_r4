/// State and nonce management for OAuth 2.0 security
/// Prevents CSRF and replay attacks
library;

import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show SecurityViolationType, SecurityException;
import 'package:logging/logging.dart';

/// Manages state and nonce parameters for OAuth security
class StateManager {
  StateManager({
    Random? random,
    Duration? stateExpiry,
    Logger? logger,
  })  : _random = random ?? Random.secure(),
        _stateExpiry = stateExpiry ?? const Duration(minutes: 10),
        _logger = logger ?? Logger('StateManager');

  final Random _random;
  final Duration _stateExpiry;
  final Logger _logger;

  /// Active state parameters with expiry times
  final Map<String, DateTime> _activeStates = {};

  /// Active nonces with expiry times
  final Map<String, DateTime> _activeNonces = {};

  /// Used nonces (to prevent replay)
  final Set<String> _usedNonces = {};

  /// Minimum entropy bits for secure random generation
  static const int _minEntropyBits = 128;

  /// Characters for random string generation
  static const String _chars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

  /// Generate a cryptographically secure state parameter
  String generateState() {
    // Clean up expired states first
    _cleanupExpired();

    // Generate at least 128 bits of entropy (22 base64 characters)
    final length = (_minEntropyBits / 6).ceil(); // 6 bits per base64 char
    final state = _generateSecureRandom(length);

    // Store with expiry
    _activeStates[state] = DateTime.now().add(_stateExpiry);

    _logger.fine('Generated state parameter: ${state.substring(0, 8)}...');
    return state;
  }

  /// Generate a cryptographically secure nonce
  String generateNonce() {
    // Clean up expired nonces first
    _cleanupExpired();

    // Generate nonce with high entropy
    final nonce = _generateSecureRandom(32);

    // Store with expiry
    _activeNonces[nonce] = DateTime.now().add(_stateExpiry);

    _logger.fine('Generated nonce: ${nonce.substring(0, 8)}...');
    return nonce;
  }

  /// Validate a state parameter
  bool validateState(String state) {
    _cleanupExpired();

    if (!_activeStates.containsKey(state)) {
      _logger.warning('State validation failed: unknown state');
      return false;
    }

    final expiry = _activeStates[state]!;
    if (DateTime.now().isAfter(expiry)) {
      _logger.warning('State validation failed: expired');
      _activeStates.remove(state);
      return false;
    }

    // State is valid, remove it (one-time use)
    _activeStates.remove(state);
    _logger.fine('State validated successfully');
    return true;
  }

  /// Validate a nonce from an ID token
  bool validateNonce(String nonce) {
    _cleanupExpired();

    // Check if nonce was issued by us
    if (!_activeNonces.containsKey(nonce)) {
      _logger.warning('Nonce validation failed: unknown nonce');
      return false;
    }

    // Check if already used (replay attack)
    if (_usedNonces.contains(nonce)) {
      _logger.warning('Nonce validation failed: already used (replay attack)');
      return false;
    }

    final expiry = _activeNonces[nonce]!;
    if (DateTime.now().isAfter(expiry)) {
      _logger.warning('Nonce validation failed: expired');
      _activeNonces.remove(nonce);
      return false;
    }

    // Mark as used and remove from active
    _activeNonces.remove(nonce);
    _usedNonces.add(nonce);

    _logger.fine('Nonce validated successfully');
    return true;
  }

  /// Validate state with detailed error reporting
  void validateStateOrThrow(String state) {
    _cleanupExpired();

    if (!_activeStates.containsKey(state)) {
      throw const SecurityException(
        'Invalid state parameter - possible CSRF attack',
        details: 'State parameter not recognized',
        securityViolationType: SecurityViolationType.stateMismatch,
      );
    }

    final expiry = _activeStates[state]!;
    if (DateTime.now().isAfter(expiry)) {
      _activeStates.remove(state);
      throw const SecurityException(
        'Expired state parameter',
        details: 'State parameter has expired',
        securityViolationType: SecurityViolationType.stateMismatch,
      );
    }

    // Valid - remove it
    _activeStates.remove(state);
    _logger.fine('State validated successfully');
  }

  /// Validate nonce with detailed error reporting
  void validateNonceOrThrow(String nonce) {
    _cleanupExpired();

    if (!_activeNonces.containsKey(nonce)) {
      throw const SecurityException(
        'Invalid nonce - possible replay attack',
        details: 'Nonce not recognized',
        securityViolationType: SecurityViolationType.nonceMismatch,
      );
    }

    if (_usedNonces.contains(nonce)) {
      throw const SecurityException(
        'Nonce replay detected',
        details: 'This nonce has already been used',
        securityViolationType: SecurityViolationType.nonceMismatch,
      );
    }

    final expiry = _activeNonces[nonce]!;
    if (DateTime.now().isAfter(expiry)) {
      _activeNonces.remove(nonce);
      throw const SecurityException(
        'Expired nonce',
        details: 'Nonce has expired',
        securityViolationType: SecurityViolationType.nonceMismatch,
      );
    }

    // Valid - mark as used
    _activeNonces.remove(nonce);
    _usedNonces.add(nonce);
    _logger.fine('Nonce validated successfully');
  }

  /// Generate a secure random string
  String _generateSecureRandom(int length) {
    final buffer = StringBuffer();
    for (int i = 0; i < length; i++) {
      buffer.write(_chars[_random.nextInt(_chars.length)]);
    }
    return buffer.toString();
  }

  /// Generate a hash-based state with context
  String generateContextualState(Map<String, dynamic> context) {
    // Include context in state generation for additional validation
    final contextJson = jsonEncode(context);
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final random = _generateSecureRandom(16);

    // Create a hash of context + timestamp + random
    final bytes = utf8.encode('$contextJson|$timestamp|$random');
    final hash = sha256.convert(bytes);

    final state = base64Url.encode(hash.bytes).replaceAll('=', '');

    // Store with expiry
    _activeStates[state] = DateTime.now().add(_stateExpiry);

    return state;
  }

  /// Clean up expired entries
  void _cleanupExpired() {
    final now = DateTime.now();

    // Clean expired states
    _activeStates.removeWhere((_, expiry) => now.isAfter(expiry));

    // Clean expired nonces
    _activeNonces.removeWhere((_, expiry) => now.isAfter(expiry));

    // Clean old used nonces (keep for 1 hour for security)
    if (_usedNonces.length > 1000) {
      // If too many, clear oldest half
      final toRemove = _usedNonces.take(_usedNonces.length ~/ 2).toList();
      for (final nonce in toRemove) {
        _usedNonces.remove(nonce);
      }
    }
  }

  /// Clear all stored state and nonce values
  void clear() {
    _activeStates.clear();
    _activeNonces.clear();
    _usedNonces.clear();
    _logger.fine('Cleared all state and nonce values');
  }

  /// Get count of active states (for monitoring)
  int get activeStateCount => _activeStates.length;

  /// Get count of active nonces (for monitoring)
  int get activeNonceCount => _activeNonces.length;

  /// Get count of used nonces (for monitoring)
  int get usedNonceCount => _usedNonces.length;
}
