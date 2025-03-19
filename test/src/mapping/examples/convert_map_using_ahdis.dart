import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

Future<void> main() async {
  for (var i = 1; i <= 14; i++) {
    await compare(i);
  }
  await compareDir('step12_detailed');
}

Future<void> compare(int i) async {
  final dir = Directory('step$i');
  final files = dir.listSync();
  for (final file in files) {
    if (file.path.endsWith('.map')) {
      final fhirMap = await File(file.path).readAsString();
      final result = await post(
        Uri.parse(
          r'https://test.ahdis.ch/matchbox/fhir/StructureMap/$convert',
        ),
        headers: <String, String>{
          'Content-Type': 'text/fhir-mapping',
        },
        body: fhirMap,
      );
      final body = jsonDecode(result.body);
      (body as Map).remove('text');
      await File(file.path.replaceAll('.map', '.json'))
          .writeAsString(prettyJson(body));
    }
  }
}

Future<void> compareDir(String directory) async {
  final dir = Directory(directory);
  final files = dir.listSync();
  for (final file in files) {
    if (file.path.endsWith('.map')) {
      final fhirMap = await File(file.path).readAsString();
      final result = await post(
        Uri.parse(
          r'https://test.ahdis.ch/matchbox/fhir/StructureMap/$convert',
        ),
        headers: <String, String>{
          'Content-Type': 'text/fhir-mapping',
        },
        body: fhirMap,
      );
      final body = jsonDecode(result.body);
      (body as Map).remove('text');
      await File(file.path.replaceAll('.map', '.json'))
          .writeAsString(prettyJson(body));
    }
  }
}
