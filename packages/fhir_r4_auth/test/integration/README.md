# Integration Tests for fhir_r4_auth

This directory contains integration tests that verify the complete authentication and authorization flow against real SMART on FHIR servers.

## Test Structure

### Real Server Integration Tests

`real_server_integration_test.dart` - Tests against actual FHIR servers (Epic, Cerner, generic SMART servers)

**Test Matrix:**
- **Launch Types:**
  - Standalone Launch (launched independently)
  - EHR Launch (launched from within EHR)
  - Backend Service (server-to-server)
  
- **Context Types:**
  - Patient Context
  - Practitioner Context
  - System/Backend Context

- **Servers:**
  - Epic (primary focus)
  - Cerner
  - Generic SMART servers (e.g., MIHIN)

### Platform Integration Tests

`platform_integration_test.dart` - Tests platform-specific authentication mechanisms

**Platforms:**
- Android
- iOS
- Web
- Linux
- macOS
- Windows

## Running Integration Tests

### Prerequisites

1. **Test Credentials**: Set up test accounts on the target servers
   - Epic: https://fhir.epic.com/interconnect-fhir-oauth/
   - Cerner: Contact Cerner for sandbox access
   - Generic SMART: Use public sandbox or set up your own

2. **Client Registration**: Register your test client on each server
   - Note the client ID and any required secrets
   - Configure redirect URIs for your test environment

3. **Environment Variables** (optional):
   ```bash
   export SKIP_REAL_SERVER_TESTS=false  # Set to true to skip all real server tests
   export RUN_EPIC_TESTS=true           # Set to false to skip Epic tests
   export RUN_CERNER_TESTS=true         # Set to false to skip Cerner tests
   export RUN_GENERIC_TESTS=true        # Set to false to skip generic tests
   ```

### Running Tests

**All integration tests:**
```bash
flutter test test/integration/
```

**Real server tests only:**
```bash
flutter test test/integration/real_server_integration_test.dart
```

**Platform tests only:**
```bash
flutter test test/integration/platform_integration_test.dart
```

**On specific platform:**
```bash
# Android
flutter test -d android test/integration/platform_integration_test.dart

# iOS
flutter test -d ios test/integration/platform_integration_test.dart

# Web
flutter test -d chrome test/integration/platform_integration_test.dart

# Linux
flutter test -d linux test/integration/platform_integration_test.dart

# macOS
flutter test -d macos test/integration/platform_integration_test.dart

# Windows
flutter test -d windows test/integration/platform_integration_test.dart
```

## Test Implementation Status

### ✅ Completed
- [x] Test framework structure
- [x] Test helpers and utilities
- [x] Mock server integration tests

### 🚧 In Progress
- [ ] Patient context - Standalone launch (Epic, Cerner, Generic)
- [ ] Patient context - EHR launch (Epic, Cerner, Generic)
- [ ] Practitioner context - Standalone launch (Epic, Cerner, Generic)
- [ ] Practitioner context - EHR launch (Epic, Cerner, Generic)
- [ ] Backend service launch (Epic, Cerner, Generic)

### 📋 Planned
- [ ] Platform-specific tests (Android, iOS, Web, Linux, macOS, Windows)
- [ ] Cross-platform compatibility tests
- [ ] Error handling and edge case tests
- [ ] Performance and load tests

## Test Coverage Goals

### Launch Types × Contexts × Servers × Platforms

**Current Priority:**
1. Epic (most important)
2. Generic SMART servers (MIHIN)
3. Cerner

**Platform Priority:**
1. Web (easiest to test)
2. Android
3. Linux
4. iOS
5. macOS
6. Windows

## Writing New Integration Tests

### Example: Patient Standalone Launch

```dart
testWidgets(
  'Patient standalone launch - Epic',
  (tester) async {
    final client = IntegrationTestHelpers.createPatientStandaloneClient(
      serverBaseUrl: IntegrationTestServers.epic.baseUrl,
      clientId: IntegrationTestServers.epic.clientId,
    );

    try {
      // Discover server capabilities
      await IntegrationTestHelpers.verifyServerCapabilities(client);

      // Authenticate (this will open browser/authenticator)
      await client.authenticate();

      // Verify authentication
      IntegrationTestHelpers.verifyAuthenticationSuccess(client);
      IntegrationTestHelpers.verifyPatientContext(client);

      // Test token refresh
      await IntegrationTestHelpers.verifyTokenRefresh(client);
    } finally {
      await IntegrationTestHelpers.cleanupClient(client);
    }
  },
  timeout: IntegrationTestConfig.testTimeout,
);
```

### Best Practices

1. **Always clean up**: Use `try/finally` to ensure clients are closed
2. **Use timeouts**: Real server tests can take longer
3. **Handle failures gracefully**: Network issues shouldn't fail the entire test suite
4. **Skip when appropriate**: Use `skip` parameter for tests not yet implemented
5. **Document requirements**: Comment what credentials/config are needed

## Troubleshooting

### Tests are skipped
- Check environment variables
- Ensure `SKIP_REAL_SERVER_TESTS` is not set to `true`

### Authentication fails
- Verify test credentials are correct
- Check client registration on the server
- Ensure redirect URIs match exactly
- Check network connectivity

### Platform-specific issues
- Verify platform-specific configuration (deep linking, URL schemes, etc.)
- Check platform permissions (network, storage, etc.)

## Contributing

When adding new integration tests:

1. Follow the existing test structure
2. Use helper functions from `integration_test_helpers.dart`
3. Add appropriate skip flags for incomplete tests
4. Document any special setup requirements
5. Update this README with test status
