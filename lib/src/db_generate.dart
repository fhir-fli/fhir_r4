import 'dart:io';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  if (args.length < 2) {
    print(
        'Usage: dart generate_objectbox_classes.dart <source_directory> <destination_directory>');
    return;
  }

  final sourceDirectoryPath = args[0];
  final destinationDirectoryPath = args[1];
  final sourceDirectory = Directory(sourceDirectoryPath);

  if (!await sourceDirectory.exists()) {
    print('Source directory does not exist: $sourceDirectoryPath');
    return;
  }

  final files = await findDartFiles(sourceDirectory);

  for (final file in files) {
    final content = await file.readAsString();
    if (isFreezedFile(content)) {
      final classes = extractFreezedClasses(content);
      final objectBoxClasses = generateObjectBoxClasses(classes);
      final relativePath = path.relative(file.path, from: sourceDirectoryPath);
      final destinationFilePath =
          path.join(destinationDirectoryPath, relativePath);
      final destinationFileDirectory =
          Directory(path.dirname(destinationFilePath));

      if (!await destinationFileDirectory.exists()) {
        await destinationFileDirectory.create(recursive: true);
      }

      final objectBoxFilePath =
          destinationFilePath.replaceAll('.dart', '_objectbox.dart');
      await File(objectBoxFilePath).writeAsString(objectBoxClasses);
    }
  }
}

Future<List<File>> findDartFiles(Directory directory) async {
  final List<File> dartFiles = [];
  await for (final entity in directory.list(recursive: true)) {
    if (entity is File &&
        entity.path.endsWith('.dart') &&
        !entity.path.endsWith('.freezed.dart') &&
        !entity.path.endsWith('.g.dart')) {
      dartFiles.add(entity);
    }
  }
  return dartFiles;
}

bool isFreezedFile(String content) {
  return content.contains('@freezed');
}

Map<String, List<String>> extractFreezedClasses(String content) {
  final classes = <String, List<String>>{};
  final classRegExp = RegExp(
      r'@freezed\s+class\s+(\w+)\s+with\s+\$_\w+\s*{([^}]*)}',
      multiLine: true);
  final variableRegExp = RegExp(r'final\s+(\w+)\s+(\w+);');

  for (final match in classRegExp.allMatches(content)) {
    final className = match.group(1)!;
    final classBody = match.group(2)!;
    final variables = <String>[];

    for (final variableMatch in variableRegExp.allMatches(classBody)) {
      final variableType = variableMatch.group(1)!;
      final variableName = variableMatch.group(2)!;
      variables.add('$variableType $variableName;');
    }

    classes[className] = variables;
  }

  return classes;
}

String generateObjectBoxClasses(Map<String, List<String>> classes) {
  final buffer = StringBuffer();

  for (final entry in classes.entries) {
    final className = entry.key;
    final variables = entry.value;

    buffer.writeln('@Entity()');
    buffer.writeln('class ${className}Entity {');
    buffer.writeln('  @Id(assignable: true)');
    buffer.writeln('  int? dbId;');
    buffer.writeln('  @Unique()');
    buffer.writeln('  late String id;');

    for (final variable in variables) {
      buffer.writeln('  late $variable');
    }

    buffer.writeln();
    buffer.writeln('  ${className}Entity();');
    buffer.writeln();
    buffer
      ..writeln('  ${className}Entity.from$className($className instance)')
      ..writeln('      : dbId = null,')
      ..writeln('        id = instance.id,');

    for (final variable in variables) {
      final variableName = variable.split(' ')[1].replaceAll(';', '');
      buffer.writeln('        $variableName = instance.$variableName,');
    }

    buffer.writeln(';');
    buffer.writeln();
    buffer
      ..writeln('  $className to$className() {')
      ..writeln('    return $className(');

    for (final variable in variables) {
      final variableName = variable.split(' ')[1].replaceAll(';', '');
      buffer.writeln('      $variableName: $variableName,');
    }

    buffer.writeln('    );');
    buffer.writeln('  }');
    buffer.writeln('}');
    buffer.writeln();
  }

  return buffer.toString();
}
