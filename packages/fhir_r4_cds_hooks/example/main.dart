// ignore_for_file: avoid_print, unused_local_variable
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';

void main() async {
  // --- Client usage ---

  final client = CdsClient(baseUrl: 'https://example.com');

  // Discover services
  final discovery = await client.discover();
  for (final service in discovery.services) {
    print('${service.id}: ${service.title}');
  }

  // Build a request with patient-view context
  final context = PatientViewContext(
    userId: 'Practitioner/123',
    patientId: '456',
  );

  final request = CdsRequest(
    hook: context.hookName,
    hookInstance: 'unique-id-here',
    context: context.toJson(),
  );

  // Invoke a service
  final response = await client.invoke('my-service', request);
  for (final card in response.cards) {
    print('${card.indicator.name}: ${card.summary}');
  }

  // --- Service usage ---

  // Build a response using the fluent builder
  final builder = CdsResponseBuilder()
    ..addInfoCard(
      summary: 'Patient is due for flu vaccine.',
      sourceLabel: 'Immunization Forecaster',
    )
    ..addWarningCard(
      summary: 'Drug-drug interaction detected.',
      sourceLabel: 'Drug Interaction Checker',
      suggestions: [
        CdsResponseBuilder.createSuggestion(
          label: 'Cancel conflicting order',
          action: CdsAction(
            type: CdsActionType.delete,
            resourceId: 'MedicationRequest/789',
            description: 'Remove the conflicting medication order',
          ),
        ),
      ],
    );

  final cdsResponse = builder.build();
  print(cdsResponse.toJson());
}
