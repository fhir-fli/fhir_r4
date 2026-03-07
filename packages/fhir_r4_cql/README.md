# fhir_r4_cql

A Dart implementation of the [Clinical Quality Language (CQL)](https://cql.hl7.org/) for FHIR R4. This package parses CQL source text into an Expression Logic Model (ELM) representation and provides an execution engine to evaluate CQL expressions against FHIR data.

## Features

- **CQL-to-ELM translation** -- ANTLR4-based parser converts CQL source into ELM expression trees via a comprehensive visitor pattern
- **Expression engine** -- Evaluates 150+ CQL expression types at runtime, including:
  - Aggregates: Count, Sum, Avg, Min, Max, Median, Mode, StdDev, Variance
  - Arithmetic: Add, Subtract, Multiply, Divide, Modulo, Abs, Ceiling, Floor, Round, Truncate
  - Comparison: Equal, Equivalent, Greater, Less, GreaterOrEqual, LessOrEqual
  - Logical: And, Or, Not, Implies, Xor
  - String: Combine, Split, IndexOf, PositionOf, Matches, Length, Upper, Lower
  - DateTime: After, Before, SameAs, SameOrAfter, SameOrBefore, Duration, Difference
  - Intervals: Contains, In, Includes, Meets, Overlaps, Starts, Ends, Union, Intersect, Except
  - Lists: Union, Intersect, Except, Distinct, Flatten, First, Last, IndexOf
  - Control flow: If, Case, queries with Where/Return/Sort
- **CQL type system** -- CqlCode, CqlConcept, CqlValueSet, CqlCodeSystem, CqlInterval, CqlTuple
- **Clinical operations** -- CalculateAge, InValueSet, InCodeSystem, Retrieve (FHIR resource retrieval)
- **Library management** -- Resolve library includes, function overloads, fluent functions, and cross-library references
- **Model information** -- Pre-built model metadata for FHIR (versions 1.0.2 through 4.0.1), QDM (4.2 through 5.6), and QUICK (1.4 through 1.8)
- **JSON serialization** -- Full round-trip support for ELM JSON (fromJson/toJson on all expression and library types)

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  fhir_r4_cql: ^0.5.0
```

## Usage

### Parse CQL and execute

```dart
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// Parse CQL source into an ELM library
final cqlSource = '''
library Example version '1.0'
using FHIR version '4.0.1'

define "Is Adult": AgeInYears() >= 18
''';

// The ANTLR lexer/parser and visitor pipeline converts CQL text to a CqlLibrary
// (see the cql_to_elm module for the full translation pipeline)
```

### Work with expressions directly

```dart
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// Build and evaluate expressions programmatically
final list = ListExpression(element: [
  LiteralInteger(value: '1'),
  LiteralInteger(value: '2'),
  LiteralInteger(value: '3'),
]);

final count = Count(source: list);
final result = await count.execute({});
// result == fhir.FhirInteger(3)
```

### Load and execute an ELM JSON library

```dart
import 'dart:convert';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// Load a CQL library from its ELM JSON representation
final elmJson = json.decode(elmJsonString) as Map<String, dynamic>;
final library = CqlLibrary.fromJson(elmJson);

// Execute all statements in the library
final results = await library.execute();
```

### Terminology operations

```dart
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// CQL codes, concepts, and value sets
final code = CqlCode(code: '428361000124107', system: 'http://snomed.info/sct');
final concept = CqlConcept(codes: [code], display: 'Hypertension');
final valueSet = CqlValueSet(id: 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.104.12.1011');
```

## Architecture

The package is organized into four top-level modules:

| Module | Description |
|--------|-------------|
| `cql_to_elm` | ANTLR4 lexer, parser, and visitor pipeline that translates CQL source into ELM expression trees |
| `engine` | Runtime evaluation engine -- expressions, library container, type system, clinical operations, and data retrieval |
| `model` | Pre-generated model metadata for FHIR, QDM, and QUICK specifications |
| `exceptions` | Error handling with source location tracking and severity levels |

## Status

This package is in active development. The core expression engine and CQL-to-ELM parser are functional, with ongoing work to expand coverage of the CQL specification.

## Additional information

- Part of the [fhir_r4](https://pub.dev/packages/fhir_r4) package family
- CQL specification: [https://cql.hl7.org/](https://cql.hl7.org/)
- Documentation: [fhirfli.dev](https://www.fhirfli.dev/)
- Repository: [github.com/fhir-fli/cql](https://github.com/fhir-fli/cql)
