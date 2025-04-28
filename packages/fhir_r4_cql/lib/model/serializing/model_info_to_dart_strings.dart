import 'dart:io';

Future<void> main() async {
  final List<String> fileNames = <String>[];
  final Directory directory = Directory('model_info_xml');
  final List<File> files = directory.listSync().whereType<File>().toList();
  for (final file in files) {
    if (file.path.endsWith('.xml')) {
      var fileString = await file.readAsString();
      final fileName = file.path
          .split('/')
          .last
          .replaceAll('.xml', '')
          .replaceAll('-', '')
          .replaceAll('.', '')
          .replaceAll('(', '')
          .replaceAll(')', '');
      fileNames.add(file.path.split('/').last.replaceAll('.xml', '.dart'));
      fileString = 'const $fileName = r\'\'\'$fileString\'\'\';';
      File(file.path
              .replaceAll('.xml', '.dart')
              .replaceAll('model_info_xml', 'model_info_dart'))
          .writeAsString(fileString);
    }
  }
  String exportString = '';
  for (final fileName in fileNames) {
    exportString += 'export \'$fileName\';\n';
  }
  File('model_info_dart/model_info_dart.dart').writeAsString(exportString);
}
