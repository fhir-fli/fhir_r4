# fhir_r4_cql — Comprehensive Roadmap

> Last updated: 2026-02-22
> Conformance tests: 1706/1706 (100% pass)
> Full suite: 2540 pass, 0 fail
> Integration tests: All 12 exercises (Simple + Exercises01-11) fully passing

---

## 1. Current Status Summary

### What's Working
- **CQL-to-ELM translation**: ANTLR4 lexer/parser → visitor → CqlExpression tree
- **Execution engine**: 232 expression types registered, ~165 fully implemented
- **Conformance tests**: 1706/1706 passing (all CQL operator categories)
- **Integration tests**: All exercises (Simple, Exercises01-11) parse and execute correctly
- **Cross-library resolution**: `include` statements auto-resolve via LibraryManager with FileSystemLibrarySourceProvider
- **Long integer (Integer64)**: Full support via FhirInteger64
- **Uncertainty intervals**: DifferenceBetween/DurationBetween return CqlInterval for partial dates
- **Precision handling**: All temporal operators + interval operators support precision parameters
- **FHIRHelpers**: Full suite of conversions (ToString, ToBoolean, ToInteger, ToDecimal, ToDateTime, ToDate, ToTime, ToQuantity, ToConcept, ToCode, ToRatio, ToInterval, ToValue, ToValueSet, ToCalendarUnit, ToQuantityIgnoringComparator)
- **FHIRCommon**: Cross-library resolution for `FC.ToInterval()` and other functions
- **Instance construction**: All types (Code, Concept, Quantity, Ratio, Interval, ValueSet, CodeSystem, primitives)
- **Ratio literals**: Full CQL parsing and execution via LiteralRatio

### Nothing Blocked
All previously blocked items have been resolved.

---

## 2. CQL Specification — Complete Operator Inventory

All operators below are from the CQL 1.5.2 specification (Appendix B / Section 9).
Status key: DONE = implemented + conformance tests pass.

### 2.1 Comparison Operators (7) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| Equal | `T = T : Boolean` | DONE |
| Equivalent | `T ~ T : Boolean` | DONE |
| NotEqual | `T != T : Boolean` | DONE |
| Less | `T < T : Boolean` | DONE |
| Greater | `T > T : Boolean` | DONE |
| LessOrEqual | `T <= T : Boolean` | DONE |
| GreaterOrEqual | `T >= T : Boolean` | DONE |

### 2.2 Logical Operators (8) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| And | `Boolean and Boolean : Boolean` | DONE |
| Or | `Boolean or Boolean : Boolean` | DONE |
| Not | `not Boolean : Boolean` | DONE |
| Xor | `Boolean xor Boolean : Boolean` | DONE |
| Implies | `Boolean implies Boolean : Boolean` | DONE |
| IsTrue | `X is true : Boolean` | DONE |
| IsFalse | `X is false : Boolean` | DONE |
| IsNull | `X is null : Boolean` | DONE |

### 2.3 Arithmetic Operators (23) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| Add | `Integer + Integer : Integer` (also Decimal, Long, Quantity, Date+Quantity) | DONE |
| Subtract | `Integer - Integer : Integer` (same variants) | DONE |
| Multiply | `Integer * Integer : Integer` (also Decimal, Long, Quantity) | DONE |
| Divide | `Decimal / Decimal : Decimal` | DONE |
| TruncatedDivide | `Integer div Integer : Integer` | DONE |
| Modulo | `Integer mod Integer : Integer` | DONE |
| Negate | `-Integer : Integer` | DONE |
| Abs | `Abs(Integer) : Integer` | DONE |
| Ceiling | `Ceiling(Decimal) : Integer` | DONE |
| Floor | `Floor(Decimal) : Integer` | DONE |
| Truncate | `Truncate(Decimal) : Integer` | DONE |
| Round | `Round(Decimal) : Decimal` | DONE |
| Ln | `Ln(Decimal) : Decimal` | DONE |
| Exp | `Exp(Decimal) : Decimal` | DONE |
| Log | `Log(Decimal, Decimal) : Decimal` | DONE |
| Power | `Decimal ^ Decimal : Decimal` | DONE |
| Successor | `successor of T : T` | DONE |
| Predecessor | `predecessor of T : T` | DONE |
| MinValue | `minimum T : T` | DONE |
| MaxValue | `maximum T : T` | DONE |
| Precision | `Precision(Decimal) : Integer` | DONE |
| LowBoundary | `LowBoundary(T) : T` | DONE |
| HighBoundary | `HighBoundary(T) : T` | DONE |

### 2.4 String Operators (17) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| Concatenate | `String + String : String` | DONE |
| & (combine) | `String & String : String` (null-safe) | DONE |
| Combine | `Combine(List<String>) : String` | DONE |
| Split | `Split(String, String) : List<String>` | DONE |
| SplitOnMatches | `SplitOnMatches(String, String) : List<String>` | DONE |
| Length | `Length(String) : Integer` | DONE |
| Upper | `Upper(String) : String` | DONE |
| Lower | `Lower(String) : String` | DONE |
| Indexer | `String[Integer] : String` | DONE |
| PositionOf | `PositionOf(String, String) : Integer` | DONE |
| LastPositionOf | `LastPositionOf(String, String) : Integer` | DONE |
| Substring | `Substring(String, Integer) : String` | DONE |
| StartsWith | `StartsWith(String, String) : Boolean` | DONE |
| EndsWith | `EndsWith(String, String) : Boolean` | DONE |
| Matches | `Matches(String, String) : Boolean` | DONE |
| ReplaceMatches | `ReplaceMatches(String, String, String) : String` | DONE |
| ToChars | `ToChars(String) : List<String>` | DONE |

### 2.5 DateTime Operators (19) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| DateTime | `DateTime(Integer, ...) : DateTime` | DONE |
| Date | `Date(Integer, ...) : Date` | DONE |
| Time | `Time(Integer, ...) : Time` | DONE |
| Now | `Now() : DateTime` | DONE |
| Today | `Today() : Date` | DONE |
| TimeOfDay | `TimeOfDay() : Time` | DONE |
| DateFrom | `date from DateTime : Date` | DONE |
| TimeFrom | `time from DateTime : Time` | DONE |
| TimezoneOffsetFrom | `timezone offset from DateTime : Decimal` | DONE |
| DateTimeComponentFrom | `year from DateTime : Integer` (all components) | DONE |
| DurationBetween | `duration in X between T and T : Integer` | DONE (with uncertainty) |
| DifferenceBetween | `difference in X between T and T : Integer` | DONE (with uncertainty) |
| SameAs | `T same X as T : Boolean` | DONE |
| SameOrBefore | `T same X or before T : Boolean` | DONE |
| SameOrAfter | `T same X or after T : Boolean` | DONE |
| Before | `T before T : Boolean` | DONE |
| After | `T after T : Boolean` | DONE |
| OnOrBefore | `T on or before T : Boolean` | DONE |
| OnOrAfter | `T on or after T : Boolean` | DONE |

### 2.6 Interval Operators (25) — ALL DONE
| Operator | Signature | Status |
|----------|-----------|--------|
| Interval | `Interval[T, T] : Interval<T>` | DONE |
| Start | `start of Interval<T> : T` | DONE |
| End | `end of Interval<T> : T` | DONE |
| Width | `width of Interval<T> : T` | DONE |
| Size | `Size(Interval<T>) : T` | DONE |
| PointFrom | `point from Interval<T> : T` | DONE |
| Contains | `Interval<T> contains T : Boolean` (with precision) | DONE |
| In | `T in Interval<T> : Boolean` (with precision) | DONE |
| Includes | `Interval<T> includes Interval<T> : Boolean` | DONE |
| IncludedIn | `Interval<T> included in Interval<T> : Boolean` | DONE |
| ProperContains | with precision | DONE |
| ProperIn | with precision | DONE |
| ProperIncludes | with precision | DONE |
| ProperIncludedIn | with precision | DONE |
| Before/After | (shared with DateTime) | DONE |
| Meets | with optional precision | DONE |
| MeetsBefore | with optional precision | DONE |
| MeetsAfter | with optional precision | DONE |
| Overlaps | with optional precision | DONE |
| OverlapsBefore | with optional precision | DONE |
| OverlapsAfter | with optional precision | DONE |
| Starts | with optional precision | DONE |
| Ends | with optional precision | DONE |
| Collapse | with optional per unit | DONE |
| Expand | with optional per unit | DONE |

### 2.7 List Operators (30) — ALL DONE
| Operator | Status |
|----------|--------|
| List, Contains, In, Includes, IncludedIn | DONE |
| ProperContains, ProperIn, ProperIncludes, ProperIncludedIn | DONE |
| Union, Intersect, Except | DONE |
| Distinct, Flatten, First, Last, Tail, Take, Skip, Slice | DONE |
| IndexOf, Indexer, SingletonFrom, Exists | DONE |
| Sort, ForEach, Filter, Repeat, Times, Coalesce | DONE |

### 2.8 Aggregate Operators (16) — ALL DONE
| Operator | Status | Notes |
|----------|--------|-------|
| Count | DONE | |
| Sum | DONE | |
| Avg | DONE | |
| Min | DONE | |
| Max | DONE | |
| Median | DONE | |
| Mode | DONE | Tie-breaking for multiple modes not yet spec-defined |
| Variance | DONE | |
| PopulationVariance | DONE | |
| StdDev | DONE | |
| PopulationStdDev | DONE | |
| AllTrue | DONE | |
| AnyTrue | DONE | |
| GeometricMean | DONE | |
| Product | DONE | Supports Integer, Decimal, Long, Quantity |
| Aggregate | DONE | Query aggregate clause |

### 2.9 Type Operators (29) — ALL DONE
| Operator | Status |
|----------|--------|
| As, Is, Convert, CanConvert | DONE |
| ToBoolean, ToDate, ToDateTime, ToDecimal, ToInteger, ToLong | DONE |
| ToQuantity | DONE |
| ToRatio, ToString, ToTime, ToList, ToConcept, ToChars | DONE |
| ConvertsToBoolean, ConvertsToDate, ConvertsToDateTime | DONE |
| ConvertsToDecimal, ConvertsToInteger, ConvertsToLong | DONE |
| ConvertsToQuantity, ConvertsToRatio, ConvertsToString, ConvertsToTime | DONE |
| CanConvertQuantity, ConvertQuantity | DONE |

### 2.10 Clinical Operators (12+) — ALL DONE
| Operator | Status | Notes |
|----------|--------|-------|
| CalculateAge | DONE | |
| CalculateAgeAt | DONE | |
| AgeInYears/Months/Weeks/Days | DONE | Syntactic sugar |
| AgeInYearsAt/MonthsAt/etc. | DONE | |
| InValueSet | DONE | |
| InCodeSystem | DONE | |
| AnyInValueSet | DONE | |
| AnyInCodeSystem | DONE | |
| ExpandValueSet | DONE | |
| Subsumes | DONE | Needs real terminology service for production |
| SubsumedBy | DONE | Same |

### 2.11 Control Flow / Structural — ALL DONE
| Construct | Status |
|-----------|--------|
| If/Then/Else | DONE |
| Case (selected + conditional) | DONE |
| Message | DONE |
| Null, Literal (all types including Ratio) | DONE |
| Tuple, Instance (all types) | DONE |
| Property, Query, Retrieve | DONE |
| ExpressionRef, FunctionRef, ParameterRef | DONE |
| CodeRef, ConceptRef, ValueSetRef, CodeSystemRef | DONE |
| AliasRef, QueryLetRef, OperandRef, IdentifierRef | DONE |
| Current, Iteration, Total | DONE |
| Children, Descendents | DONE |

---

## 3. ANTLR Visitor Coverage

**Total grammar rules:** 178 visit methods in CqlBaseVisitor
**Dedicated visitor files:** 116
**Handled by base visitor or parent rules:** ~57
**Actual gaps:** ~2

### Visitor Gaps (Need Implementation)

| Visitor | Issue | Priority |
|---------|-------|----------|
| `visitSimplePathIndexer` | Empty file, throws ArgumentError | LOW (rare usage) |
| `visitNullLiteral` | Only calls visitChildren — should return NullExpression | LOW (works via parent) |

### Visitors with Default Handling (OK as-is)
These are handled transitively by parent grammar rules and work correctly:
- `visitDefinition`, `visitFunctionIdentifier`, `visitKeyword`, `visitObsoleteIdentifier`, `visitReservedWord`
- `visitSimpleNumberLiteral`, `visitSimpleStringLiteral`
- `visitQualifierExpression`, `visitPointExtractorExpressionTerm`
- `visitIndexInvocation`, `visitThisInvocation`, `visitTotalInvocation`

---

## 4. Known Implementation Gaps (Engine)

### Minor Gaps

| Expression | File | Issue | Priority |
|-----------|------|-------|----------|
| Mode | `mode.dart` | Tie-breaking for multiple modes undefined in spec | LOW |
| MinValue/MaxValue | `min_value.dart`, `max_value.dart` | throws UnimplementedError for unrecognized types | LOW |

### Missing CQL Language Features

| Feature | Description | Priority |
|---------|-------------|----------|
| Fluent functions | Parsed but `fluent` flag is commented out in visitor | LOW |
| Library versioning | Version conflict resolution not implemented | LOW |
| Access modifiers | On included libraries, not enforced | LOW |
| External functions | Body-less function definitions for external implementation | LOW |

### Clinical/Production Features

| Feature | Description | Priority |
|---------|-------------|----------|
| Terminology service | Subsumes/SubsumedBy need real terminology service integration | MEDIUM (for production) |
| ValueSet expansion | Against a live terminology server | MEDIUM (for production) |
| Related context retrieval | E.g., accessing related Patient resources from Encounter context | LOW |
| Multiple model support | QDM + FHIR in same library | LOW |

---

## 5. Integration Tests

All 11 exercises parse and execute correctly:
- **Simple**: Basic CQL expressions
- **Exercises01-04**: Arithmetic, types, aggregates, variance/stddev
- **Exercises05-08**: FHIR data queries with Patient bundles
- **Exercises09**: Complex CQL patterns — choice types, extensions, slices
- **Exercises10**: Lung Cancer Screening Decision Support (uses FHIRCommon `FC.ToInterval()`, timing phrases with `starts`/`ends`)
- **Exercises11**: Cervical Cancer Screening Quality Measure (uses FHIRCommon, Union, timing phrases)

---

## 6. Test Coverage Gaps

### Expression Types with NO Dedicated Unit Tests
These expressions work (conformance tests pass) but have no focused unit tests:

| Expression | Category |
|-----------|----------|
| ToChars | Type conversion |
| ToLong | Type conversion |
| Time() constructor | DateTime |
| DateTime() constructor | DateTime |
| TimeOfDay | DateTime |
| DateFrom | DateTime |
| TimeFrom | DateTime |
| TimezoneOffsetFrom | DateTime |
| DateTimeComponentFrom | DateTime |
| Slice | List |
| CalculateAge | Clinical |
| CalculateAgeAt | Clinical |
| Message | Structural |
| Tuple | Structural |

---

## 7. Prioritized Remaining Work Items

### P1 — Medium Priority
1. **Unit tests for 14 untested expressions** — See Section 6

### P2 — Low Priority
2. **Mode tie-breaking** — `mode.dart`
3. **SimplePathIndexer** — Empty visitor file
4. **Fluent functions** — Parsed but flag commented out
5. **Library versioning** — Version conflict resolution
6. **Terminology service integration** — Real Subsumes/SubsumedBy for production
7. **ValueSet expansion** — Against live terminology server

---

## 8. File Reference

### Key Source Directories
- `lib/cql_to_elm/visitor/` — 116 visitor files + base visitor
- `lib/engine/expression/` — 150+ expression types
- `lib/engine/clinical_expression/` — Healthcare-specific operations
- `lib/engine/types/` — CqlCode, CqlConcept, CqlInterval, CqlValueSet, etc.
- `lib/engine/library/` — CqlLibrary container + LibraryManager

### Test Files
- `test/cql_tests/` — 1706 conformance tests (XML format from cqframework/cql-tests)
- `test/engine/` — Unit tests by category (16 test files)
- `test/integration/` — Exercises01-11 end-to-end tests
- `test/test_data/` — Expected results for exercises
- `test/test_helpers/` — Parsing & comparison utilities

### Configuration
- `CLAUDE.md` — Claude Code instructions for this package
