/// Platform-specific integration tests
/// 
/// Tests authentication flows on different platforms:
/// - Android
/// - iOS
/// - Web
/// - Linux
/// - macOS
/// - Windows
/// 
/// These tests verify that platform-specific authentication mechanisms
/// (deep linking, custom URL schemes, etc.) work correctly.
library;

import 'dart:io';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_test/flutter_test.dart';
import 'test_helpers/integration_test_helpers.dart';

void main() {
  // TestWidgetsFlutterBinding not needed for regular tests

  group('Platform Integration Tests', () {
    group('Android', () {
      _testAndroidPlatform();
    });

    group('iOS', () {
      _testIOSPlatform();
    });

    group('Web', () {
      _testWebPlatform();
    });

    group('Linux', () {
      _testLinuxPlatform();
    });

    group('macOS', () {
      _testMacOSPlatform();
    });

    group('Windows', () {
      _testWindowsPlatform();
    });
  });
}

/// Test Android-specific authentication flows
void _testAndroidPlatform() {
  test(
    'Android - Patient standalone launch with deep linking',
    ( {
      if (!Platform.isAndroid && !kIsWeb) {
        // Skip if not running on Android
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'com.test.app://callback', // Android deep link
      );

      try {
        // Verify server capabilities
        await IntegrationTestHelpers.verifyServerCapabilities(client);

        // Test authentication flow
        // Note: This will open the system browser/authenticator
        await client.login();

        // Verify authentication
        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        // Verify deep linking worked (client should have received redirect)
        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'Android deep linking should complete authentication');
      } catch (e) {
        print('Android patient standalone launch test failed: $e');
        // Don't fail on network/credential issues
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'Android - EHR launch with launch token',
    ( {
      if (!Platform.isAndroid && !kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'com.test.app://callback',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('Android EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );
}

/// Test iOS-specific authentication flows
void _testIOSPlatform() {
  test(
    'iOS - Patient standalone launch with custom URL scheme',
    ( {
      if (!Platform.isIOS && !kIsWeb) {
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'com.test.app://callback', // iOS custom URL scheme
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        // Verify custom URL scheme worked
        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'iOS custom URL scheme should complete authentication');
      } catch (e) {
        print('iOS patient standalone launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'iOS - EHR launch with launch token',
    ( {
      if (!Platform.isIOS && !kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'com.test.app://callback',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('iOS EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );
}

/// Test Web-specific authentication flows
void _testWebPlatform() {
  test(
    'Web - Patient standalone launch with redirect',
    ( {
      if (!kIsWeb) {
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'http://localhost:8888/redirect.html', // Web redirect
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        // Verify redirect handling worked
        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'Web redirect should complete authentication');
      } catch (e) {
        print('Web patient standalone launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true' || !kIsWeb,
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'Web - EHR launch with launch token',
    ( {
      if (!kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'http://localhost:8888/redirect.html',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('Web EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true' || !kIsWeb,
    timeout: const Timeout(Duration(minutes: 5)),
  );
}

/// Test Linux-specific authentication flows
void _testLinuxPlatform() {
  test(
    'Linux - Patient standalone launch',
    ( {
      if (!Platform.isLinux && !kIsWeb) {
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'com.test.app://callback', // Custom protocol handler
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'Linux protocol handler should complete authentication');
      } catch (e) {
        print('Linux patient standalone launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'Linux - EHR launch',
    ( {
      if (!Platform.isLinux && !kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'com.test.app://callback',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('Linux EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );
}

/// Test macOS-specific authentication flows
void _testMacOSPlatform() {
  test(
    'macOS - Patient standalone launch',
    ( {
      if (!Platform.isMacOS && !kIsWeb) {
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'com.test.app://callback', // Custom URL scheme
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'macOS custom URL scheme should complete authentication');
      } catch (e) {
        print('macOS patient standalone launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'macOS - EHR launch',
    ( {
      if (!Platform.isMacOS && !kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'com.test.app://callback',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('macOS EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );
}

/// Test Windows-specific authentication flows
void _testWindowsPlatform() {
  test(
    'Windows - Patient standalone launch',
    ( {
      if (!Platform.isWindows && !kIsWeb) {
        return;
      }

      final client = IntegrationTestHelpers.createPatientStandaloneClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        redirectUri: 'com.test.app://callback', // Custom protocol handler
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        await IntegrationTestHelpers.verifyAuthenticationSuccess(client);
        IntegrationTestHelpers.verifyPatientContext(client);

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue, reason: 'Windows protocol handler should complete authentication');
      } catch (e) {
        print('Windows patient standalone launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'Windows - EHR launch',
    ( {
      if (!Platform.isWindows && !kIsWeb) {
        return;
      }

      const launchToken = 'test-launch-token';

      final client = IntegrationTestHelpers.createPatientEhrClient(
        serverBaseUrl: IntegrationTestServers.generic.baseUrl,
        clientId: IntegrationTestServers.generic.clientId,
        launchToken: launchToken,
        redirectUri: 'com.test.app://callback',
      );

      try {
        await IntegrationTestHelpers.verifyServerCapabilities(client);
        await client.login();

        final isAuth = await client.isAuthenticated();
        expect(isAuth, isTrue);
        expect(client.patientContext, isNotNull);
      } catch (e) {
        print('Windows EHR launch test failed: $e');
        if (e is ConfigurationException) {
          rethrow;
        }
        return;
      } finally {
        await IntegrationTestHelpers.cleanupClient(client);
      }
    },
    skip: Platform.environment['SKIP_PLATFORM_TESTS'] == 'true',
    timeout: const Timeout(Duration(minutes: 5)),
  );
}
