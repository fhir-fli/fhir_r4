# fhir_r4_cql — Comprehensive Roadmap

> Last updated: 2026-02-22
> Conformance tests: 1706/1706 (100% pass)
> Full suite: 2475 pass, 1 fail (Exercises04 Aggregate Variance — blocked on ucum)

---

## 1. Current Status Summary

### What's Working
- **CQL-to-ELM translation**: ANTLR4 lexer/parser → visitor → CqlExpression tree
- **Execution engine**: 232 expression types registered, ~165 fully implemented
- **Conformance tests**: 1706/1706 passing (all CQL operator categories)
- **Integration tests**: Exercises01-09 parse and execute correctly
- **Long integer (Integer64)**: Full support via FhirInteger64
- **Uncertainty intervals**: DifferenceBetween/DurationBetween return CqlInterval for partial dates
- **Precision handling**: All temporal operators + interval operators support precision parameters
- **FHIRHelpers**: ToString, ToBoolean, ToInteger, ToDecimal, ToDateTime, ToDate, ToTime, ToQuantity, ToConcept, ToCode conversions

### What's Blocked
- **Exercises04 Aggregate Variance**: Division precision issue in ucum package (waiting on ucum update)
- **Exercises10-11**: Require FHIRCommon library resolution (see Section 5)

---

## 2. CQL Specification — Complete Operator Inventory

All operators below are from the CQL 1.5.2 specification (Appendix B / Section 9).
Status key: DONE = implemented + conformance tests pass, PARTIAL = implemented with known gaps, TODO = not implemented.

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
| Mode | DONE | TODO: tie-breaking for multiple modes |
| Variance | DONE | Precision issue blocked on ucum update |
| PopulationVariance | DONE | Same |
| StdDev | DONE | Same |
| PopulationStdDev | DONE | Same |
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
| ToQuantity | DONE (TODO: Ratio case) |
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
| Null, Literal (all types) | DONE |
| Tuple, Instance | DONE (Instance partial — see Section 4) |
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
**Actual gaps:** ~5

### Visitor Gaps (Need Implementation)

| Visitor | Issue | Priority |
|---------|-------|----------|
| `visitSimplePathIndexer` | Empty file, throws ArgumentError | LOW (rare usage) |
| `visitRatio` / `visitRatioLiteral` | Only calls visitChildren — Ratio literals not parsed | MEDIUM |
| `visitNullLiteral` | Only calls visitChildren — should return NullExpression | LOW (works via parent) |

### Visitors with Default Handling (OK as-is)
These are handled transitively by parent grammar rules and work correctly:
- `visitDefinition`, `visitFunctionIdentifier`, `visitKeyword`, `visitObsoleteIdentifier`, `visitReservedWord`
- `visitSimpleNumberLiteral`, `visitSimpleStringLiteral`
- `visitQualifierExpression`, `visitPointExtractorExpressionTerm`
- `visitIndexInvocation`, `visitThisInvocation`, `visitTotalInvocation`

---

## 4. Known Implementation Gaps (Engine)

### Stub/Incomplete Execute Methods

| Expression | File | Issue | Priority |
|-----------|------|-------|----------|
| Instance | `instance.dart:261` | Only handles Code/Concept; TODO for ValueSet, CodeSystem, Interval, Quantity, Ratio | MEDIUM |
| ToQuantity | `to_quantity.dart:149` | TODO: Ratio-to-Quantity conversion | LOW |
| Mode | `mode.dart:112` | TODO: handle multiple modes (tie-breaking) | LOW |
| MinValue/MaxValue | `min_value.dart`, `max_value.dart` | throws UnimplementedError for unrecognized types | LOW |

### Missing CQL Language Features

| Feature | Description | Priority |
|---------|-------------|----------|
| Ratio literals | `visitRatio`/`visitRatioLiteral` are stubs — Ratio type not parseable from CQL source | MEDIUM |
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

## 5. Integration Test Gaps

### Exercises10 (Lung Cancer Screening — Decision Support)
**Blockers:**
1. **FHIRCommon library resolution** — `include FHIRCommon` requires parsing FHIRCommon.cql and resolving `FC.ToInterval()` calls
2. **Instance construction for System.Quantity** — `System.Quantity { value: ..., unit: ... }`
3. **Test data** — patient bundles for Former-Smoker, Heavy-Smoker, Never-Smoker scenarios
4. **Expected results** — need to create test/test_data/exercises_10.dart

**CQL features used:**
- `AgeInYears()`, `exists`, complex boolean logic
- Timing: `O.effective ends 15 years or less before Today()`
- Component filtering: `singleton from (O.component C where C.code ~ "PACKS A DAY").value`
- Duration: `duration in days of O.effective`
- External library call: `FC.ToInterval(P.performed)`

### Exercises11 (Cervical Cancer Screening — Quality Measure)
**Blockers:** Same as Exercises10 plus:
1. **Cross-resource-type union** — `[Procedure: "Hysterectomy"] union [Condition: "Congenital absence"]`
2. **Complex timing phrases** — `ends 3 years or less on or before end of "Measurement Period"`
3. **Parameter with default interval** — `parameter "Measurement Period" Interval<DateTime> default Interval[...]`

### Exercises09 (ELM comparison only)
- Execution works correctly
- ELM JSON comparison skipped: "reference ELM uses complex Case expressions for choice types that we don't generate yet"

---

## 6. Test Coverage Gaps

### Expression Types with NO Dedicated Unit Tests
These expressions work (conformance tests pass) but have no focused unit tests:

**Type Operators:**
- ConvertsToBoolean, ConvertsToDate, ConvertsToDateTime, ConvertsToDecimal
- ConvertsToInteger, ConvertsToLong, ConvertsToQuantity, ConvertsToRatio
- ConvertsToString, ConvertsToTime
- CanConvert, CanConvertQuantity, ConvertQuantity
- ToChars, ToLong, ToRatio

**DateTime Constructors & Extractors:**
- Date(), Time(), DateTime() constructors
- TimeOfDay
- DateFrom, TimeFrom, TimezoneOffsetFrom
- DateTimeComponentFrom

**Interval/List:**
- Slice, Filter, ForEach, Repeat, Times

**Clinical:**
- CalculateAge, CalculateAgeAt (all AgeIn* variants)
- Subsumes, SubsumedBy
- ExpandValueSet, AnyInValueSet, AnyInCodeSystem

**Structural:**
- Instance (beyond Code/Concept)
- Tuple construction
- Children, Descendents
- Message

### Integration Test Expected Results Missing
- Exercises10: No expected results file
- Exercises11: No expected results file

---

## 7. CQL Spec Examples & Behavioral Rules

### Key Behavioral Rules (from CQL 1.5.2 spec)

**Three-Valued Logic:**
- `false and null` → `false` (short-circuit)
- `true or null` → `true` (short-circuit)
- `null implies null` → `null`
- `false implies null` → `true`

**Equality vs Equivalence:**
- `=` returns null if either operand is null; case-sensitive for strings; compares ALL fields for codes
- `~` never returns null; case-insensitive for strings; `null ~ null` → `true`; codes compare only code+system

**Duration vs Difference:**
- DurationBetween counts whole calendar periods: `months between @2014-01-31 and @2014-02-01` = `0`
- DifferenceBetween counts boundary crossings: `difference in months between @2014-01-31 and @2014-02-01` = `1`
- Both return uncertainty intervals for partial dates

**Calendar vs UCUM Durations:**
- Calendar years equivalent to UCUM annum (`'a'`)
- Calendar months equivalent to UCUM months (`'mo'`)
- Calendar weeks and below are equal to UCUM counterparts
- Calendar durations are context-dependent (months vary in length)

**Timing Phrases:**
- `X starts before start Y` — start of X is before start of Y
- `X starts 3 days before start Y` — exactly 3 days before
- `X starts 3 days or more before start Y` — offset comparison
- `X starts within 3 days of start Y` — absolute difference <= 3 days
- `X ends N years or less on or before end Y` — complex timing used in quality measures

**Null Propagation:**
- Arithmetic: `2 + null` → `null`
- Comparison: `null > 5` → `null`
- Equality: `4 = null` → `null`, `null = null` → `null`
- Aggregates ignore nulls: `Count({1, 2, null})` = `2`, `Sum({1, 2, null})` = `3`

### Reference Implementations
1. **cqframework/clinical_quality_language** (Java) — Primary reference: CQL-to-ELM translator + engine
2. **cqframework/cql-execution** (JavaScript/TypeScript) — JS execution engine
3. **cqframework/cql-tests** (XML) — Official conformance test suite (already imported: 1706/1706 passing)
4. **Cooking with CQL** — 80+ sessions of real-world examples at cqframework/CQL-Formatting-and-Usage-Wiki

### Cooking with CQL Session Topics (Selected)
- Sessions 01-10: CQL basics, types, operators, queries
- Sessions 11-20: Timing expressions, interval operations, terminology
- Sessions 21-30: Advanced queries, multi-source, let, aggregate
- Sessions 31-40: FHIR patterns (choice types, extensions, slicing, negation)
- Sessions 41-50: Quality measure patterns (populations, stratification)
- Sessions 51-60: Decision support patterns (recommendations, evidence)
- Sessions 61-70: Ratio calculations, composite measures, risk scores
- Sessions 71-80+: QI-Core patterns, CPG patterns, FHIR R4 patterns

### FHIRPath-to-CQL Translation Mappings
| FHIRPath | CQL |
|----------|-----|
| `.where()` | Filter |
| `.select()` | ForEach |
| `.all()` | AllTrue + ForEach |
| `.exists()` | Exists |
| `.empty()` | not Exists |
| `.count()` | Count |
| `.first()` | First |
| `.last()` | Last |
| `.tail()` | Tail |
| `.single()` | SingletonFrom |
| `.ofType()` | OfType |
| `.children()` | Children |
| `.descendants()` | Descendents |
| String functions | StartsWith, EndsWith, Matches, ReplaceMatches, PositionOf, Substring, Length, Upper, Lower, ToChars |
| Type conversions | ToInteger, ToDecimal, ToString, ToDateTime, ToDate, ToTime, ToBoolean, ToQuantity |
| ConvertsTo* | ConvertsToInteger, ConvertsToDecimal, etc. |
| `.iif()` | If |
| `.repeat()` | Repeat |

---

## 8. Prioritized Work Items

### P0 — Blocked (Waiting)
1. **Exercises04 Aggregate Variance** — ucum division precision (waiting on ucum package update)

### P1 — High Priority
2. **FHIRCommon library resolution** — Unblocks Exercises10-11; requires parsing FHIRCommon.cql and resolving cross-library function calls like `FC.ToInterval()`
3. **Instance construction** — Implement for Quantity, ValueSet, CodeSystem, Interval, Ratio types (`instance.dart:261`)
4. **Ratio literal parsing** — `visitRatio`/`visitRatioLiteral` are stubs

### P2 — Medium Priority
5. **Exercises10 & 11 end-to-end** — Create test data (patient bundles), expected results, wire into integration tests
6. **Exercises09 ELM comparison** — Generate complex Case expressions for choice types
7. **Unit tests for untested expressions** — ~30 expression types have no dedicated tests (see Section 6)
8. **ToQuantity Ratio case** — `to_quantity.dart:149`

### P3 — Low Priority
9. **Mode tie-breaking** — `mode.dart:112`
10. **SimplePathIndexer** — Empty visitor file
11. **Fluent functions** — Parsed but flag commented out
12. **Library versioning** — Version conflict resolution
13. **Terminology service integration** — Real Subsumes/SubsumedBy for production
14. **ValueSet expansion** — Against live terminology server

---

## 9. File Reference

### Key Source Directories
- `lib/cql_to_elm/visitor/` — 116 visitor files + base visitor
- `lib/engine/expression/` — 150+ expression types
- `lib/engine/clinical_expression/` — Healthcare-specific operations
- `lib/engine/types/` — CqlCode, CqlConcept, CqlInterval, CqlValueSet, etc.
- `lib/engine/library/` — CqlLibrary container

### Test Files
- `test/cql_tests/` — 1706 conformance tests (XML format from cqframework/cql-tests)
- `test/engine/` — Unit tests by category (aggregate, arithmetic, comparison, datetime, interval, list, string, type, etc.)
- `test/integration/` — Exercises01-09 end-to-end tests
- `test/test_data/` — Expected results for exercises
- `test/test_helpers/` — Parsing & comparison utilities

### Configuration
- `AUDIT.md` — Original audit (partially outdated — compilation errors fixed, many TODOs resolved)
- `CLAUDE.md` — Claude Code instructions for this package
