/// Token storage interface for secure credential management
library;

import 'dart:convert';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show SmartTokenResponse, AuthState, StorageKeys, StorageException;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logging/logging.dart';

/// Abstract interface for token storage
abstract class TokenStorage {
  /// Save tokens securely
  Future<void> saveTokens(SmartTokenResponse tokens);

  /// Load tokens from storage
  Future<SmartTokenResponse?> loadTokens();

  /// Clear all tokens
  Future<void> clearTokens();

  /// Save authentication state
  Future<void> saveAuthState(AuthState state);

  /// Load authentication state
  Future<AuthState?> loadAuthState();

  /// Check if tokens exist
  Future<bool> hasTokens();
}

/// Secure implementation of token storage using flutter_secure_storage
class SecureTokenStorage implements TokenStorage {
  SecureTokenStorage({
    FlutterSecureStorage? storage,
    this.keyPrefix = '',
    Logger? logger,
  })  : _storage = storage ?? const FlutterSecureStorage(),
        _logger = logger ?? Logger('SecureTokenStorage');

  final FlutterSecureStorage _storage;
  final String keyPrefix;
  final Logger _logger;

  /// Android-specific options for secure storage
  static const AndroidOptions _androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  /// iOS-specific options for secure storage
  static const IOSOptions _iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );

  /// Generate storage key with prefix
  String _key(String key) => '$keyPrefix$key';

  @override
  Future<void> saveTokens(SmartTokenResponse tokens) async {
    try {
      _logger.fine('Saving tokens to secure storage');

      // Save as a single encrypted JSON blob for atomicity
      await _storage.write(
        key: _key(StorageKeys.accessToken),
        value: tokens.toStoredJson(),
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );

      _logger.fine('Tokens saved successfully');
    } catch (e, stackTrace) {
      _logger.severe('Failed to save tokens', e, stackTrace);
      throw StorageException(
        'Failed to save authentication tokens',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<SmartTokenResponse?> loadTokens() async {
    try {
      _logger.fine('Loading tokens from secure storage');

      final json = await _storage.read(
        key: _key(StorageKeys.accessToken),
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );

      if (json == null) {
        _logger.fine('No tokens found in storage');
        return null;
      }

      final tokens = SmartTokenResponse.fromStoredJson(json);

      // Check if tokens are expired
      if (tokens.isExpired && tokens.refreshToken == null) {
        _logger.warning('Tokens are expired with no refresh token');
        // Clear expired tokens
        await clearTokens();
        return null;
      }

      _logger.fine('Tokens loaded successfully');
      return tokens;
    } catch (e, stackTrace) {
      _logger.severe('Failed to load tokens', e, stackTrace);

      // If tokens are corrupted, clear them
      if (e is FormatException) {
        await clearTokens();
        throw StorageException(
          'Token storage was corrupted and has been cleared',
          details: e.toString(),
          innerException: e,
          stackTrace: stackTrace,
          isCorrupted: true,
        );
      }

      throw StorageException(
        'Failed to load authentication tokens',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> clearTokens() async {
    try {
      _logger.fine('Clearing all tokens');

      // Clear all token-related keys
      await Future.wait([
        _storage.delete(
          key: _key(StorageKeys.accessToken),
          aOptions: _androidOptions,
          iOptions: _iosOptions,
        ),
        _storage.delete(
          key: _key('auth_state'),
          aOptions: _androidOptions,
          iOptions: _iosOptions,
        ),
      ]);

      _logger.fine('Tokens cleared successfully');
    } catch (e, stackTrace) {
      _logger.severe('Failed to clear tokens', e, stackTrace);
      throw StorageException(
        'Failed to clear authentication tokens',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> saveAuthState(AuthState state) async {
    try {
      _logger.fine('Saving authentication state');

      await _storage.write(
        key: _key('auth_state'),
        value: jsonEncode(state.toJson()),
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );

      _logger.fine('Authentication state saved');
    } catch (e, stackTrace) {
      _logger.severe('Failed to save auth state', e, stackTrace);
      throw StorageException(
        'Failed to save authentication state',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<AuthState?> loadAuthState() async {
    try {
      _logger.fine('Loading authentication state');

      final json = await _storage.read(
        key: _key('auth_state'),
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );

      if (json == null) {
        _logger.fine('No auth state found');
        return null;
      }

      final state =
          AuthState.fromJson(jsonDecode(json) as Map<String, dynamic>);
      _logger.fine('Authentication state loaded');
      return state;
    } catch (e, stackTrace) {
      _logger.severe('Failed to load auth state', e, stackTrace);

      // Clear corrupted state
      if (e is FormatException) {
        await _storage.delete(
          key: _key('auth_state'),
          aOptions: _androidOptions,
          iOptions: _iosOptions,
        );
      }

      // Return null rather than throwing for auth state
      return null;
    }
  }

  @override
  Future<bool> hasTokens() async {
    try {
      final value = await _storage.read(
        key: _key(StorageKeys.accessToken),
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );
      return value != null;
    } catch (e) {
      _logger.warning('Error checking for tokens', e);
      return false;
    }
  }

  /// Clear all storage (for testing/debugging)
  Future<void> clearAll() async {
    try {
      _logger.warning('Clearing ALL secure storage');
      await _storage.deleteAll(
        aOptions: _androidOptions,
        iOptions: _iosOptions,
      );
    } catch (e, stackTrace) {
      _logger.severe('Failed to clear all storage', e, stackTrace);
      throw StorageException(
        'Failed to clear all storage',
        details: e.toString(),
        innerException: e,
        stackTrace: stackTrace,
      );
    }
  }
}
