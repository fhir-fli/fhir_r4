import 'dart:convert';
import 'dart:io';

import 'package:cql/cql.dart';

Future<void> main() async {
  final librariesAndDefinitionsDir =
      Directory('../libraries_and_definitions_json');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File) {
      print(file.path);
      if (!file.path.endsWith('_2.json') && !file.path.endsWith('dart')) {
        try {
          final pathExpression = jsonDecode(await file.readAsString());
          if (pathExpression['library'] != null) {
            final library = CqlLibrary.fromJson(pathExpression['library']);

            final newFileString =
                jsonPrettyPrint({'library': library.toJson()});
            await File(file.path.replaceAll('.json', '_2.json'))
                .writeAsString(newFileString);
          }
        } catch (e, s) {
          print(e);
          print(s);
        }
      }
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
