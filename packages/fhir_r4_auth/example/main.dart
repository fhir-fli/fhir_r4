// SMART-on-FHIR authorization with fhir_r4_auth.
//
// This shows how to configure a SMART client and the PKCE mechanism the
// authorization-code flow uses. The interactive `login()` step launches a
// browser and redirects back to your `redirectUri`, so it is described in
// comments rather than executed here (it cannot complete headless).
//
// fhir_r4_auth is a Flutter package (its secure-storage / app-auth plugins
// pull in platform channels), so this snippet is meant to be dropped into a
// Flutter app and run with `flutter run` rather than `dart run`. The logic
// shown here is plain Dart.
// ignore_for_file: avoid_print
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';

void main() {
  // 1. Describe the app's registration with the FHIR server's SMART
  //    authorization endpoint. For a public client (no secret) the default
  //    ClientAuthMethod.none is correct; PKCE protects the code exchange.
  final config = SmartConfig(
    fhirBaseUrl: FhirUri('https://launch.smarthealthit.org/v/r4/fhir'),
    clientId: 'my-fhir-app',
    redirectUri: Uri.parse('https://my-app.example/callback'),
    scopes: const [
      'openid',
      'fhirUser',
      'launch/patient',
      'patient/*.read',
      'offline_access',
    ],
    // enablePkce and enableOpenId default to true.
  );

  // 2. Build the client. WebAuthenticator is the default; pass a
  //    MobileAuthenticator on iOS/Android.
  final client = SmartFhirClient(config: config);

  print('Configured SMART client for ${config.fhirBaseUrl}');
  print('  clientId:    ${config.clientId}');
  print('  scopes:      ${config.scopes.join(' ')}');
  print('  public:      ${config.isPublicClient}');
  print('  backend svc: ${client.isBackendService}');

  // 3. PKCE (RFC 7636) is what keeps a public client's code exchange safe.
  //    The client generates these internally during login(); shown here to
  //    illustrate the mechanism — the verifier stays secret, the S256
  //    challenge is sent on the authorization request.
  final pkce = PkceManager();
  print('\nPKCE:');
  print('  code_challenge_method: ${pkce.challengeMethod}');
  print('  code_challenge:        ${pkce.codeChallenge}');
  print('  verifier valid:        '
      '${PkceManager.isValidCodeVerifier(pkce.codeVerifier)}');

  // 4. Interactive flow (not run here):
  //
  //      await client.login();                 // opens browser, exchanges code
  //      final token = await client.getAccessToken();
  //      // ... use `client.send(request)` as an authenticated http.Client ...
  //      await client.logout();
  //
  //    For an EHR launch, build the config from the launch parameters with
  //    `SmartConfig.fromLaunchParameters(...)` instead of the constructor.
  //    ALWAYS pass `allowedIssuers` there — the launch `iss` is attacker-
  //    controllable, and the allowlist is what stops a hostile launcher from
  //    pointing the app at a server that phishes tokens:
  //
  //      SmartConfig.fromLaunchParameters(
  //        parameters: launchQueryParameters,
  //        currentUrl: currentUrl,
  //        clientId: 'my-fhir-app',
  //        allowedIssuers: {'https://ehr.example.org/fhir'},
  //      );
  print('\nReady. Call `await client.login()` to start the browser flow.');
  client.close();
}
