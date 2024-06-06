import 'dart:io';

void main() async {
  final Directory sourceDir = Directory('./fhir');
  final Directory targetDir = Directory('./fhir_db_objects');

  if (!targetDir.existsSync()) {
    targetDir.createSync(recursive: true);
  }

  await processDirectory(sourceDir, targetDir);
}

Future<void> processDirectory(Directory sourceDir, Directory targetDir) async {
  await for (final FileSystemEntity entity
      in sourceDir.list(recursive: true, followLinks: false)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      if (shouldProcessFile(entity)) {
        await processFile(entity, sourceDir, targetDir);
      }
    }
  }
}

bool shouldProcessFile(File file) {
  final String name = file.uri.pathSegments.last;
  return !(name.endsWith('.freezed.dart') ||
      name.endsWith('.g.dart') ||
      name.endsWith('.enums.dart'));
}

Future<void> processFile(
    File file, Directory sourceDir, Directory targetDir) async {
  final String content = await file.readAsString();
  final String newContent = transformToObjectBox(content);

  final String relativePath = file.path.substring(sourceDir.path.length);
  final String newFilePath =
      targetDir.path + relativePath.replaceFirst('.dart', '_db_object.dart');
  final File newFile = File(newFilePath);

  if (!newFile.parent.existsSync()) {
    newFile.parent.createSync(recursive: true);
  }

  await newFile.writeAsString(newContent);
}

String transformToObjectBox(String content) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:objectbox/objectbox.dart';");
  final List<String> lines = content.split('\n');
  bool insideFreezedClass = false;
  bool insideConstructor = false;
  String? className;
  bool hasStringId = false;

  for (String line in lines) {
    line = line.trim();

    // Skip comment lines
    if (line.startsWith('//') ||
        line.startsWith('/*') ||
        line.startsWith('*')) {
      continue;
    }

    // Handle multiline comments
    if (line.contains('/*')) {
      continue;
    }

    if (line.contains('*/')) {
      continue;
    }

    // Remove @JsonKey and @Default annotations
    line = line.replaceAll(RegExp(r'@JsonKey\(.*?\)'), '');
    line = line.replaceAll(RegExp(r'@Default\(.*?\)'), '');

    if (line.contains('@freezed')) {
      insideFreezedClass = true;
    }

    if (insideFreezedClass) {
      if (line.contains('class')) {
        className = line.split(' ')[1];
        buffer.writeln('@Entity()');
        buffer.writeln('class ${className}DbObject {');
        buffer.writeln('  @Id(assignable: true)');
        buffer.writeln('  int id;');
      } else if (line.contains('const factory')) {
        insideConstructor = true;
      } else if (line.contains('}) = _')) {
        if (hasStringId) {
          buffer.writeln(
              '  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();');
        }
        buffer.writeln('  ${className}DbObject({required this.id});');
        buffer.writeln('}');
        insideConstructor = false;
        insideFreezedClass = false;
        hasStringId = false;
      } else if (insideConstructor) {
        final String propertyLine =
            convertToObjectBoxProperty(line, hasStringId);
        if (propertyLine.contains('final String')) {
          hasStringId = true;
        }
        buffer.writeln(propertyLine);
      }
    }
  }

  return formatContent(buffer.toString());
}

String convertToObjectBoxProperty(String line, bool hasStringId) {
  // Remove the const factory line
  if (line.contains('const factory')) {
    return '';
  }

  // Extract the variable name and type
  final RegExp regex = RegExp(r'([A-Za-z0-9_?<>]+) ([A-Za-z0-9_]+),');
  final Match? match = regex.firstMatch(line);
  if (match != null) {
    String type = match.group(1)!.replaceAll('?', '');
    String name = match.group(2)!;

    if (type == 'String' && name == 'id') {
      type = 'ToOne<StringDbObject>';
      name = 'fhirId';
    } else {
      type = getTransformedType(type);
    }
    return '  final $type $name = $type();';
  }

  return line;
}

String getTransformedType(String type) {
  final bool isList = type.startsWith('List<');
  final String baseType = isList ? type.substring(5, type.length - 1) : type;

  if (baseType == 'String') {
    return 'ToOne<StringDbObject>';
  }

  if (<String>['int', 'bool'].contains(baseType)) {
    return baseType;
  }

  final String transformedType = '${baseType}DbObject';

  return isList ? 'ToMany<$transformedType>' : 'ToOne<$transformedType>';
}

String formatContent(String content) {
  final StringBuffer buffer = StringBuffer();
  final List<String> lines = content.split('\n');

  for (final String line in lines) {
    if (line.isNotEmpty) {
      buffer.writeln(line);
    }
  }

  return buffer.toString();
}
