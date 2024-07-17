// ignore_for_file: prefer_collection_literals, sort_constructors_first

// Dart imports:

// Package imports:
import 'package:google_sign_in/google_sign_in.dart';

// Project imports:
import 'secure_fhir_client.dart';

/// FHIR Cleint that
class GcpFhirClient extends SecureFhirClient {
  GcpFhirClient({
    super.redirectUri,
    required super.fhirUri,
    super.clientId,
    super.scopes = const <String>[
      'openid',
      'profile',
      'email',
      'https://www.googleapis.com/auth/cloud-platform',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
    super.launch,
  });

  GoogleSignInAccount? _googleSignIn;

  String? get userEmail => _googleSignIn?.email;
  String? get displayName => _googleSignIn?.displayName;

  /// Method to login the client
  @override
  Future<void> login() async {
    try {
      // Trigger the authentication flow
      _googleSignIn =
          await GoogleSignIn(scopes: scopes ?? <String>[], clientId: clientId)
              .signIn();
    } catch (e, stack) {
      throw Exception('Exception: $e\nStack: $stack');
    }
  }

  /// Logs the client out and deletes any security information that shouldn't be stored
  @override
  Future<void> logout() async {}

  /// Checks if client isSignedIn (same as isLoggedIn), maintained because some
  /// clients use one and some prefer the other
  @override
  Future<bool> isSignedIn() async => false;

  /// Checks if client isLoggedIn (same as isSignedIn), maintained because some
  /// clients use one and some prefer the other
  @override
  Future<bool> isLoggedIn() async => false;

  /// Adds security/authorizaton headers to all http requests made with this client
  @override
  Future<Map<String, String>> newHeaders(Map<String, String>? headers) async {
    headers ??= <String, String>{};
    headers.addAll(await _googleSignIn?.authHeaders ?? <String, String>{});
    return headers;
  }
}
