# fhir_r4_auth

[![pub package](https://img.shields.io/pub/v/fhir_r4_auth.svg)](https://pub.dev/packages/fhir_r4_auth)
[![License: BSD-3-Clause](https://img.shields.io/badge/license-BSD--3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

Production-ready SMART on FHIR authentication and authorization for Flutter applications. Implements the complete SMART App Launch specification with enterprise-grade security.

## Features

✅ **Complete SMART on FHIR Implementation**
- Standalone launch (patient-facing apps)
- EHR launch (embedded within EHR systems)
- Backend services (server-to-server)

✅ **Security Best Practices**
- PKCE (Proof Key for Code Exchange) required by default
- Secure token storage with encryption
- JWT validation and verification
- Token introspection and revocation
- Audit logging

✅ **Enterprise Features**
- Session management with timeout controls
- Token refresh handling
- Multi-platform support (iOS, Android, Web, Desktop)
- Comprehensive error handling

✅ **Developer Experience**
- Type-safe API
- Extensive documentation
- Working examples for all launch types
- 386+ unit and integration tests

## Quick Start

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  fhir_r4_auth: ^0.4.0
  fhir_r4: ^0.4.2
```

### Basic Standalone Launch

```dart
import 'package:fhir_r4_auth/fhir_r4_auth.dart';

// 1. Configure your client
final client = SmartFhirClient(
  config: SmartConfig(
    clientId: 'your-client-id',
    fhirBaseUrl: 'https://fhir.example.com/r4'.toFhirUri,
    redirectUri: Uri.parse('com.yourapp://callback'),
    scopes: ['patient/*.read', 'launch/patient'],
  ),
);

// 2. Authenticate
await client.authenticate();

// 3. Make FHIR requests
final patient = await client.read(
  resourceType: 'Patient',
  id: 'patient-123',
);
```

### EHR Launch

```dart
// Parse launch parameters from your URL
final params = Uri.base.queryParameters;

final client = SmartFhirClient(
  config: SmartConfig(
    clientId: params['clientId']!,
    fhirBaseUrl: params['iss']!.toFhirUri,
    redirectUri: Uri.parse('https://your-app.com/callback'),
    launchType: LaunchType.ehr,
    launchToken: params['launch'],
    scopes: ['patient/*.read', 'launch'],
  ),
);

await client.authenticate();
```

## Common Use Cases

### Token Refresh

Tokens are automatically refreshed before expiry:

```dart
// Manual refresh if needed
await client.refreshAccessToken();
```

### Token Revocation

```dart
// Logout and revoke tokens
await client.logout();

// Or revoke specific tokens
await client.revokeAccessToken();
```

### Session Management

```dart
final client = SmartFhirClient(
  config: config,
  sessionManager: SessionManager(
    idleTimeout: Duration(minutes: 15),
    absoluteTimeout: Duration(hours: 8),
  ),
);

// Listen for timeout warnings
client.onSessionTimeoutWarning?.listen((remaining) {
  print('Session expires in ${remaining.inMinutes} minutes');
});

// Listen for session expiry
client.onSessionTimeout?.listen((reason) {
  print('Session ended: $reason');
});

// Record user activity to prevent idle timeout
await client.recordActivity();
```

### Audit Logging

```dart
final client = SmartFhirClient(
  config: config,
  auditLogger: AuditLogger(
    onLog: (event) => print('Audit: ${event.eventType}'),
  ),
);
```

### Secure Token Storage

```dart
// Tokens are automatically stored securely
// On mobile: Keychain (iOS) / KeyStore (Android)
// On web: Encrypted localStorage

// Custom storage
final client = SmartFhirClient(
  config: config,
  tokenStorage: CustomTokenStorage(),
);
```

## Platform-Specific Setup

### iOS

Add to `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleURLSchemes</key>
    <array>
      <string>com.yourapp</string>
    </array>
  </dict>
</array>
```

### Android

Add to `android/app/src/main/AndroidManifest.xml`:

```xml
<activity android:name="com.linusu.flutter_web_auth_2.CallbackActivity">
  <intent-filter android:label="flutter_web_auth_2">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="com.yourapp" />
  </intent-filter>
</activity>
```

### Web

Create `web/redirect.html`:

```html
<!DOCTYPE html>
<html>
<head><title>Authentication Redirect</title></head>
<body>
<script>
  window.opener.postMessage(window.location.href, '*');
</script>
</body>
</html>
```

## Supported FHIR Servers

Tested and working with:

- ✅ Epic (Sandbox & Production)
- ✅ Cerner (Sandbox & Production)
- ✅ SMART Health IT Sandbox
- ✅ HAPI FHIR Server
- ✅ Google Cloud Healthcare API
- ✅ Microsoft Azure API for FHIR
- ✅ AWS HealthLake

## Documentation

- 📚 [Full Documentation](https://www.fhirfli.dev/docs/auth)
- 🎯 [API Reference](https://pub.dev/documentation/fhir_r4_auth/latest/)
- 💡 [Examples](https://github.com/fhirfli/fhir_r4_auth/tree/main/example)
- 🔧 [Migration Guide](https://www.fhirfli.dev/docs/auth/migration)

## Examples

Check out the [example](example/) directory for complete working applications:

- `example/standalone_launch.dart` - Patient-facing app
- `example/ehr_launch.dart` - Embedded in EHR
- `example/backend_services.dart` - Server-to-server
- `example/advanced_features.dart` - Session management, audit logging

## Troubleshooting

### Common Issues

**"No OAuth configuration found"**
- Ensure your FHIR server's CapabilityStatement includes SMART extensions
- Check that `/metadata` endpoint is accessible

**"PKCE verification failed"**
- Some servers don't support PKCE yet - disable with `enablePkce: false`
- This is NOT recommended for production

**Token refresh fails**
- Ensure you requested `offline_access` scope
- Check that your server supports refresh tokens

**Web redirect doesn't work**
- Verify `redirect.html` exists in `web/` directory
- Check redirect URI is registered with FHIR server
- Ensure redirect URI matches exactly (including trailing slash)

See the [full troubleshooting guide](https://www.fhirfli.dev/docs/auth/troubleshooting) for more help.

## Contributing

Contributions welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) first.

## Testing

```bash
# Run all tests
flutter test

# Run specific test suite
flutter test test/unit/
flutter test test/integration/

# Run with coverage
flutter test --coverage
```

## License

BSD-3-Clause License - see [LICENSE](LICENSE) file for details.

## Support

- 🐛 [Report Issues](https://github.com/fhirfli/fhir_r4_auth/issues)
- 💬 [Discussions](https://github.com/fhirfli/fhir_r4_auth/discussions)
- 📧 [Email Support](mailto:support@fhirfli.dev)

## Acknowledgments

Built with ❤️ by the [FHIRfli](https://www.fhirfli.dev) team.

Implements [SMART App Launch](http://hl7.org/fhir/smart-app-launch/) specification from HL7.