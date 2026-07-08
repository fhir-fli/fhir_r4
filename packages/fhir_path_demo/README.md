# fhir_path_demo

A small Flutter demo app for evaluating [FHIRPath](https://hl7.org/fhirpath/) expressions
against FHIR R4 resources, built with [`fhir_r4`](https://pub.dev/packages/fhir_r4) and
[`fhir_r4_path`](https://pub.dev/packages/fhir_r4_path).

This package is not published (`publish_to: none`); it exists as a runnable example.

## What it does

The app presents three text fields:

- **Resource** – a FHIR resource as JSON (parsed via `Resource.fromJson`)
- **Variables** – an optional JSON map of environment variables
- **Expression** – the FHIRPath expression to evaluate

Pressing evaluate runs the expression through `FHIRPathEngine` and shows the results.
Internally it creates the engine once (`FHIRPathEngine.create(WorkerContext(...))`),
parses the expression with `parse()`, and evaluates it with `evaluateWithContext()`.

## Running

```bash
cd fhir_r4/packages/fhir_path_demo
flutter pub get
flutter run
```
