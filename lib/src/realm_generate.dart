import 'dart:io';

void main() async {
  final Directory sourceDir = Directory('./fhir');
  final Directory targetDir = Directory('./realm_objects');

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
  final List<String> excludedFiles = <String>[
    'basic_types.dart',
    'fhir_extension.dart',
    'primitive_element.dart',
    'draft_types.dart',
    'general_types.dart',
    'metadata_types.dart',
    'special_types.dart',
    'domain_resource.dart',
    'fhir_field_map.dart',
    'resource_from_json.dart',
    'resource_new_id.dart',
    'resource_new_version.dart',
    'resource_types_enums.dart',
    'resource_types.dart',
    'resource.dart',
  ];

  final bool isInAbstractTypesDirectory =
      file.path.contains('/abstract_types/');

  return !(name.endsWith('.freezed.dart') ||
      name.endsWith('.g.dart') ||
      name.endsWith('.enums.dart') ||
      excludedFiles.contains(name) ||
      isInAbstractTypesDirectory);
}

Future<void> processFile(
    File file, Directory sourceDir, Directory targetDir) async {
  final String content = await file.readAsString();
  final String newContent = transformToRealm(content, file.path);

  final String relativePath = file.path.substring(sourceDir.path.length);
  final String newFilePath =
      targetDir.path + relativePath.replaceFirst('.dart', '_db_object.dart');
  final File newFile = File(newFilePath);

  if (!newFile.parent.existsSync()) {
    newFile.parent.createSync(recursive: true);
  }

  await newFile.writeAsString(newContent);
}

String transformToRealm(String content, String filePath) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:realm/realm.dart';");

  if (filePath.contains('/draft_types/') ||
      filePath.contains('/general_types/') ||
      filePath.contains('/metadata_types/') ||
      filePath.contains('/special_types/')) {
    buffer.writeln("import '../fhir_db_objects.dart';");
  }

  final List<String> lines = content.split('\n');
  bool insideFreezedClass = false;
  bool insideConstructor = false;
  String? className;

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
        buffer.writeln('@RealmModel()');
        buffer.writeln(
            'class ${className}DbObject extends _${className}DbObject {');
      } else if (line.contains('const factory')) {
        insideConstructor = true;
      } else if (line.contains('}) = _')) {
        buffer.writeln('  ${className}DbObject();');
        buffer.writeln('}');
        insideConstructor = false;
        insideFreezedClass = false;
      } else if (insideConstructor) {
        final String propertyLine = convertToRealmProperty(line);
        buffer.writeln(propertyLine);
      }
    }
  }

  return formatContent(buffer.toString());
}

String convertToRealmProperty(String line) {
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

    type = getTransformedType(type);

    return '  @RealmProperty() $type $name;';
  }

  return line;
}

String getTransformedType(String type) {
  final bool isList = type.startsWith('List<');
  final String baseType = isList ? type.substring(5, type.length - 1) : type;

  if (baseType == 'String' || baseType == 'FhirDateTime') {
    return 'String';
  }

  if (baseType == 'int' || baseType == 'bool') {
    return baseType;
  }

  final String transformedType = '${baseType}DbObject';

  return isList ? 'List<$transformedType>' : transformedType;
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
