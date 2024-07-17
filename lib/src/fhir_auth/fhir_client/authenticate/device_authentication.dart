// Package imports:
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

// Project imports:
import 'base_authentication.dart';

/// BaseAuthentication for mobile
BaseAuthentication createAuthentication() => DeviceAuthentication();

/// MobileAuthentication Class
class DeviceAuthentication implements BaseAuthentication {
  /// Only method is to authenticate
  @override
  Future<String> authenticate({
    required Uri authorizationUrl,
    required FhirUri redirectUri,
  }) async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      // Android specific flag
      return FlutterWebAuth2.authenticate(
          callbackUrlScheme: redirectUri.value!.scheme,
          url: authorizationUrl.toString(),
          options: const FlutterWebAuth2Options(
            // Android specific flag
            intentFlags: ephemeralIntentFlags,
          ));
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      // iOS and macOS specific flag
      return FlutterWebAuth2.authenticate(
          callbackUrlScheme: redirectUri.value!.scheme,
          url: authorizationUrl.toString(),
          options: const FlutterWebAuth2Options(
            // iOS and macOS specific flag
            preferEphemeral: true,
          ));
    } else {
      throw UnsupportedError(
          'Cannot authenticate without dart:html or dart:io.');
    }
  }
}
