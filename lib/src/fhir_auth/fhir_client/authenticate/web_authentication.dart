// ignore_for_file: avoid_web_libraries_in_flutter, unsafe_html

// Dart imports:
import 'dart:async';
import 'dart:html' as html;

// Package imports:
import 'package:fhir_primitives/fhir_primitives.dart';

// Project imports:
import 'base_authentication.dart';

BaseAuthentication createAuthentication() => WebAuthentication();

/// WebAuthentication Class
class WebAuthentication implements BaseAuthentication {
  /// Authenticate method launches a new window and expects a redirect to a known URL
  @override
  Future<String> authenticate({
    required Uri authorizationUrl,
    required FhirUri redirectUri,
  }) async {
    final html.WindowBase popupLogin = html.window.open(
        authorizationUrl.toString(),
        'oauth2_client::authenticateWindow',
        'menubar=no, status=no, scrollbars=no, menubar=no, width=1000, height=800');

    try {
      final Completer<String> completer = Completer<String>();

      // Setting up a listener for message events
      html.window.onMessage.listen((html.MessageEvent event) {
        if (event.origin == redirectUri.value!.origin) {
          completer.complete(event.data as String);
        }
      });

      // Setting a timeout for the authentication process
      Future<void>.delayed(const Duration(minutes: 5), () {
        if (!completer.isCompleted) {
          completer.completeError('Authentication timeout.');
        }
      });

      return await completer.future;
    } catch (e, stack) {
      // More specific error handling can be added here
      throw Exception('Failed to complete authentication: $e\nStack: $stack');
    } finally {
      // Ensure the popup is closed even if there's an error or timeout
      if (popupLogin.closed == false) {
        popupLogin.close();
      }
    }
  }
}
