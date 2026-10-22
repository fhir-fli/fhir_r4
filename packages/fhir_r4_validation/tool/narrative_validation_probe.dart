// Does validation evaluate the narrative constraints (txt-1, txt-2), and
// what does it say? Loads every StructureDefinition, ValueSet and
// CodeSystem of the R4B base spec into the cache, validates Patients whose narratives differ, and writes
// each diagnostic that names txt-1 or txt-2, or the narrative, to the TSV
// named, flushed per case. A last row per case counts all diagnostics.
//
// Run from this package:
//   dart run tool/narrative_validation_probe.dart \
//     <definitions.json dir> <arm name> <out.tsv>
import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';

Future<void> main(List<String> args) async {
  final cache = CanonicalResourceCache();
  var loaded = 0;
  for (final name in [
    'profiles-types.json',
    'profiles-resources.json',
    'valuesets.json',
  ]) {
    final bundle = jsonDecode(File('${args[0]}/$name').readAsStringSync())
        as Map<String, dynamic>;
    for (final e in bundle['entry'] as List) {
      final r = (e as Map<String, dynamic>)['resource'] as Map<String, dynamic>;
      if (const {'StructureDefinition', 'ValueSet', 'CodeSystem'}
          .contains(r['resourceType'])) {
        cache.see(Resource.fromJson(r));
        loaded++;
      }
    }
  }
  // Whether the cache answers the lookup the validator makes for an
  // element's type (validate_structure.dart, _codeIsComplexType).
  for (final type in [
    'Narrative',
    'HumanName',
    'http://hl7.org/fhir/StructureDefinition/Narrative',
  ]) {
    final sd = await cache.getStructureDefinition(type);
    stdout.writeln(
      'getStructureDefinition($type): '
      '${sd == null ? 'null' : 'found, snapshot ${sd.getChildByName('snapshot') != null}'}',
    );
  }
  final arm = args[1];
  final out = File(args[2]).openSync(mode: FileMode.append);
  stdout.writeln('loaded $loaded definitions');
  const ns = 'xmlns="http://www.w3.org/1999/xhtml"';
  final cases = {
    'legal': '<div $ns><p>Seen today.</p></div>',
    'name-no-narrative': '',
    'sub-and-address':
        '<div $ns><p>H<sub>2</sub>O</p><address>x</address></div>',
  };
  for (final MapEntry(key: name, value: div) in cases.entries) {
    final results = await const FhirValidationEngine().validateFhirMap(
      structureToValidate: {
        'resourceType': 'Patient',
        'id': 'p1',
        if (div.isEmpty)
          'name': [
            {'family': 'Doe'},
          ]
        else
          'text': {'status': 'generated', 'div': div},
      },
      resourceCache: cache,
    );
    var total = 0;
    for (final r in results.results) {
      total++;
      final d = r.diagnostics;
      if (RegExp('txt-|narrative|xhtml|html', caseSensitive: false)
          .hasMatch(d)) {
        out.writeStringSync(
          '$arm\t$name\t${r.severity}\t${d.replaceAll('\n', ' ')}\n',
        );
      }
    }
    out
      ..writeStringSync('$arm\t$name\tsummary\tdiagnostics $total\n')
      ..flushSync();
    stdout.writeln('$arm $name: $total diagnostics');
  }
  out.closeSync();
}
