# Maps whose published reference output was an error

Thirteen maps of Grey's ahdis/CDA corpus (deleted from the repo on 2025-03-19,
restored 2026-10-06). For each, the reference Java parser of the time answered
an OperationOutcome instead of a StructureMap (eleven for `uses … as queried`
/ `as produced`, which R4B StructureMap.structure.mode allows; two SDOHCC
maps for `/// status = draft`); that outcome is kept beside the map as
`<name>.reference-outcome.json`.

On 2026-10-07 the HL7 validator (validator_cli 7.0.0, `compile`) parsed all
thirteen; `tool/compile_structural_references.sh <validator_cli.jar>` writes
each one's `<name>.reference-structural.json`, and `compile.log` records each
run. The validator's compile emits no `status`, `title`, `description` or
`documentation`, chooses its own `id`, and writes its R5 shape for
`group.typeMode` (dropping `none`, which R4B requires), so
`reference_failed_parser_test.dart` compares everything else, exactly.
