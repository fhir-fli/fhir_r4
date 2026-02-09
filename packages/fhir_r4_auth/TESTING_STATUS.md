# fhir_r4_auth Testing Status & Setup Guide

**Last Updated:** February 9, 2026

## Current Status

### Library Status: COMPLETE

| Component | Status | Notes |
|-----------|--------|-------|
| Core Authentication | ✅ Pass | OAuth 2.0, PKCE, JWT validation |
| Token Storage | ✅ Pass | Secure storage with platform encryption |
| Session Management | ✅ Pass | Idle/absolute timeouts, warnings |
| Audit Logging | ✅ Pass | HIPAA-compliant event logging |
| Rate Limiting | ✅ Pass | Token endpoint protection |
| Security Tests | ✅ Pass | Algorithm confusion, tampering, replay attacks |
| Unit Tests | ✅ 411 pass | 2 skipped (platform-specific) |
| Integration Tests | ✅ Pass | Real server tests handle network gracefully |

### Demo Apps Status

| Demo | Status | Notes |
|------|--------|-------|
| standalone_demo | ✅ Tested | Verified against Epic sandbox (Patient mode) |
| ehr_launch_demo | ✅ Tested | Verified against Epic sandbox via Launch Simulator |
| CDS Hooks | Not Started | Not implemented |

### Platform Testing

| Platform | standalone_demo | ehr_launch_demo |
|----------|----------------|-----------------|
| Web (Chrome) | ✅ Full OAuth flow verified | ✅ Full OAuth flow verified |
| Linux desktop | ✅ Builds and runs | ✅ Builds and runs |
| Android emulator | ✅ Builds and runs | ✅ Builds and runs |
| macOS | Not tested | Not tested |
| iOS | Not tested | Not tested |

---

## Live Testing Results (February 9, 2026)

### EHR Launch Demo - Epic Sandbox
- **Flow:** Epic Launch Simulator → app receives `iss` + `launch` → OAuth → patient data
- **Launch Simulator:** https://fhir.epic.com/Documentation?docId=launching (click "Try it")
- **Client ID:** `2a12e18b-6dd7-4383-8faf-5ba904a072c3` (Non-Production, Clinician app)
- **Patient returned:** Omar Optime
- **Encounter context:** Received successfully
- **Patient data fetch:** Successful

### Standalone Demo - Epic Sandbox
- **Flow:** User clicks Connect → Epic login page → OAuth → patient data
- **Client ID:** `31a05c77-c602-4bf3-be24-1a7692802b3c` (Non-Production, Patient app)
- **Test credentials:** fhircamila / epicepic1
- **Patient returned:** Camila Maria Lopez
- **Patient data fetch:** Successful

### Epic Compatibility Notes
- **PKCE:** Must be disabled (`enablePkce: false`) - Epic sandbox rejects `code_challenge`/`code_challenge_method` parameters
- **OpenID:** Must be disabled (`enableOpenId: false`) - Epic sandbox rejects `nonce` parameter
- **`need_patient_banner`:** Epic returns `"false"` (string) instead of `false` (boolean) - parser handles both
- **Scopes for EHR launch:** Use `launch` only (minimal scope); wider scopes cause OAuth errors
- **callback.html:** Must use `localStorage.setItem('flutter-web-auth-2', url)` and `postMessage` for `flutter_web_auth_2` web integration

---

## Fixes Applied

### February 9, 2026

#### 1. OAuth Callback Communication (callback.html)
**Files:** `ehr_launch_demo/web/callback.html`, `standalone_demo/web/callback.html`
- Added `localStorage.setItem('flutter-web-auth-2', currentUrl)` for `flutter_web_auth_2` polling
- Added `window.opener.postMessage({'flutter-web-auth-2': currentUrl})` for message-based communication
- Without these, the main app could not receive the authorization code from the callback tab

#### 2. Token Response Bool Parsing
**File:** `lib/src/storage/token_model.dart`
- Added `_parseBool()` helper to handle `need_patient_banner` returned as string `"false"` instead of boolean `false`
- Epic sandbox returns string values for boolean fields in token responses

#### 3. Epic PKCE/OpenID Compatibility
**Files:** `ehr_launch_demo/lib/main.dart`, `standalone_demo/lib/main.dart`
- Set `enablePkce: false` and `enableOpenId: false` for Epic vendor
- Epic sandbox rejects PKCE challenge parameters and nonce in authorization requests

#### 4. Client IDs Updated
**Files:** `ehr_launch_demo/lib/main.dart`, `standalone_demo/lib/main.dart`
- Updated to registered Non-Production client IDs for `fhir_r4_auth_test_clinician` and `fhir_r4_auth_test_patient` apps

#### 5. Android Build Fixes
**Files:** `*/android/settings.gradle.kts`, `*/android/app/build.gradle.kts`
- Upgraded Android Gradle Plugin from 8.7.3 to 8.9.1 (required by `androidx.browser:browser:1.9.0`)
- Added `appAuthRedirectScheme` manifest placeholder (required by `flutter_web_auth_2`)

### January 26, 2026

#### 1. Test Syntax Errors
**File:** `test/integration/platform_integration_test.dart`
- Fixed 12 test callback declarations with malformed syntax `( {` → `() async {`

#### 2. Regenerated Mock Files
**Issue:** flutter_secure_storage v10.0.0 merged `IOSOptions`/`MacOsOptions` into `AppleOptions`
**Fix:** Deleted and regenerated mock files:
```bash
rm test/**/*.mocks.dart
flutter pub run build_runner build --delete-conflicting-outputs
```

#### 3. Added Missing Test Constant
**File:** `test/test_helpers/test_data.dart`
- Added `TestServers.epicPatientClientId`

#### 4. Fixed Deprecation Warning
**File:** `lib/src/storage/token_storage.dart`
- Removed deprecated `encryptedSharedPreferences: true` from `AndroidOptions`

#### 5. Fixed Flaky Timing Test
**File:** `test/unit/security/jwt_security_test.dart`
- Made constant-time JWT test more robust with warmup, multiple runs, and median calculation

---

## EHR Sandbox Configuration

### Epic Sandbox

**Portal:** https://fhir.epic.com/

**Registered Apps:**

| App | Audience | Non-Production Client ID |
|-----|----------|--------------------------|
| fhir_r4_auth_test_clinician | Clinicians | `2a12e18b-6dd7-4383-8faf-5ba904a072c3` |
| fhir_r4_auth_test_patient | Patients | `31a05c77-c602-4bf3-be24-1a7692802b3c` |

**ISS URL:** `https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4`

**Redirect URI:** `http://localhost:8080/callback.html`

**Test Credentials:**
| Mode | Username | Password |
|------|----------|----------|
| Patient | fhircamila | epicepic1 |
| Clinician | fhirjason | epicepic1 |

**Epic Launch Simulator:**
1. Go to https://fhir.epic.com/Documentation?docId=launching
2. Click **"Try it"** button to open the simulator popup
3. Choose your app (fhir_r4_auth_test_clinician)
4. Select a patient
5. Enter launch URL: `http://localhost:8080`
6. Launch

### Cerner Sandbox

**Portal:** https://code.cerner.com/

**Current Configuration:** Not registered - client IDs need to be added

**Base URL:** `https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d`

**Test Credentials:**
| Mode | Username | Password |
|------|----------|----------|
| Patient | nancysmart | Cerner01 |
| Clinician | portal | Portal1! |

---

## Running the Demo Apps

### Prerequisites

```bash
# Linux desktop dependencies
sudo apt-get install -y libwebkit2gtk-4.1-dev libsecret-1-dev lld
```

### Run Standalone Demo (Web)
```bash
cd standalone_demo
flutter pub get
flutter run -d chrome --web-port=8080
```

### Run EHR Launch Demo (Web)
```bash
cd ehr_launch_demo
flutter pub get
flutter run -d chrome --web-port=8080
```
Then use the Epic Launch Simulator to launch the app.

### Run on Linux Desktop
```bash
flutter run -d linux
```

### Run on Android
```bash
flutter emulators --launch <emulator-id>
flutter run -d <device-id>
```

---

## Launch Types Overview

### 1. Standalone Launch (External to EHR)
**Status:** ✅ Implemented and tested
- App launches independently
- User selects patient context
- Uses `launch/patient` scope
- Demo: `standalone_demo`

### 2. EHR Launch (From Within EHR)
**Status:** ✅ Implemented and tested
- App receives `iss` and `launch` parameters from EHR
- Patient/encounter context provided by EHR
- Uses `launch` scope
- Simulation mode when no launch params detected
- Demo: `ehr_launch_demo`

### 3. CDS Hooks Launch
**Status:** Not implemented
- App is invoked as a CDS Hook service
- Receives `fhirAuthorization` in hook request
- Returns cards with recommendations

---

## Remaining Work

### High Priority
1. [ ] Investigate re-enabling PKCE for non-Epic vendors (or when Epic adds support)
2. [ ] Register Cerner apps and test against Cerner sandbox
3. [ ] Test on macOS and iOS platforms

### Medium Priority
4. [ ] Add wider scopes back once Epic compatibility is confirmed (patient/*.read, openid, fhirUser)
5. [ ] Register Epic System app for backend service flow testing

### Lower Priority
6. [ ] Implement CDS Hooks support in library
7. [ ] Create CDS Hooks demo service
8. [ ] Add more EHR vendors (Allscripts, athenahealth, etc.)

---

## File Locations

| File | Purpose |
|------|---------|
| `lib/src/` | Core authentication library |
| `test/unit/` | Unit tests (storage, oauth, security, core) |
| `test/integration/` | Integration tests with real servers |
| `test/test_helpers/test_data.dart` | Test credentials and server configs |
| `standalone_demo/lib/main.dart` | Standalone launch demo (Epic/Cerner) |
| `standalone_demo/web/callback.html` | OAuth redirect handler |
| `ehr_launch_demo/lib/main.dart` | EHR launch demo (Epic/Cerner) |
| `ehr_launch_demo/web/callback.html` | OAuth redirect handler |

---

## Running Tests

```bash
cd /home/grey/dev/fhir/fhir_r4/packages/fhir_r4_auth

# Run all tests
flutter test

# Run unit tests only
flutter test test/unit/

# Run specific test file
flutter test test/unit/security/jwt_security_test.dart

# Run with verbose output
flutter test --reporter expanded

# Analyze code
dart analyze lib/
```

---

## Troubleshooting

### Mock Generation Errors
If you see errors about `IOSOptions` or `MacOsOptions`:
```bash
rm test/**/*.mocks.dart
flutter pub run build_runner build --delete-conflicting-outputs
```

### OAuth Redirect Issues
- Ensure redirect URI exactly matches: `http://localhost:8080/callback.html`
- Check that `callback.html` exists in both `standalone_demo/web/` and `ehr_launch_demo/web/`
- Verify app is running on port 8080: `flutter run -d chrome --web-port=8080`
- Ensure `callback.html` includes the `localStorage.setItem('flutter-web-auth-2', ...)` call

### Epic OAuth2 Error
If you get "Something went wrong trying to authorize the client":
- Ensure PKCE is disabled (`enablePkce: false`)
- Ensure OpenID is disabled (`enableOpenId: false`)
- Use minimal scopes (`['launch']` for EHR launch)
- Verify you're using the correct Non-Production Client ID

### Linux Build Errors
Missing dependencies:
```bash
sudo apt-get install -y libwebkit2gtk-4.1-dev libsecret-1-dev lld
```

### Android Build Errors
- Ensure Android Gradle Plugin is 8.9.1+ in `android/settings.gradle.kts`
- Ensure `appAuthRedirectScheme` is set in `android/app/build.gradle.kts`

### Network Errors in Integration Tests
Real server integration tests may fail due to:
- Network connectivity issues
- Sandbox server downtime
- Expired test credentials

These failures are handled gracefully and don't indicate library issues.

---

## Security Features Implemented

- **PKCE** (RFC 7636) - Proof Key for Code Exchange
- **JWT Validation** - Signature verification, claims validation
- **State/Nonce** - CSRF and replay attack prevention
- **Secure Storage** - Platform-specific encryption (Keychain, KeyStore, etc.)
- **Token Introspection** - RFC 7662 support
- **Token Revocation** - Proper logout cleanup
- **Rate Limiting** - Token endpoint protection
- **Session Timeouts** - Idle and absolute timeouts with warnings
- **Audit Logging** - HIPAA-compliant event tracking

---

## References

- [SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/)
- [Epic FHIR Documentation](https://fhir.epic.com/)
- [Epic Launch Simulator](https://fhir.epic.com/Documentation?docId=launching)
- [Cerner FHIR Documentation](https://fhir.cerner.com/)
- [OAuth 2.0 RFC 6749](https://tools.ietf.org/html/rfc6749)
- [PKCE RFC 7636](https://tools.ietf.org/html/rfc7636)
