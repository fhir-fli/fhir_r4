// Does every narrative in the publisher's examples pass
// FhirXhtml.narrativeProblems? The known positives for the narrative rules.
//
// One row per refused narrative to narrative_examples.tsv, flushed, and a
// last row counting the files read and the narratives checked.
//
// Run from this package:
//   dart run tool/narrative_examples.dart <examples-json dir>
import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';

void main(List<String> args) {
  final out = File('tool/narrative_examples.tsv').openSync(mode: FileMode.write)
    ..writeStringSync('file\tresource\tproblems\n');
  var files = 0;
  var narratives = 0;
  var refused = 0;
  final entries = Directory(args[0])
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.json'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final f in entries) {
    Object? doc;
    try {
      doc = jsonDecode(f.readAsStringSync());
    } on FormatException {
      continue;
    }
    files++;
    void walk(Object? node) {
      if (node is Map<String, dynamic>) {
        final text = node['text'];
        if (node['resourceType'] is String &&
            text is Map<String, dynamic> &&
            text['div'] is String) {
          narratives++;
          final problems = FhirXhtml.narrativeProblems(text['div'] as String);
          if (problems.isNotEmpty) {
            refused++;
            out
              ..writeStringSync(
                '${f.uri.pathSegments.last}\t'
                '${node['resourceType']}/${node['id']}\t'
                '${problems.join('; ')}\n',
              )
              ..flushSync();
          }
        }
        node.values.forEach(walk);
      } else if (node is List) {
        node.forEach(walk);
      }
    }

    walk(doc);
  }
  final summary = 'files $files narratives $narratives refused $refused';
  out
    ..writeStringSync('summary\t\t$summary\n')
    ..closeSync();
  stdout.writeln(summary);
}
