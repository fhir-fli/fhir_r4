/// Integration tests for SmartFhirClient
/// Tests the complete authentication and authorization flow
library;

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import '../test_helpers/test_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SmartFhirClient - Mock Server Integration', () {
    late MockClient mockHttpClient;
    late SmartFhirClient client;

    setUp(() {
      mockHttpClient = MockClient((request) async {
        final url = request.url.toString();

        // Mock CapabilityStatement endpoint
        if (url.contains('/metadata')) {
          return http.Response(
            jsonEncode(_mockCapabilityStatement()),
            200,
            headers: <String, String>{'content-type': 'application/fhir+json'},
          );
        }

        // Mock token endpoint
        if (url.contains('/token')) {
          return http.Response(
            jsonEncode(TestTokens.sampleTokenResponse),
            200,
          );
        }

        // Mock introspection endpoint
        if (url.contains('/introspect')) {
          return http.Response(
            jsonEncode(<String, dynamic>{
              'active': true,
              'scope': 'patient/*.read',
              'client_id': TestServers.meldClientId,
              'exp': DateTime.now()
                      .add(const Duration(hours: 1))
                      .millisecondsSinceEpoch ~/
                  1000,
            }),
            200,
          );
        }

        // Mock revocation endpoint
        if (url.contains('/revoke')) {
          return http.Response('', 200);
        }

        return http.Response('Not Found', 404);
      });

      client = SmartFhirClient(
        config: SmartConfig(
          clientId: TestServers.meldClientId,
          fhirBaseUrl: TestServers.meldBaseUrl.toFhirUri,
          redirectUri: Uri.parse(TestServers.testRedirectUri),
          scopes: <String>['patient/*.read', 'user/Practitioner.read'],
        ),
        httpClient: mockHttpClient,
      );
    });

    tearDown(() {
      client.close();
    });

    test('discovers OAuth endpoints from CapabilityStatement', () async {
      final capabilities = await client.getServerCapabilities();

      expect(capabilities, isNotEmpty);
    });

    test('discovers revocation endpoint', () async {
      await client.getServerCapabilities();

      expect(client.revocationEndpoint, isNotNull);
    });

    test('discovers introspection endpoint', () async {
      await client.getServerCapabilities();

      expect(client.introspectionEndpoint, isNotNull);
    });

    test('checks server capability support', () async {
      final supportsStandalone = await client.supportsCapability(
        SmartCapability.launchStandalone,
      );

      expect(supportsStandalone, isA<bool>());
    });

    test('gets token introspector when supported', () async {
      await client.getServerCapabilities();

      expect(
        () => client.getTokenIntrospector(),
        returnsNormally,
      );
    });

    test('throws when introspection not supported', () {
      final clientWithoutIntrospection = SmartFhirClient(
        config: SmartConfig(
          clientId: 'test-client',
          fhirBaseUrl: 'https://example.com/fhir'.toFhirUri,
          redirectUri: Uri.parse('https://app.example.com/callback'),
        ),
        httpClient: MockClient((request) async {
          return http.Response(
            jsonEncode(<String, dynamic>{
              'resourceType': 'CapabilityStatement',
              'rest': <Map<String, dynamic>>[
                <String, dynamic>{
                  'security': <String, dynamic>{
                    'service': <Map<String, dynamic>>[
                      <String, dynamic>{'coding': <Map<String, dynamic>>[]}
                    ],
                    'extension': <Map<String, dynamic>>[
                      <String, dynamic>{
                        'url':
                            'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris',
                        'extension': <Map<String, dynamic>>[
                          <String, dynamic>{
                            'url': 'authorize',
                            'valueUri': 'https://example.com/authorize',
                          },
                          <String, dynamic>{
                            'url': 'token',
                            'valueUri': 'https://example.com/token',
                          },
                        ],
                      },
                    ],
                  },
                },
              ],
            }),
            200,
          );
        }),
      );

      expect(
        () => clientWithoutIntrospection.getTokenIntrospector(),
        throwsA(isA<ConfigurationException>()),
      );

      clientWithoutIntrospection.close();
    });
  });

  group('SmartFhirClient - End-to-End Flow', () {
    test('completes full authentication flow with mock', () async {
      final mockClient = MockClient((request) async {
        final url = request.url.toString();

        if (url.contains('/metadata')) {
          return http.Response(
            jsonEncode(_mockCapabilityStatement()),
            200,
          );
        }

        if (url.contains('/token')) {
          return http.Response(
            jsonEncode(TestTokens.sampleTokenResponse),
            200,
          );
        }

        return http.Response('Not Found', 404);
      });

      final client = SmartFhirClient(
        config: SmartConfig(
          clientId: TestServers.meldClientId,
          fhirBaseUrl: TestServers.meldBaseUrl.toFhirUri,
          redirectUri: Uri.parse(TestServers.testRedirectUri),
          scopes: <String>['patient/*.read'],
        ),
        httpClient: mockClient,
      );

      // Discover endpoints
      await client.getServerCapabilities();

      expect(client.revocationEndpoint, isNotNull);
      expect(client.introspectionEndpoint, isNotNull);

      client.close();
    });
  });
}

/// Mock CapabilityStatement with OAuth URIs
Map<String, dynamic> _mockCapabilityStatement() {
  return <String, dynamic>{
    'resourceType': 'CapabilityStatement',
    'status': 'active',
    'date': DateTime.now().toIso8601String(),
    'kind': 'instance',
    'fhirVersion': '4.0.1',
    'format': ['application/fhir+json', 'application/fhir+xml'],
    'rest': [
      // List of maps
      {
        'mode': 'server',
        'security': {
          'service': [
            // List of maps
            {
              'coding': [
                // List of maps
                {
                  'system':
                      'http://terminology.hl7.org/CodeSystem/restful-security-service',
                  'code': 'SMART-on-FHIR',
                },
              ],
            },
          ],
          'extension': [
            // List of maps
            {
              'url':
                  'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris',
              'extension': [
                // List of maps
                {
                  'url': 'authorize',
                  'valueUri': 'https://example.com/authorize',
                },
                {
                  'url': 'token',
                  'valueUri': 'https://example.com/token',
                },
                {
                  'url': 'revoke',
                  'valueUri': 'https://example.com/revoke',
                },
                {
                  'url': 'introspect',
                  'valueUri': 'https://example.com/introspect',
                },
              ],
            },
            {
              'url':
                  'http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities',
              'valueCode': 'launch-standalone',
            },
            {
              'url':
                  'http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities',
              'valueCode': 'client-public',
            },
          ],
        },
      },
    ],
  };
}
