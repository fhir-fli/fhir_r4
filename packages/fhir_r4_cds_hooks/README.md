# fhir_r4_cds_hooks

A Dart package implementing [CDS Hooks 2.0](https://cds-hooks.hl7.org/2.0/) for FHIR R4. Provides model classes, a client for invoking remote CDS services, and utilities for building service responses.

## Features

- **CDS Hooks 2.0 model classes** -- Full JSON serialization and `copyWith()` support for all types: CdsRequest, CdsResponse, CdsCard, CdsAction, CdsSuggestion, CdsLink, CdsSource, CdsFeedback, and more
- **Hook context classes** for all standard hooks:
  - `patient-view` -- When a patient chart is opened
  - `order-select` -- When an order is selected in a CPOE workflow
  - `order-sign` -- When orders are being signed
  - `order-dispatch` -- When an order is being dispatched
  - `encounter-start` -- When an encounter begins
  - `encounter-discharge` -- When a patient is being discharged
  - `appointment-book` -- When an appointment is being booked
  - `medication-refill` -- When a medication refill is requested
  - `problem-list-item-create` -- When a problem is being added
  - `allergyintolerance-create` -- When an allergy/intolerance is being recorded
- **CDS client** -- Service discovery, hook invocation, and feedback submission with injectable HTTP client for testing
- **Response builder** -- Fluent API for constructing CdsResponse objects with convenience methods for info, warning, and critical cards
- **Prefetch resolver** -- Resolves prefetch templates (`{{context.patientId}}`) against a FHIR server with authorization
- **Enums** -- Typed enums for indicators (info/warning/critical), action types (create/update/delete), link types (absolute/smart), selection behavior, and feedback outcomes

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  fhir_r4_cds_hooks: ^0.6.0
```

## Usage

### Discover and invoke a CDS service

```dart
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';

final client = CdsClient(
  baseUrl: 'https://example.com/cds-services',
  headers: {'Authorization': 'Bearer <token>'},
);

// Discover available services
final discovery = await client.discover();
for (final service in discovery.services) {
  print('${service.id}: ${service.description}');
}

// Invoke a hook
final request = CdsRequest(
  hook: 'patient-view',
  hookInstance: 'unique-id-here',
  context: PatientViewContext(
    userId: 'Practitioner/123',
    patientId: 'Patient/456',
  ).toJson(),
  fhirServer: 'https://fhir.example.com/r4',
);

final response = await client.invoke('my-service', request);
for (final card in response.cards) {
  print('${card.indicator}: ${card.summary}');
}
```

### Build a CDS response (service side)

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';

final builder = CdsResponseBuilder()
  ..addWarningCard(
    summary: 'Patient has a known drug allergy',
    sourceLabel: 'Allergy Check Service',
    detail: 'The patient has a documented allergy to Penicillin.',
    suggestions: [
      CdsResponseBuilder.createSuggestion(
        label: 'Switch to Azithromycin',
        action: CdsResponseBuilder.createAction(
          resource: MedicationRequest(
            status: MedicationRequestStatus.draft,
            intent: MedicationRequestIntent.order,
            medicationX: CodeableConcept(text: 'Azithromycin 250mg'.toFhirString),
            subject: Reference(reference: 'Patient/456'.toFhirString),
          ),
          description: 'Create alternative medication order',
        ),
      ),
    ],
  )
  ..addInfoCard(
    summary: 'Patient is due for annual wellness visit',
    sourceLabel: 'Preventive Care Reminders',
  );

final response = builder.build();
```

### Resolve prefetch templates

```dart
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';

final resolver = PrefetchResolver(
  fhirServerUrl: 'https://fhir.example.com/r4',
  authorization: 'Bearer <token>',
);

final prefetch = await resolver.resolve(
  {
    'patient': 'Patient/{{context.patientId}}',
    'conditions': 'Condition?patient={{context.patientId}}&clinical-status=active',
  },
  {'patientId': '456'},
);
// prefetch['patient'] is a Patient resource (or null on failure)
```

### Send feedback

```dart
final feedback = CdsFeedbackRequest(
  feedback: [
    CdsFeedback(
      card: 'card-uuid',
      outcome: CdsFeedbackOutcome.accepted,
      acceptedSuggestions: [
        CdsAcceptedSuggestion(id: 'suggestion-uuid'),
      ],
    ),
  ],
);

await client.sendFeedback('my-service', feedback);
```

## Additional information

- Part of the [fhir_r4](https://pub.dev/packages/fhir_r4) package family
- CDS Hooks specification: [https://cds-hooks.hl7.org/2.0/](https://cds-hooks.hl7.org/2.0/)
- Documentation: [fhirfli.dev](https://www.fhirfli.dev/)
- Repository: [github.com/fhir-fli/fhir_r4](https://github.com/fhir-fli/fhir_r4)
