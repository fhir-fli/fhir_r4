import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

Future<void> main() async {
  final List<String> fileNames = <String>[];
  final dir = Directory('model_info_xml');
  final files = dir.listSync();
  final StandardModelInfoReader reader = StandardModelInfoReader();
  for (final file in files) {
    print(file.path);
    final fileString = await File(file.path).readAsString();
    final modelInfo = reader.read(fileString);
    final json = modelInfo.toJson();
    final jsonPretty = jsonPrettyPrint(json);
    final fileName = file.path
        .split('/')
        .last
        .replaceAll('.xml', '')
        .replaceAll('-', '')
        .replaceAll('.', '')
        .replaceAll('(', '')
        .replaceAll(')', '');
    fileNames.add(file.path.split('/').last.replaceAll('.xml', '.dart'));
    final newFileString = "import '../../../cql.dart';\n\n"
        'final $fileName = ModelInfo.fromJson($jsonPretty);';
    await File(file.path
            .replaceAll('.xml', '.dart')
            .replaceAll('model_info_xml', 'model_info'))
        .writeAsString(newFileString);
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
