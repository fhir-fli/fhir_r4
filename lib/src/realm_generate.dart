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
      targetDir.path + relativePath.replaceFirst('.dart', '_realm.dart');
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
    buffer.writeln("ToMany<PrimitiveElementDbObject>");
  }

  final List<String> lines = content.split('\n');
  bool insideFreezedClass = false;
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

    // Skip @freezed annotation
    if (line.contains('@freezed')) {
      continue;
    }

    if (line.contains('class')) {
      className = line.split(' ')[1];
      buffer.writeln('@RealmModel()');
      buffer.writeln('class _${className}Realm {');
      insideFreezedClass = true;
    } else if (line.contains('}) = _')) {
      buffer.writeln('}');
      insideFreezedClass = false;
    } else if (insideFreezedClass) {
      final String propertyLine = convertToRealmProperty(line);
      if (propertyLine.isNotEmpty) {
        buffer.writeln(propertyLine);
      }
    }
  }

  return formatContent(buffer.toString());
}

String convertToRealmProperty(String line) {
  // Extract the variable name and type
  final RegExp regex = RegExp(r'([A-Za-z0-9_?<>]+) ([A-Za-z0-9_]+),');
  final Match? match = regex.firstMatch(line);
  if (match != null) {
    String type = match.group(1)!.replaceAll('?', '');
    String name = match.group(2)!;

    if (name == 'id') {
      return '  @PrimaryKey() late $type $name;';
    }

    type = getTransformedType(type);

    return '  late $type $name;';
  }

  return '';
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

  final String transformedType = '_${baseType}Realm';

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
