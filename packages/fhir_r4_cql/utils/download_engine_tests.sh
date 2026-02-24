#!/bin/bash
# Downloads CQL engine test files from the cqframework/clinical_quality_language
# repository for validating our CQL execution engine.
# Pinned to a specific commit for reproducibility.
#
# Source: Apache 2.0 licensed
# https://github.com/cqframework/clinical_quality_language
set -euo pipefail

COMMIT="ce5790b3ff6f877b4287fcf71ba552ab1a54852c"
BASE_URL="https://raw.githubusercontent.com/cqframework/clinical_quality_language/${COMMIT}"
RESOURCE_PATH="Src/java/engine/src/jvmTest/resources/org/opencds/cqf/cql/engine/execution"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(dirname "$SCRIPT_DIR")"
ENGINE_DIR="${PACKAGE_DIR}/cql/cqf-engine"
MULTILIB_DIR="${ENGINE_DIR}/multilib"
COVERAGE_DIR="${ENGINE_DIR}/CoverageTest"

mkdir -p "$ENGINE_DIR" "$MULTILIB_DIR" "$COVERAGE_DIR"

echo "=== Downloading CQL Engine Test Suites ==="

# Self-validating test suites (highest value)
SUITE_FILES=(
  CqlTestSuite
  CqlTimeZoneTestSuite
  CqlErrorTestSuite
  CqlInternalTypeRepresentationSuite
)

# Standalone engine test files
STANDALONE_FILES=(
  CqlFunctionTests
  CqlConceptTest
  CqlClinicalOperatorsTest
  CqlQueryTests
  CqlDateTimeOperatorsTest
  CqlIntervalOperatorsTest
  CqlListOperatorsTest
  CqlLogicalOperatorsTest
  CqlNullologicalOperatorsTest
  CqlStringOperatorsTest
  CqlTypeOperatorsTest
  CqlTypesTest
  CqlValueLiteralsAndSelectorsTest
  CqlErrorsAndMessagingOperatorsTest
  CqlTimeZoneTests
  FunctionOverloadTest
  CqlListDistinguishedOverloads
  HedisCompatibilityTest
  DateComparatorTest
  DateOrDateTimeInNullIntervalTest
  EmptyStringsTest
  SortDescendingTest
  TestUnion
  LetClauseOutsideQueryContextTest
  ResolveParameterDefaultTest
  SignatureOutputTests
)

# Cross-library test files (main + common)
CROSS_LIB_FILES=(
  IncludedCodeRefTest
  IncludedCodeRefTestCommon
  IncludedConceptRefTest
  IncludedConceptRefTestCommon
  IncludedParameterTest
  IncludedParameterTestCommon
  IncludedValueSetRefTest
  IncludedValueSetRefTestCommon
  IncludedSignatureOutputTests
  IncludedSignatureWithAliasOutputTests
)

# Issue regression tests
ISSUE_FILES=(
  Issue33
  Issue39
  Issue208
  Issue213
  Issue223
  Issue458
)

# Multilib directory files
MULTILIB_FILES=(
  CqlFileWithLibOtherName
  LibraryWithVersion
  MeasureA
  MeasureB
  MultiLibrary1
  MultiLibrary2
  MultiLibrary3
  MultiLibraryBad
  NameMismatch
)

# CoverageTest directory files
COVERAGE_FILES=(
  Library1
  Library2
  Tests
)

echo ""
echo "--- Test Suites ---"
for f in "${SUITE_FILES[@]}"; do
  echo "  ${f}.cql"
  curl -sfL -o "${ENGINE_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/${f}.cql" || echo "  WARN: Failed to download ${f}.cql"
done

echo ""
echo "--- Standalone Tests ---"
for f in "${STANDALONE_FILES[@]}"; do
  echo "  ${f}.cql"
  curl -sfL -o "${ENGINE_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/${f}.cql" || echo "  WARN: Failed to download ${f}.cql"
done

echo ""
echo "--- Cross-Library Tests ---"
for f in "${CROSS_LIB_FILES[@]}"; do
  echo "  ${f}.cql"
  curl -sfL -o "${ENGINE_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/${f}.cql" || echo "  WARN: Failed to download ${f}.cql"
done

echo ""
echo "--- Issue Regression Tests ---"
for f in "${ISSUE_FILES[@]}"; do
  echo "  ${f}.cql"
  curl -sfL -o "${ENGINE_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/${f}.cql" || echo "  WARN: Failed to download ${f}.cql"
done

echo ""
echo "--- Multilib Tests ---"
for f in "${MULTILIB_FILES[@]}"; do
  echo "  multilib/${f}.cql"
  curl -sfL -o "${MULTILIB_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/multilib/${f}.cql" || echo "  WARN: Failed to download multilib/${f}.cql"
done

echo ""
echo "--- CoverageTest ---"
for f in "${COVERAGE_FILES[@]}"; do
  echo "  CoverageTest/${f}.cql"
  curl -sfL -o "${COVERAGE_DIR}/${f}.cql" \
    "${BASE_URL}/${RESOURCE_PATH}/CoverageTest/${f}.cql" || echo "  WARN: Failed to download CoverageTest/${f}.cql"
done

echo ""
echo "=== Download complete ==="
echo "Files: ${ENGINE_DIR}/"
echo ""
TOTAL=$(find "$ENGINE_DIR" -name "*.cql" | wc -l)
echo "Total CQL files downloaded: ${TOTAL}"
