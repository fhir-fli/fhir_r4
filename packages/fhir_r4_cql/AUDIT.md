# fhir_r4_cql — Comprehensive Audit

## Current Status: BLOCKED

There is a **compilation error** in `not_equal.dart:76` (`equalResult.value` should be `equalResult.valueBoolean`) that prevents ALL tests from running. Must be fixed first.

---

## 1. ANTLR Visitors (CQL-to-ELM Translation)

**Location:** `lib/cql_to_elm/visitor/`
**Total visitor files:** 122
**Base visitor methods:** ~240

### Fully Implemented (~97 visitors)
All major CQL grammar constructs have working visitor implementations:

| Category | Visitors |
|----------|----------|
| **Expressions** | Addition, Multiplication, Power, Polarity (unary +/-), Between, Membership (in/not in), Equality, Inequality, And, Or, Not, Implies, Xor |
| **Queries** | Query, QuerySource, SourceClause, WhereClause, WithClause, WithoutClause, AggregateClause, QueryInclusionClause |
| **Timing** | TimingExpression (dispatcher for 9 operators), BeforeOrAfterIntervalOperatorPhrase, ConcurrentWithIntervalOperatorPhrase, IncludesIntervalOperatorPhrase, IncludedInIntervalOperatorPhrase, StartsIntervalOperatorPhrase, EndsIntervalOperatorPhrase, OverlapsIntervalOperatorPhrase, MeetsIntervalOperatorPhrase, WithinIntervalOperatorPhrase |
| **Literals** | NumberLiteral, QuantityLiteral, BooleanExpression, CodeSelector, ConceptSelector, IntervalSelector, ListSelector, TupleSelector, InstanceSelector |
| **Types** | TypeSpecifier, NamedTypeSpecifier, ListTypeSpecifier, IntervalTypeSpecifier, TupleTypeSpecifier, ChoiceTypeSpecifier, CastExpression, ConversionExpressionTerm |
| **Definitions** | LibraryDefinition, UsingDefinition, IncludeDefinition, ParameterDefinition, ExpressionDefinition, FunctionDefinition, ContextDefinition, CodeDefinition, ConceptDefinition, ValueSetDefinition, CodeSystemDefinition |
| **Terms** | InvocationExpressionTerm (complex — handles member access, FHIRHelpers wrapping, query alias detection), IndexedExpressionTerm, IfThenElseExpressionTerm, CaseExpressionTerm, SetAggregateExpressionTerm, TimeBoundaryExpressionTerm, TimeUnitExpressionTerm, DurationExpressionTerm, DifferenceExpressionTerm, ElementExtractorExpressionTerm, TypeExtentExpressionTerm, PredecessorExpressionTerm, SuccessorExpressionTerm |
| **References** | QualifiedIdentifier, QualifiedIdentifierExpression, ReferentialIdentifier, ExternalConstant, Retrieve |
| **Routing** | Statement, TermExpression, TermExpressionTerm, QueryExpression, ParenthesizedTerm, LiteralTerm, various SelectorTerm visitors |

### Partially Implemented (~23 visitors)
Simple routing/delegation visitors that work but have minimal logic:
- AccessModifier, CaseExpressionItem, CodeSystemIdentifier, ContextIdentifier, DateTimeComponent, InvocationTerm, ParamList, various term routers

### Stubs / Incomplete (3)
| Visitor | Issue |
|---------|-------|
| **`cql_simple_path_indexer_visitor.dart`** | **Empty file (0 bytes)** — `visitSimplePathIndexer()` in base throws `ArgumentError` |
| **`visitRatio` / `visitRatioLiteral`** | Only calls `visitChildren()` — Ratio literals not parsed |
| **`visitNullLiteral`** | Only calls `visitChildren()` — returns void, should return `NullExpression` |

### Grammar Rules with Default (visitChildren) Handling Only
These exist in the parser but have no real visitor logic — they just call `visitChildren`:
- `visitDefinition`, `visitFunctionIdentifier`, `visitKeyword`, `visitObsoleteIdentifier`, `visitReservedWord`
- `visitIndexInvocation`, `visitThisInvocation`, `visitTotalInvocation`
- `visitPointExtractorExpressionTerm`, `visitQualifierExpression`
- `visitSimpleNumberLiteral`, `visitSimpleStringLiteral`

Most of these are handled transitively by their parent grammar rules and are fine as-is. The notable gaps are:
- **`visitIndexInvocation`** — `$this` indexing in FHIRPath-like expressions
- **`visitThisInvocation`** — `$this` reference
- **`visitTotalInvocation`** — `$total` in aggregates
- **`visitPointExtractorExpressionTerm`** — `point from` expressions

---

## 2. Engine Expression Types (Execution)

**Location:** `lib/engine/expression/`, `lib/engine/clinical_expression/`
**Total expression types:** ~180

### Fully Implemented with execute() (~165 expressions, ~92%)

**Aggregates:** Count, Sum, Avg, Min, Max, Median, Mode, AllTrue, AnyTrue, GeometricMean, Product

**Arithmetic:** Add, Subtract, Multiply, Divide, TruncatedDivide, Modulo, Negate, Abs, Ceiling, Floor, Truncate, Round, Power, Log, Ln, Exp, Predecessor, Successor, MinValue, MaxValue, Precision

**Comparison:** Equal, NotEqual (has compile error), Less, Greater, LessOrEqual, GreaterOrEqual, Equivalent

**Logical:** And, Or, Not, Xor, Implies

**String:** Concatenate, Combine, Split, SplitOnMatches, Length, Upper, Lower, Substring, StartsWith, EndsWith, Matches, ReplaceMatches, IndexOf, PositionOf, LastPositionOf, ToChars

**DateTime:** Now, Today, DateTime, Date, Time, DateFrom, TimeFrom, TimezoneOffsetFrom, DateTimeComponentFrom, After, Before, SameAs, SameOrAfter, SameOrBefore, DurationBetween, DifferenceBetween, TimeOfDay

**Intervals:** Interval, Start, End, Width, Size, Contains, In, Includes, IncludedIn, ProperContains, ProperIn, ProperIncludes, ProperIncludedIn, Overlaps, OverlapsBefore, OverlapsAfter, Meets, MeetsBefore, MeetsAfter, OnOrBefore, OnOrAfter, Starts, Ends, Collapse, Expand, PointFrom, LowBoundary, HighBoundary

**Lists:** List, Union, Intersect, Except, Distinct, Flatten, First, Last, Tail, Take, Skip, Slice, SingletonFrom, Indexer, Coalesce, Exists, Filter, ForEach, Repeat, Times, Sort

**Type Conversion:** As, Is, Convert, CanConvert, ToBoolean, ToDate, ToDateTime, ToDecimal, ToInteger, ToLong, ToQuantity, ToRatio, ToString, ToTime, ToList, ToConcept, ConvertsToBoolean, ConvertsToDate, ConvertsToDateTime, ConvertsToDecimal, ConvertsToInteger, ConvertsToLong, ConvertsToQuantity, ConvertsToRatio, ConvertsToString, ConvertsToTime, CanConvertQuantity, ConvertQuantity

**Control Flow:** If, Case, NullExpression, Literal, Message

**References:** Property, IdentifierRef, ParameterRef, ExpressionRef, FunctionRef, AliasRef, QueryLetRef, OperandRef, Current, Iteration, Total

**Query:** Query, AliasedQuerySource, RelationshipClause (With/Without), ReturnClause, SortClause, LetClause, AggregateClause

**Clinical:** Retrieve, InValueSet, AnyInValueSet, InCodeSystem, AnyInCodeSystem, CalculateAge, CalculateAgeAt, ExpandValueSet, Subsumes, SubsumedBy, CodeRef, CodeSystemRef, ConceptRef, ValueSetRef

### Partially Implemented (~10 expressions)

| Expression | Issue |
|-----------|-------|
| **StdDev** | Decimal precision issues (6 test failures) |
| **PopulationStdDev** | Decimal precision issues |
| **Variance** | Precision issues |
| **PopulationVariance** | Precision issues |
| **Instance** | Only handles Code and Concept types; TODO for ValueSet, CodeSystem, Interval, Quantity, Ratio |
| **NotEqual** | Compile error: uses `.value` instead of `.valueBoolean` |
| **FunctionRef** | May be incomplete for external library functions |

### Known TODOs in Engine Code

| File | TODO |
|------|------|
| `instance.dart:261` | `// TODO(Dokotela): implement` — ValueSet, CodeSystem, Interval, Quantity, Ratio instance types |
| `meets_after.dart:120` | `// TODO(Dokotela): with precision` |
| `meets_before.dart:120` | `// TODO(Dokotela): with precision` |
| `meets.dart:122` | `// TODO(Dokotela): with precision` |
| `collapse.dart:143` | `// TODO(Dokotela): with precision` |
| `included_in.dart:143` | `// TODO(Dokotela): Implement precision` |
| `difference_between.dart:118` | `// TODO(Dokotela): uncertainties` |
| `to_quantity.dart:149` | `// TODO(Dokotela): Implement the Ratio case` |
| `mode.dart:112` | `// TODO(Dokotela): what if there is more than 1 mode?` |
| `cql_literal.dart:401` | `// TODO(Dokotela): in order to properly match decimal places` |

---

## 3. CQL-to-ELM JSON Translation

### fromJson Coverage
The `CqlExpression.fromJson()` factory handles **~200 type strings**, covering all standard ELM expression types. This is comprehensive.

### ELM Comparison Testing
| Exercise | CQL File | JSON File | ELM Parse Test | Execute Test |
|----------|----------|-----------|----------------|--------------|
| Simple | Yes | Yes | Yes | Yes |
| Exercises01 | Yes | Yes | Yes | Yes |
| Exercises02 | Yes | Yes | Yes | Yes |
| Exercises03 | Yes | Yes | Yes | Yes |
| Exercises04 | Yes | Yes | Yes | Yes |
| Exercises05 | Yes | Yes | Yes | Yes |
| Exercises06 | Yes | Yes | Yes | Yes |
| Exercises07 | Yes | Yes | Yes | Yes |
| Exercises08 | Yes | Yes | Yes | Yes |
| Exercises09 | Yes | Yes | **Skipped** (complex Case choice types not generated yet) | Yes |
| Exercises10 | Yes | Yes | **Not tested** | **Not tested** |
| Exercises11 | Yes | Yes | **Not tested** | **Not tested** |

### Exercises09 ELM Parsing Gap
The test is skipped because "the reference ELM uses complex Case expressions for choice types that we don't generate yet." The visitor produces working CQL but the ELM JSON structure doesn't match the reference.

---

## 4. Test Coverage

### Unit Tests: 10 files, ~363 test cases

| Test File | Expression Types Covered | Tests | Known Failures |
|-----------|------------------------|-------|----------------|
| `cql_aggregate_test.dart` | Count, Sum, Avg, Min, Max, Median, Mode, Variance, PopulationVariance, StdDev, PopulationStdDev, AllTrue, AnyTrue | 57 | 6 (decimal precision in StdDev/PopStdDev) |
| `cql_arithmetic_test.dart` | Abs, Ceiling, Floor, Truncate, Negate, Round, Predecessor, Successor, MinValue, MaxValue | 48 | 0 |
| `cql_basic_arithmetic_test.dart` | Add, Subtract, Multiply, Divide, TruncatedDivide, Modulo, Power, Equal, NotEqual | 48 | **New, untracked file** |
| `cql_comparison_test.dart` | Greater, GreaterOrEqual, Less, LessOrEqual, Equivalent | 32 | 0 |
| `cql_datetime_test.dart` | After, Before, SameAs, SameOrAfter, SameOrBefore, DurationBetween, DifferenceBetween | 31 | 0 |
| `cql_interval_test.dart` | Contains, In, IncludedIn, Includes, Meets, MeetsAfter, MeetsBefore, Overlaps, OverlapsAfter, OverlapsBefore, Starts, Ends, Collapse, Expand, Start, End, Width, Size | 64 | 1 (interval exception) |
| `cql_list_test.dart` | Union, Intersect, Except, Distinct, Flatten, SingletonFrom, Tail, First, Last, Skip, Take | 41 | 0 |
| `cql_string_test.dart` | Combine, Split, IndexOf, PositionOf, LastPositionOf, ReplaceMatches, StartsWith, EndsWith, Matches, Length | 32 | 0 |
| `cql_logical_test.dart` | And, Or, Not, Xor, Implies, IsNull, Coalesce | 39 | **New, untracked file** |
| `cql_type_test.dart` | As, Is, ToBoolean, ToString, ToInteger, ToDecimal, IsTrue, IsFalse | 31 | **Modified, uncommitted** |

### Integration Tests: 10 exercises (Simple + 01-09)

Each exercise tests both ELM parsing correctness and execution result correctness.

### Expression Types with NO Test Coverage

**Untested Operators:**
- ProperContains, ProperIn, ProperIncludes, ProperIncludedIn
- OnOrAfter, OnOrBefore
- HighBoundary, LowBoundary
- CanConvert, CanConvertQuantity, ConvertQuantity
- Children, Descendents
- ToChars, ToLong, ToRatio, ToConcept
- ConvertsTo* family (ConvertsToBoolean, ConvertsToDate, etc.)
- Slice, Filter, ForEach, Repeat, Times
- Subsumes, SubsumedBy
- ExpandValueSet
- AnyInValueSet, AnyInCodeSystem
- Message
- Aggregate (query aggregate clause)

**Untested DateTime constructors:**
- Date (constructor), Time (constructor), DateTime (constructor)
- TimeOfDay
- DateFrom, TimeFrom, TimezoneOffsetFrom
- DateTimeComponentFrom (extract Year, Month, Day, etc.)

**Untested structural:**
- Instance (beyond what exercises cover)
- Tuple construction
- Ratio literal

---

## 5. Exercises 10 & 11 — What They Need

### Exercises10 (Lung Cancer Screening Decision Support)
**Key CQL features used:**
- `include FHIRCommon` — **Library inclusion/resolution for FHIRCommon** (not just FHIRHelpers)
- `AgeInYears()` — CalculateAge (implemented)
- `[Observation: "Tobacco Smoking Status"]` — Retrieve with code filter
- `(O.value as CodeableConcept) in "Current Smoker"` — Cast + ValueSet membership
- `(O.value as CodeableConcept) ~ "Former Smoker"` — Cast + Code equivalence
- `O.effective ends 15 years or less before Today()` — Timing expressions with interval operators
- `singleton from (O.component C where C.code ~ "PACKS A DAY").value` — Singleton from filtered component
- `duration in days of O.effective` — Duration of an interval
- `System.Quantity { value: ..., unit: ... }` — Instance construction for Quantity type
- `FC.ToInterval(P.performed)` — External library function call (FHIRCommon)
- `exists`, `not`, nested boolean logic

**Blockers for Exercises10:**
1. FHIRCommon library resolution (need to parse FHIRCommon.cql and resolve `FC.ToInterval` calls)
2. Instance construction for `System.Quantity` type (currently TODO)
3. Test data (patient bundles) for Former-Smoker, Heavy-Smoker, Never-Smoker scenarios
4. Expected results data file

### Exercises11 (Cervical Cancer Screening Quality Measure)
**Key CQL features used:**
- `include FHIRCommon` — Same library dependency
- `parameter "Measurement Period" Interval<DateTime> default Interval[...]` — Parameter with default interval
- `AgeInYearsAt(start of "Measurement Period")` — CalculateAgeAt
- `Patient.gender = 'female'` — Direct FHIR property access
- `FC.ToInterval(NoCervixProcedure.performed) ends on or before end of "Measurement Period"` — Timing with "on or before"
- `[Procedure: "Hysterectomy..."] union [Condition: "Congenital absence..."]` — Cross-resource-type union
- `FC.ToInterval(CervicalCytology.effective) ends 3 years or less on or before end of "Measurement Period"` — Complex timing phrase

**Blockers for Exercises11:**
1. Same FHIRCommon dependency
2. Cross-resource-type union in queries
3. Test data for patient scenarios
4. Expected results data file

---

## 6. Missing CQL Spec Features (Beyond Exercises)

Based on the CQL 1.5.2 specification, these features are **not covered by any exercise or test**:

### Language Features
- **Ratio** literals and operations (parsing is a stub)
- **$this** reference in filtering/iteration (`visitThisInvocation` is a stub)
- **$total** in aggregate clauses (`visitTotalInvocation` is a stub)
- **point from** interval extraction (`visitPointExtractorExpressionTerm` is a stub)
- **Fluent functions** (parsed but `fluent` flag is commented out)
- **External function** definitions (body-less functions for external implementation)
- **Library versioning** and version conflict resolution
- **Access modifiers** on included libraries

### Clinical Operations
- **Related context retrieval** (e.g., accessing related Patient resources from an Encounter context)
- **Terminology service integration** — Subsumes/SubsumedBy likely need a real terminology service
- **ValueSet expansion** against a terminology server
- **Multiple model support** (QDM + FHIR in same library)

### Type System
- **Ratio** type operations (add, subtract, etc.)
- **Tuple** field access via bracket notation
- **Choice type** handling in `As` expressions (the Exercises09 ELM gap)
- **Implicit conversions** — Some may be missing (Integer→Long, Long→Decimal)

---

## 7. Priority TODO List

### P0 — Blocking (Must Fix)
1. **Fix `not_equal.dart:76`** — `.value` → `.valueBoolean` (compilation error blocking all tests)

### P1 — High Priority
2. **Fix StdDev/PopulationStdDev decimal precision** — 6 test failures
3. **Fix interval exception test** — 1 test failure
4. **Commit/discard uncommitted work** — 3 modified files, 2 untracked test files
5. **Exercises09 ELM parsing** — Complex Case expressions for choice types

### P2 — Feature Gaps for Exercises 10 & 11
6. **FHIRCommon library resolution** — Parse FHIRCommon.cql and resolve cross-library function calls (e.g., `FC.ToInterval()`)
7. **Instance construction** — Implement for Quantity, ValueSet, CodeSystem, Interval, Ratio types
8. **Test data for Exercises 10-11** — Create patient bundles and expected results
9. **Wire Exercises 10-11 into integration tests**

### P3 — Completeness
10. **Ratio parsing** — `visitRatio`/`visitRatioLiteral` are stubs
11. **SimplePathIndexer** — Empty visitor file
12. **$this / $total / point from** — Stub visitor implementations
13. **Precision parameters** — Meets, MeetsAfter, MeetsBefore, Collapse, IncludedIn all have TODO for precision
14. **ToQuantity Ratio case** — TODO in to_quantity.dart
15. **Mode with ties** — TODO: what if there is more than 1 mode?

### P4 — Test Coverage
16. **Add unit tests for ~30 untested expression types** (see Section 4)
17. **Add CQL spec example tests** — The CQL spec includes examples for every operator (e.g., `define "IntegerAbs": Abs(-5) // 5`). These should be transcribed into tests.
18. **Edge case testing** — null propagation, empty lists, boundary values
19. **Cross-type testing** — Integer+Decimal, Quantity+Decimal mixed arithmetic
