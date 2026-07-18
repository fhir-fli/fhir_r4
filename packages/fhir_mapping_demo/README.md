# fhir_mapping_demo

A small Flutter demo app for running [FHIR Mapping Language](https://hl7.org/fhir/mapping-language.html)
transforms against FHIR R4 resources, built with [`fhir_r4`](https://pub.dev/packages/fhir_r4) and
[`fhir_r4_mapping`](https://pub.dev/packages/fhir_r4_mapping).

This package is not published (`publish_to: none`); it exists as a runnable example.

## What it does

The app presents two inputs and one output:

- **StructureMap (FHIR Mapping Language)** – the map text, parsed with `StructureMapParser`
- **Source Resource** – a FHIR R4 resource as JSON (parsed via `Resource.fromJson`)
- **Output Resource** – the transform result as JSON

Pressing **Transform** parses the map and executes it with
`FhirMapEngine.transformFromFhir(source, structureMap, null)` — the engine creates the
target resource from the map's declared target type. **View parsed StructureMap** shows
the `StructureMap` resource produced from the FML text.

The pre-loaded example extracts a `Patient` (name + birthDate) from a completed
`QuestionnaireResponse`. Maps between standard FHIR R4 resources run fully
self-contained; maps referencing custom logical models need their
`StructureDefinition`s to be resolvable (the app uses an `OnlineResourceCache`).

## Run it

```bash
flutter run -d chrome
```

A build of this app is embedded in the
[FHIR-FLI documentation site](https://fhir-fli.github.io/fhir_fli_documentation/docs/demos/fhir_mapping_demo).

Inspired by the [fhirpath-lab mapper](https://fhirpath-lab.com/FhirMapper2).
