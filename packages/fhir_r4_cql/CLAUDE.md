# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Package Overview

**fhir_r4_cql** is a Clinical Quality Language (CQL) implementation in Dart. It parses CQL source into an Expression Logic Model (ELM) representation and provides an execution engine to evaluate CQL expressions against FHIR data. Part of the FHIR FLI monorepo.

Status: Early development (`0.0.0-dev1`). Pure Dart package.

## Commands

```bash
# Install dependencies
dart pub get

# Run all tests
dart test

# Run a single test file
dart test test/engine/cql_aggregate_test.dart

# Run integration tests
dart test test/integration/cql_exercises_test.dart

# Analyze code
dart analyze

# Format code
dart format lib/ test/ bin/

# CLI: Convert CQL files to ELM JSON (requires local translation service on :8080)
dart run bin/cql_to_json.dart
```

## Architecture

Four top-level modules exported from `lib/fhir_r4_cql.dart`:

### `cql_to_elm/` — CQL Parser & Translator
Converts CQL source text into ELM expression trees:
- `antlr/` — ANTLR4-generated lexer (`cql_lexer.dart`, ~110KB) and parser (`cql_parser.dart`, ~349KB) from `cql.g4` grammar. **Do not hand-edit these files.**
- `visitor/` — Visitor pattern implementation with 100+ specialized visitors that convert the ANTLR parse tree into `CqlExpression` objects
- Translation flow: `CQL Source → Lexer → Parser → AST → Visitors → CqlExpression tree`

### `engine/` — CQL Execution Engine
Evaluates CQL expressions at runtime:
- `expression/` — 150+ expression types. `CqlExpression` is the abstract base with a factory constructor for polymorphic deserialization from JSON. Expression categories: aggregates (Count, Sum, Avg, Min, Max, StdDev, Variance), operators (arithmetic, logical, comparison), queries, intervals, control flow (If/Case), literals, property access
- `library/` — `CqlLibrary` is the main container: holds usings, includes, parameters, terminology (code systems, value sets), and statement definitions. Call `execute(context)` to evaluate
- `types/` — CQL type system: `CqlCode`, `CqlConcept`, `CqlValueSet`, `CqlCodeSystem`, `CqlInterval`, `CqlTuple`
- `clinical_expression/` — Healthcare-specific operations: `CalculateAge`, `InValueSet`, `InCodeSystem`, `Retrieve` (FHIR resource retrieval)
- `retrieve/` — `RetrieveProvider` interface for data source abstraction

### `model/` — Model Information
- `serializing/model_info/` — Pre-generated Dart files containing type metadata for FHIR (multiple versions: 1.0.2 through 4.0.1)
- `qdm/` — QDM model definitions (versions 4.2 through 5.6)
- `quick/` — QUICK model definitions (versions 1.4 through 1.8)
- `StandardModelInfoProvider` loads the appropriate model definitions at runtime

### `exceptions/` — Error Handling
- `CqlException` with source location tracking, `ResultWithPossibleError<T>` wrapper, severity levels

## Key Dependencies

- `antlr4` — Parser runtime for CQL grammar
- `fhir_r4` / `fhir_r4_path` — Core FHIR types and FHIRPath engine
- `ucum` — Units of measure conversion
- `xml` / `xml2json` — Model info serialization

## Test Structure

```
test/
├── test_data/           # Expected results for CQL exercise execution
├── test_helpers/        # Parsing & comparison utilities
├── integration/
│   └── cql_exercises_test.dart   # End-to-end CQL parse + execute tests
└── engine/
    ├── cql_aggregate_test.dart   # Count, Sum, Avg, Min, Max, Median, Mode, etc.
    ├── cql_arithmetic_test.dart  # Abs, Ceiling, Floor, Truncate, Negate, Round, etc.
    ├── cql_comparison_test.dart  # Greater, Less, GreaterOrEqual, LessOrEqual, Equivalent
    ├── cql_datetime_test.dart    # After, Before, SameAs, SameOrAfter, SameOrBefore, etc.
    ├── cql_interval_test.dart    # Contains, In, Includes, Meets, Overlaps, Starts, Ends, etc.
    ├── cql_list_test.dart        # Union, Intersect, Except, Distinct, Flatten, etc.
    ├── cql_string_test.dart      # Combine, Split, IndexOf, PositionOf, Matches, etc.
    └── cql_type_test.dart        # As (placeholder)
```

Tests are async, operate on expression objects directly, and compare results to FHIR types:
```dart
final list = ListExpression(element: [LiteralInteger(value: '1'), ...]);
final count = Count(source: list);
final result = await count.execute({});
expect(result, equals(fhir.FhirInteger(5)));
```

## File Access Warnings

- **Do not hand-edit** `lib/cql_to_elm/antlr/cql_lexer.dart`, `cql_parser.dart`, or `visitor/cql_base_visitor.dart` — these are generated from the CQL grammar
- `lib/model/qdm/` and `lib/model/quick/` directories contain versioned model definitions — read selectively
- `cql/` and `json/` contain CQL exercises and their expected ELM JSON outputs

## Code Generation

Utility scripts in `utils/` generate model info and other derived code:
- `cql_to_json_generator.dart` — Batch CQL→JSON via external translation service
- `qdm_generator.dart`, `quick_generator.dart`, `model_info_generator.dart` — Generate model definitions from source specs

## Linting

Uses `lints/recommended.yaml` with default rules (no custom overrides).
