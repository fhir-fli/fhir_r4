import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';

const bool print = true;

Future<void> main() async {
  final dir = Directory('lib/cql/libraries');
  final files = await dir.list().toList();
  for (final file in files) {
    final cqlFile = await File(file.path).readAsString();
    final cqlJsonFile = await File(file.path
            .replaceAll('cql/libraries', 'cql/libraries_json')
            .replaceAll('.cql', '.json'))
        .exists();

    try {
      if (!cqlJsonFile) {
        final response = await post(
            Uri.parse(
                'https://cql-translation-service-hxoyz2wqtq-uc.a.run.app/cql/translator'),
            body: cqlFile,
            headers: {
              'Content-Type': 'application/cql',
              'Accept': 'application/elm+json'
            });

        await File(file.path
                .replaceAll('cql/libraries', 'cql/libraries_json')
                .replaceAll('.cql', '.json'))
            .writeAsString(jsonPrettyPrint(jsonDecode(response.body)));
      }
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
