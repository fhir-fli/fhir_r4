#!/bin/bash

# Simple test runner - tests each package ONCE and reports results
# Only tests: fhir_r4, at_rest, db, mapping, path, bulk, validation

echo "=========================================="
echo "FHIR R4 Test Runner"
echo "Testing 7 packages only"
echo "=========================================="
echo ""

PACKAGES=(
  "packages/fhir_r4"
  "packages/fhir_r4_at_rest"
  "packages/fhir_r4_db"
  "packages/fhir_r4_bulk"
  "packages/fhir_r4_path"
  "packages/fhir_r4_mapping"
  "packages/fhir_r4_validation"
)

RESULTS_FILE="test_results_$(date +%Y%m%d_%H%M%S).txt"
echo "FHIR R4 Test Results - $(date)" > "$RESULTS_FILE"
echo "=========================================" >> "$RESULTS_FILE"
echo "" >> "$RESULTS_FILE"

PASSED=0
FAILED=0

for PACKAGE in "${PACKAGES[@]}"; do
  PACKAGE_NAME=$(basename "$PACKAGE")
  echo ""
  echo "=========================================="
  echo "Testing: $PACKAGE_NAME"
  echo "=========================================="
  
  if [ ! -d "$PACKAGE" ]; then
    echo "SKIPPED: Directory not found"
    echo "$PACKAGE_NAME: SKIPPED (not found)" >> "$RESULTS_FILE"
    continue
  fi
  
  cd "$PACKAGE" || continue
  
  # Run tests with 5-minute timeout
  timeout 300 dart test 2>&1
  EXIT_CODE=$?
  
  if [ $EXIT_CODE -eq 0 ]; then
    echo "✓ PASSED: $PACKAGE_NAME"
    echo "$PACKAGE_NAME: PASSED" >> "../../$RESULTS_FILE"
    ((PASSED++))
  elif [ $EXIT_CODE -eq 124 ]; then
    echo "✗ TIMEOUT: $PACKAGE_NAME (5 minutes)"
    echo "$PACKAGE_NAME: TIMEOUT" >> "../../$RESULTS_FILE"
    ((FAILED++))
  else
    echo "✗ FAILED: $PACKAGE_NAME"
    echo "$PACKAGE_NAME: FAILED" >> "../../$RESULTS_FILE"
    ((FAILED++))
  fi
  
  cd - > /dev/null
done

echo ""
echo "=========================================="
echo "FINAL RESULTS"
echo "=========================================="
echo "Passed: $PASSED"
echo "Failed: $FAILED"
echo ""
echo "" >> "$RESULTS_FILE"
echo "Summary: $PASSED passed, $FAILED failed" >> "$RESULTS_FILE"
echo "Results saved to: $RESULTS_FILE"
