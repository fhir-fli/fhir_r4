# fhir_r4_cql

The FHIR R4B binding for the model-independent
[`cql`](https://pub.dev/packages/cql) engine.

The [`cql`](https://github.com/fhir-fli/cql) package translates
[Clinical Quality Language](https://cql.hl7.org/) source into ELM and
executes it, but it is deliberately FHIR-free: all access to FHIR data goes
through its `ModelResolver` / `TerminologyProvider` boundary interfaces. This
package supplies the FHIR R4 implementations of those interfaces — the
analogue of cqframework's `engine.fhir` / `cql-exec-fhir`:

- **`R4ModelResolver`** — type checks (`is`/`as`), FHIRPath-based property
  navigation, and the boundary conversions between FHIR R4 types and CQL
  System types (`FhirBoolean` ↔ `Boolean`, `Coding` → `Code`,
  `CodeableConcept` → `Concept`, `Quantity` → `System.Quantity`, `Period` →
  `Interval<DateTime>`, `Range` → `Interval<Quantity>`, …).
- **`R4TerminologyProvider`** — resolves value-set membership by fetching the
  FHIR `ValueSet` resource (through `fhir_r4_path`'s canonical-resource
  cache) and checking codes with its `ValueSetChecker`.

The package re-exports `package:cql/cql.dart`, so this single import gives
you the whole engine plus the R4 wiring.

## Installation

```yaml
dependencies:
  fhir_r4_cql: ^0.6.0
```

## Usage

```dart
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

Future<void> main() async {
  const source = '''
library Example version '1.0.0'

define "Greeting": 'Hello, CQL'
define "Sum": 1 + 2 + 3
define "IsAdult": 21 >= 18
define "Evens": (List{1, 2, 3, 4, 5, 6}) X where X mod 2 = 0
''';

  // 1. Translate CQL source to an executable ELM library. Translation
  //    problems are recorded on `library.annotation` (mirroring the
  //    reference translator) rather than thrown.
  final library = libraryFromCql(source);

  // 2. Execute. The R4ModelResolver wires in FHIR R4 data access;
  //    expressions that retrieve (e.g. [Patient], [Observation]) resolve
  //    through it. `execute` returns the run context, keyed by define name.
  final results = await library.execute(
    <String, dynamic>{},
    const R4ModelResolver(),
  ) as Map<String, dynamic>;

  print(results['Sum']); // 6
}
```

A runnable version of this demo is in `example/main.dart`. Translated
libraries round-trip through ELM JSON (`library.toJson()` /
`CqlLibrary.fromJson(...)`), so they can be stored and reloaded without
re-translating.

### Terminology

`R4TerminologyProvider` resolves `in "MyValueSet"` membership tests. By
default it fetches `ValueSet` resources over the network; pass a
pre-populated `CanonicalResourceCache` to resolve offline:

```dart
final terminology = R4TerminologyProvider();
```

Libraries that only use locally-supplied expansions can instead place them
directly in the execution context under `_valueSets` and need no provider.

## The fhir_fli CQL family

| Package | Role |
| --- | --- |
| [`cql`](https://pub.dev/packages/cql) | Model-independent CQL→ELM translator + engine |
| `fhir_r4_cql` | This package — the FHIR R4 binding |
| [`fhir_r5_cql`](https://pub.dev/packages/fhir_r5_cql) | The FHIR R5 binding |
| [`fhir_r6_cql`](https://pub.dev/packages/fhir_r6_cql) | The FHIR R6 binding |

## License

MIT — see [LICENSE](LICENSE).
