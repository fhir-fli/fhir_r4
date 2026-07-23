# fhir_r4_auth

## [0.7.2]

Second security hardening pass (library code only; fhir_r4 core unchanged at ^0.7.0):

- Fixed a broken concurrency guard where the "prevent concurrent refreshes" lock was permanently completed and did nothing — parallel refreshes are now coalesced into a single token exchange. This prevents refresh-token-rotation servers from rejecting a racing refresh and invalidating the token family.
- Refresh no longer discards the refresh token when the server omits it from a refresh response (RFC 6749 §6) — the existing refresh token is carried forward instead of being nulled out.
- TLS is now enforced on the SMART discovery documents (`.well-known/smart-configuration` and `/metadata`) and on the token introspection endpoint, closing the remaining plaintext paths (loopback still allowed; `allowInsecureConnections` opt-out).
- The bearer token is now origin-bound: it is attached only to requests whose scheme/host/port match the configured FHIR server, so it cannot leak to another host.
- `SmartConfig.fromLaunchParameters` accepts an `allowedIssuers` set and rejects an EHR-launch `iss` that is not allowlisted (mitigates SMART "iss spoofing" token theft).
- JWT verification enforces an algorithm allowlist (rejects `alg: none` and unknown algorithms) and rejects tokens carrying their own key material or key references (`jwk`/`jku`/`x5u`/`x5c`).
- Client-assertion JWTs (`createSignedJwt`) now use a random UUID `jti` instead of a timestamp.
- PKCE can no longer be disabled for a public SMART client.
- `at_hash`, nonce, and PKCE challenge comparisons now use a constant-time equality check.

## [0.7.1]

Security hardening of the SMART on FHIR auth flow (auth-only patch; fhir_r4 core unchanged at ^0.7.0):

- id_token validation now fails closed: `JwtValidator.validateToken` verifies the signature against the server's JWKS (discovered from `.well-known/smart-configuration`) and pins the expected issuer and audience (audience defaults to the client_id). When no key material is available it throws instead of silently decoding — pass `allowUnverified: true` (or use `decodeWithoutValidation`) for the previous behavior. `OAuthFlow` gained `jwksUri`/`expectedIssuer`/`expectedAudience`.
- Session timeout now purges the in-memory tokens: on idle/absolute timeout the client immediately stops attaching the bearer token (previously the timeout only cleared persistent storage, so the cached token kept being sent). New `FhirAuthClient.clearInMemoryTokens()`.
- HTTPS is now enforced on all OAuth/OpenID Connect endpoints (authorization, token, revocation, and JWKS). Non-HTTPS URLs throw `SecurityException`; loopback hosts remain allowed for local development, and `allowInsecureConnections` (on `AuthConfig`/`OAuthFlow`/`JwtValidator`) is an explicit opt-out.
- iOS keychain items now use `first_unlock_this_device`, keeping credentials on-device (excluded from iCloud Keychain sync and cross-device backup restore).
- `AuthConfig.toJson()` no longer serializes secrets (`clientSecret`, `BackendServiceConfig.privateKey`) by default — pass `includeSecrets: true` to persist them deliberately.
- jose remains ^0.3.5+2 (GHSA-vm9r-h74p-hg97 / CVE-2026-34240 patched)

## [0.7.0]

- Family release train: cores and companions released in lockstep at 0.7.0
- README: SMART App Launch link now https
- Tests: replaced a statistically unsound PKCE repeated-pattern test (CI flake)
- fhir_r4 ^0.7.0

## [0.6.0]

- flutter_appauth ^12.0.0 + flutter_web_auth_2 ^5.0.0 (verified live against the Epic sandbox: standalone patient+clinician on web, EHR launch on web, standalone on Linux desktop)
- Fixed desktop (Linux/Windows) sign-in being cancelled when the app window regained focus mid-login: the plugin's app-resume cleanup force-closed its local callback server; the authenticator now invokes the desktop platform implementation directly
- Security: jose bumped to ^0.3.5+2 (GHSA-vm9r-h74p-hg97 / CVE-2026-34240, JWS signature-verification bypass)
- Removed the unused dart_jsonwebtoken dependency
- Family lockstep 0.6.0; runnable example added; README rewritten and verified against the API (login/refreshToken); package-local lint relaxations removed, analyzer clean

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Initial publication to pub.dev
* SMART on FHIR authentication with standalone and EHR launch flows
* Fixed PKCE and OpenID flags not being passed through to OAuth flow
* Fixed competing Android intent filters with flutter_appauth
* Platform-specific auth support for web, Linux, and Android
