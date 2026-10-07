# Maps whose reference output was an error

Thirteen maps of Grey's ahdis/CDA corpus (deleted from the repo on 2025-03-19,
restored 2026-10-06). For each, the reference Java parser answered an
OperationOutcome instead of a StructureMap; that outcome is kept beside the
map as `<name>.reference-outcome.json`. With no reference StructureMap to
compare against, `reference_failed_parser_test.dart` asserts only that our
parser parses each map, and pins the ones it does not.
