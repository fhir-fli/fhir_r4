import 'dart:io';

void main() {
  final sourceDirectory =
      Directory('./fhir'); // Source directory for your FHIR classes
  final targetDirectory =
      Directory('./fhir_db_objects'); // Target directory for ObjectBox classes
  if (!targetDirectory.existsSync()) {
    targetDirectory.createSync(recursive: true);
  }
  processDirectory(sourceDirectory, targetDirectory);
  createExportFiles(targetDirectory);
}

void processDirectory(Directory sourceDir, Directory targetDir) {
  final entities = sourceDir.listSync(recursive: true);

  for (var entity in entities) {
    if (entity is File &&
        !entity.path.endsWith('.freezed.dart') &&
        !entity.path.endsWith('.g.dart') &&
        !entity.path.endsWith('.enums.dart')) {
      final relativePath = entity.path.replaceFirst(sourceDir.path, '');
      final targetFile = File('${targetDir.path}$relativePath'
          .replaceFirst('.dart', '_objectbox.dart'));
      targetFile.createSync(recursive: true);
      processFile(entity, targetFile);
    } else if (entity is Directory) {
      final relativePath = entity.path.replaceFirst(sourceDir.path, '');
      final targetSubDir = Directory('${targetDir.path}$relativePath');
      if (!targetSubDir.existsSync()) {
        targetSubDir.createSync(recursive: true);
      }
    }
  }
}

void processFile(File sourceFile, File targetFile) {
  final lines = sourceFile.readAsLinesSync();
  final newLines = <String>[];

  final classNameRegex = RegExp(r'class (\w+) ');
  final complexTypeRegex = RegExp(r'(\w+)<(\w+)> (\w+);');

  String? className;
  for (var line in lines) {
    if (classNameRegex.hasMatch(line)) {
      className = classNameRegex.firstMatch(line)!.group(1)!;
      newLines.add("import 'package:objectbox/objectbox.dart';");
      newLines.add('');
      newLines.add('@Entity()');
    }

    if (className != null && complexTypeRegex.hasMatch(line)) {
      final match = complexTypeRegex.firstMatch(line)!;
      final type = match.group(2)!;
      final variable = match.group(3)!;

      if (type == 'String') {
        newLines.add('  @Property(type: PropertyType.string)');
        newLines.add('  $type? $variable;');
      } else if (type == 'bool') {
        newLines.add('  @Property(type: PropertyType.bool)');
        newLines.add('  $type? $variable;');
      } else {
        newLines.add('  final $variable = ToOne<${type}Db>();');
      }
    } else {
      newLines.add(line);
    }
  }

  targetFile.writeAsStringSync(newLines.join('\n'));
}

void createExportFiles(Directory directory) {
  final subDirectories = directory.listSync().whereType<Directory>();

  for (var subDirectory in subDirectories) {
    createExportFile(subDirectory);
  }

  createExportFile(directory); // Create export file for the top-level directory
}

void createExportFile(Directory directory) {
  final entities = directory.listSync().whereType<File>();
  final exportLines = <String>[];

  for (var entity in entities) {
    if (entity.path.endsWith('_objectbox.dart')) {
      final fileName = entity.uri.pathSegments.last;
      exportLines.add("export '$fileName';");
    }
  }

  final subDirectories = directory.listSync().whereType<Directory>();

  for (var subDirectory in subDirectories) {
    final dirName = subDirectory.uri.pathSegments
        .lastWhere((segment) => segment.isNotEmpty);
    exportLines.add("export '$dirName/$dirName.dart';");
  }

  final exportFileName = directory.path.endsWith('/')
      ? '${directory.path}export.dart'
      : '${directory.path}/export.dart';
  File(exportFileName).writeAsStringSync(exportLines.join('\n'));
}
