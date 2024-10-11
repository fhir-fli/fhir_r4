// ignore_for_file: avoid_print

import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'writable_class.dart';

int numberOfResources = 0;

void prepareObjectBox() {
  final Directory objectBoxDir = Directory('$fhirDirectory/object_box');
  if (!objectBoxDir.existsSync()) {
    objectBoxDir.createSync();
  } else {
    objectBoxDir.deleteSync(recursive: true);
    objectBoxDir.createSync();
  }
  final Directory dataTypes = Directory('$fhirDirectory/object_box/data_types');
  if (!dataTypes.existsSync()) {
    dataTypes.createSync();
  }

  final Directory resourceTypes =
      Directory('$fhirDirectory/object_box/resource_types');
  if (!resourceTypes.existsSync()) {
    resourceTypes.createSync();
  }
  File('$fhirDirectory/object_box/object_box.dart')
      .writeAsStringSync("export 'resource.dart';\n");

  File('$fhirDirectory/object_box/resource.dart').writeAsStringSync("""
import 'package:objectbox/objectbox.dart';

@Entity()
abstract class Resource {
  @Id()
  int? dbId;
}""");
}

void exportObjectBoxFiles() {
  final List<String> exportFiles = <String>[];
  final Directory dataTypes = Directory('$fhirDirectory/object_box/data_types');
  final List<FileSystemEntity> files = dataTypes.listSync();
  for (final FileSystemEntity file in files) {
    final String fileName = file.path.split('/').last;
    exportFiles.add("export 'data_types/$fileName';\n");
  }
  File('$fhirDirectory/object_box/data_types.dart')
      .writeAsStringSync(exportFiles.join());
  exportFiles.clear();
  final Directory resourceTypes =
      Directory('$fhirDirectory/object_box/resource_types');
  final List<FileSystemEntity> resourceFiles = resourceTypes.listSync();
  for (final FileSystemEntity file in resourceFiles) {
    final String fileName = file.path.split('/').last;
    exportFiles.add("export 'resource_types/$fileName';\n");
  }
  File('$fhirDirectory/object_box/resource_types.dart')
      .writeAsStringSync(exportFiles.join());
  File('$fhirDirectory/object_box/object_box.dart').writeAsStringSync("""
export 'data_types/data_types.dart';
export 'resource.dart';
export 'resource_types/resource_types.dart';
""");
}

void generateObjectBoxClasses(Map<String, WritableClass> classes) {
  final Set<String> exportFile = <String>{};

  classes.forEach((String className, WritableClass writableClass) {
    final StringBuffer buffer = StringBuffer();
    final String officialClassName = writableClass.className.fhirToDartTypes;
    final String extended =
        officialClassName.isResource ? 'extends Resource' : '';

    // Write class header
    buffer.writeln('@Entity()');
    buffer.writeln('class $officialClassName $extended {');

    buffer.writeln('\n  $officialClassName({');

    // Loop through the fields and add them to the constructor
    for (final Field field in writableClass.fields) {
      if (field.isRequired) {
        buffer.writeln('    required this.${field.name.fhirFieldToDartName},');
      } else {
        buffer.writeln('    this.${field.name.fhirFieldToDartName},');
      }
    }

    buffer.writeln('  });\n');

    buffer.writeln('  @Id() int? dbId;');

    // Loop through the fields and add them as class variables
    for (final Field field in writableClass.fields) {
      final String objectBoxType =
          field.isEnum ? 'String' : field.type.fhirToObjectBoxTypes;

      // Handle complex types (ToOne or ToMany relations)
      if (!field.type.isPrimitiveType && !field.isEnum) {
        if (field.isList) {
          buffer.writeln(
              '  ToMany<$objectBoxType>${field.isRequired ? '' : '?'} ${field.name.fhirFieldToDartName} = ToMany<$objectBoxType>();');
        } else {
          buffer.writeln(
              '  ToOne<$objectBoxType>${field.isRequired ? '' : '?'} ${field.name.fhirFieldToDartName} = ToOne<$objectBoxType>();');
        }
      } else {
        // Handle primitive types or enums
        final String fieldType =
            field.isList ? 'List<$objectBoxType>' : objectBoxType;
        buffer.writeln(
            '  $fieldType${field.isRequired ? '' : '?'} ${field.name.fhirFieldToDartName};');
      }
    }

    // Close class
    buffer.writeln('}');

    // Write to a separate file per class
    final String fileName = _writeToFile(buffer, className, 'object_box');
    if (fileName.isNotEmpty) {
      exportFile.add("export '$fileName';\n");
    }
  });
}

String _writeToFile(
    StringBuffer buffer, String className, String targetDirectory,
    {Map<String, String>? nameMap}) {
  final String? writeFileName = nameMap != null
      ? className.fileNameFromClassName(nameMap)
      : className.toLowerCase();

  if (writeFileName == null) {
    print(
        'Warning: Skipping file generation for class $className, invalid file name.');
    return '';
  }

  final String baseFilePath = writeFileName.properFileName.split('.').first;

  // if (baseFilePath.isResource) {
  //   return '';
  // }

  numberOfResources++;

  final String filePath =
      baseFilePath.isResource || baseFilePath.isDomainResource
          ? '$fhirDirectory/$targetDirectory/resource_types/$baseFilePath.dart'
          : baseFilePath.isDataType ||
                  baseFilePath.isQuantity ||
                  baseFilePath.isBackboneType
              ? '$fhirDirectory/$targetDirectory/data_types/$baseFilePath.dart'
              : '$fhirDirectory/$targetDirectory/$baseFilePath.dart';

  final File fileToWrite = File(filePath);

  String fileContent = '';

  if (!fileToWrite.existsSync()) {
    try {
      fileToWrite.createSync();
      fileContent = "import 'package:objectbox/objectbox.dart';\n";
      fileContent += "import 'object_box.dart';\n";
    } catch (e) {
      print('Error: Failed to create file for class $className. Error: $e');
      return '';
    }
  } else {
    fileContent = fileToWrite.readAsStringSync();
  }

  fileContent += buffer.toString();

  try {
    File(filePath).writeAsStringSync(fileContent);
    print('Successfully wrote to: $filePath');
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
  return '$baseFilePath.dart';
}
