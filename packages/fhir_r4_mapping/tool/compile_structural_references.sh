#!/usr/bin/env bash
# Compiles each map in test/parser_examples_reference_failed/ with the HL7
# validator (validator_cli.jar, `compile`), writing
# <name>.reference-structural.json beside it. The validator's compile
# emits no description, documentation or status, so those elements are
# not part of the structural comparison (see reference_failed_parser_test).
# Usage: tool/compile_structural_references.sh <path to validator_cli.jar>
# Writes one file per map as it goes, and a log of each run's exit code.
set -u
jar=${1:?path to validator_cli.jar}
cd "$(dirname "$0")/.." || exit 1
dir=test/parser_examples_reference_failed
log=$dir/compile.log
: > "$log"
for map in "$dir"/*.map; do
  name=$(basename "$map" .map)
  work=$(mktemp -d /tmp/claude-1000/compile-XXXXXX 2>/dev/null || mktemp -d)
  mkdir -p "$work/in"
  # validator_cli 7.0.0: `compile -version 4.0 -ig <dir> -output <file> <url>`;
  # the positional argument is the map's URL among the loaded resources,
  # and the -ig loader rejects `///` metadata lines ("Found "name"
  # expecting "map""), so the work copy drops them. The validator writes
  # no status, title, description or documentation either way.
  grep -v '^///' "$map" > "$work/in/$name.map"
  url=$(grep -m1 '^map "' "$map" | sed 's/^map "\([^"]*\)".*/\1/')
  out=$dir/$name.reference-structural.json
  java -jar "$jar" compile -version 4.0 -ig "$work/in" -output "$out" "$url" \
    > "$work/run.txt" 2>&1
  code=$?
  echo "$name exit=$code url=$url" | tee -a "$log"
  if [ "$code" -ne 0 ] || [ ! -s "$out" ]; then
    grep -i "error\|exception" "$work/run.txt" | head -5 | tee -a "$log"
  fi
  rm -rf "$work"
done
