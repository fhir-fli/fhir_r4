import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

Future<void> main() async {
  final librariesAndDefinitionsDir = Directory('../libraries_and_definitions');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File) {
      print(file.path);
      final pathExpression = await file.readAsString();

      final result = await post(
        Uri.parse(
            'https://cql-translation-service-rzosf74zba-uc.a.run.app/cql/translator'),
        headers: {
          'Content-Type': 'application/cql',
          'Accept': 'application/elm+json',
        },
        body: pathExpression,
      );

      File(file.path
              .replaceAll(
                  'libraries_and_definitions', 'libraries_and_definitions_json')
              .replaceAll('.cql', '.json'))
          .writeAsStringSync(jsonPrettyPrint(jsonDecode(result.body)));
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
