# fhir_r4_auth

## [0.6.0]

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
