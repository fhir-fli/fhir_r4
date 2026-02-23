#!/bin/bash
# Downloads WHO SMART Immunizations CQL files and Measles test bundles.
# Pinned to a specific commit for reproducibility.
set -euo pipefail

COMMIT="1b56990a34cc3a0d92b51c840861d77a645595d8"
BASE_URL="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations/${COMMIT}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(dirname "$SCRIPT_DIR")"
WHO_DIR="${PACKAGE_DIR}/cql/who"
TEST_DIR="${WHO_DIR}/tests"
VS_DIR="${WHO_DIR}/vocabulary"

mkdir -p "$WHO_DIR" "$TEST_DIR" "$VS_DIR"

echo "=== Downloading WHO CQL libraries ==="

# Foundation layer
CQL_FILES=(
  WHOCommon
  WHOConcepts
  WHOElements
  WHOEncounterElements
  IMMZCommon
  IMMZConcepts
  IMMZElements
  IMMZEncounterElements
  IMMZAgeConcepts
)

# Measles decision table files
MEASLES_FILES=(
  IMMZD2DTMeaslesElements
  IMMZD2DTMeaslesEncounterElements
  IMMZD2DTMeaslesLowTransmissionLogic
  IMMZD2DTMeaslesOngoingTransmissionLogic
  IMMZD2DTMeaslesMCVDose0Logic
  IMMZD2DTMeaslesSupplementaryDoseLogic
  IMMZD5DTMeaslesContraindicationsLogic
  IMMZD5DTMeaslesElements
  IMMZD5DTMeaslesEncounterElements
  IMMZD18SMeaslesLowTransmissionLogic
  IMMZD18SMeaslesOngoingTransmissionLogic
  IMMZD18SMeaslesMCVDose0Logic
  IMMZD18SMeaslesSupplementaryDoseLogic
)

for f in "${CQL_FILES[@]}" "${MEASLES_FILES[@]}"; do
  echo "  Downloading ${f}.cql ..."
  curl -sL -o "${WHO_DIR}/${f}.cql" "${BASE_URL}/input/cql/${f}.cql" || echo "  WARN: Failed to download ${f}.cql"
done

echo ""
echo "=== Copying FHIRHelpers and FHIRCommon from local cql/ ==="
# These come from the HL7 CQL IG, not the WHO repo. We already have them locally.
cp "${PACKAGE_DIR}/cql/FHIRHelpers-4.0.1.cql" "${WHO_DIR}/FHIRHelpers-4.0.1.cql" 2>/dev/null || echo "  WARN: FHIRHelpers-4.0.1.cql not found locally"
cp "${PACKAGE_DIR}/cql/FHIRCommon.cql" "${WHO_DIR}/FHIRCommon.cql" 2>/dev/null || echo "  WARN: FHIRCommon.cql not found locally"

echo ""
echo "=== Downloading Measles test bundles ==="

TEST_BUNDLE_PATH="input/testing/features/plandefinition/IMMZMeasles/data"
# Download test input bundles (tests-MeaslesXX.Y-bundle.json)
TEST_CASES=(
  "08.1" "09.3" "10.3" "11.2" "12.3" "13.3" "14.1"
  "22.1" "23.3" "24.3" "25.2" "26.3" "27.3" "28.1"
  "36.1" "37.3" "38.3" "39.1" "40.1"
  "48.3" "49.3" "50.1"
  "56.1" "57.1" "58.1" "59.1" "60.1"
)

for tc in "${TEST_CASES[@]}"; do
  echo "  Downloading tests-Measles${tc}-bundle.json ..."
  curl -sL -o "${TEST_DIR}/tests-Measles${tc}-bundle.json" \
    "${BASE_URL}/${TEST_BUNDLE_PATH}/tests-Measles${tc}-bundle.json" || echo "  WARN: Failed"
done

echo ""
echo "=== Downloading Measles feature files ==="
FEATURE_PATH="input/testing/features/plandefinition/IMMZMeasles"
FEATURES=(
  IMMZD2DTMeaslesLowTransmission
  IMMZD2DTMeaslesOngoingTransmission
  IMMZD2DTMeaslesMCVDose0
  IMMZD2DTMeaslesSupplementaryDose
  IMMZD5DTMeaslesContraindications
  IMMZD18SMeaslesLowTransmission
  IMMZD18SMeaslesOngoingTransmission
  IMMZD18SMeaslesMCVDose0
  IMMZD18SMeaslesSupplementaryDose
)

for feat in "${FEATURES[@]}"; do
  echo "  Downloading ${feat}.feature ..."
  curl -sL -o "${WHO_DIR}/${feat}.feature" \
    "${BASE_URL}/${FEATURE_PATH}/${feat}.feature" || echo "  WARN: Failed"
done

echo ""
echo "=== Downloading ValueSet FSH sources ==="
# Download key Measles-related ValueSet FSH files for reference
VS_FSH_FILES=(
  "IMMZ.Z.DE9"
  "IMMZD2DTMeaslesLowTransmissionVS"
  "IMMZD2DTMeaslesOngoingTransmissionVS"
  "IMMZD2DTMeaslesMCVDose0VS"
  "IMMZD2DTMeaslesSupplementaryDoseVS"
  "IMMZD18SMeaslesLowTransmissionVS"
  "IMMZD18SMeaslesOngoingTransmissionVS"
  "IMMZD18SMeaslesMCVDose0VS"
  "IMMZD18SMeaslesSupplementaryDoseVS"
  "IMMZD5DTMeaslesContraindicationsVS"
)

for vs in "${VS_FSH_FILES[@]}"; do
  echo "  Downloading ${vs}.fsh ..."
  curl -sL -o "${VS_DIR}/${vs}.fsh" \
    "${BASE_URL}/input/fsh/valuesets/${vs}.fsh" || echo "  WARN: Failed"
done

echo ""
echo "=== Download complete ==="
echo "CQL files: ${WHO_DIR}/"
echo "Test bundles: ${TEST_DIR}/"
echo "ValueSet FSH: ${VS_DIR}/"
echo ""
echo "Note: ValueSets are in FSH format. You may need to create JSON"
echo "equivalents manually or use the SUSHI tool to generate them."
