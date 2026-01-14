#!/bin/bash

# Controlled Test Execution Script for FHIR R4 Packages
# This script runs tests with a maximum of 2 attempts per package to avoid infinite loops

set -e

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create a results file
RESULTS_FILE="test_results_$(date +%Y%m%d_%H%M%S).txt"
echo "FHIR R4 Test Results - $(date)" > "$RESULTS_FILE"
echo "=================================" >> "$RESULTS_FILE"
echo "" >> "$RESULTS_FILE"

# Counters
TOTAL_PACKAGES=0
PASSED_PACKAGES=0
FAILED_PACKAGES=0
SKIPPED_PACKAGES=0

# Function to run tests for a package with controlled retry
run_package_tests() {
    local package_name=$1
    local package_path=$2
    local max_attempts=2
    
    echo ""
    echo "================================================"
    echo "Testing: $package_name"
    echo "================================================"
    
    TOTAL_PACKAGES=$((TOTAL_PACKAGES + 1))
    
    # Check if package has tests
    if [ ! -d "$package_path/test" ]; then
        echo -e "${YELLOW}⚠ No test directory found - SKIPPED${NC}"
        echo "$package_name: SKIPPED (No test directory)" >> "$RESULTS_FILE"
        SKIPPED_PACKAGES=$((SKIPPED_PACKAGES + 1))
        return
    fi
    
    # Run tests with controlled attempts
    local attempt=1
    local success=false
    
    while [ $attempt -le $max_attempts ] && [ "$success" = false ]; do
        echo "Attempt $attempt of $max_attempts..."
        
        if cd "$package_path" && flutter test --no-pub 2>&1 | tee test_output.log; then
            echo -e "${GREEN}✓ Tests PASSED on attempt $attempt${NC}"
            echo "$package_name: PASSED (attempt $attempt)" >> "$RESULTS_FILE"
            PASSED_PACKAGES=$((PASSED_PACKAGES + 1))
            success=true
            cd - > /dev/null
        else
            echo -e "${RED}✗ Tests FAILED on attempt $attempt${NC}"
            if [ $attempt -eq $max_attempts ]; then
                echo "$package_name: FAILED (after $max_attempts attempts)" >> "$RESULTS_FILE"
                FAILED_PACKAGES=$((FAILED_PACKAGES + 1))
            fi
            cd - > /dev/null
            attempt=$((attempt + 1))
        fi
        
        # If failed and have more attempts, wait briefly
        if [ "$success" = false ] && [ $attempt -le $max_attempts ]; then
            echo "Waiting 2 seconds before retry..."
            sleep 2
        fi
    done
}

# Main execution
echo "Starting Controlled Test Execution"
echo "=================================="
echo "Maximum attempts per package: 2"
echo ""

# Test each package
run_package_tests "fhir_r6" "packages/fhir_r6"
run_package_tests "fhir_r6_at_rest" "packages/fhir_r6_at_rest"
run_package_tests "fhir_r6_auth" "packages/fhir_r6_auth"
run_package_tests "fhir_r6_bulk" "packages/fhir_r6_bulk"
run_package_tests "fhir_r6_cql" "packages/fhir_r6_cql"
run_package_tests "fhir_r6_db" "packages/fhir_r6_db"
run_package_tests "fhir_r6_mapping" "packages/fhir_r6_mapping"
run_package_tests "fhir_r6_path" "packages/fhir_r6_path"
run_package_tests "fhir_r6_validation" "packages/fhir_r6_validation"

# Print summary
echo ""
echo "================================================"
echo "TEST EXECUTION SUMMARY"
echo "================================================"
echo -e "Total Packages: $TOTAL_PACKAGES"
echo -e "${GREEN}Passed: $PASSED_PACKAGES${NC}"
echo -e "${RED}Failed: $FAILED_PACKAGES${NC}"
echo -e "${YELLOW}Skipped: $SKIPPED_PACKAGES${NC}"
echo ""
echo "Detailed results saved to: $RESULTS_FILE"

# Add summary to results file
echo "" >> "$RESULTS_FILE"
echo "=================================" >> "$RESULTS_FILE"
echo "SUMMARY" >> "$RESULTS_FILE"
echo "=================================" >> "$RESULTS_FILE"
echo "Total Packages: $TOTAL_PACKAGES" >> "$RESULTS_FILE"
echo "Passed: $PASSED_PACKAGES" >> "$RESULTS_FILE"
echo "Failed: $FAILED_PACKAGES" >> "$RESULTS_FILE"
echo "Skipped: $SKIPPED_PACKAGES" >> "$RESULTS_FILE"

# Exit with appropriate code
if [ $FAILED_PACKAGES -gt 0 ]; then
    exit 1
else
    exit 0
fi
