// ignore_for_file: avoid_print

import 'dart:io';
import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'writable_class.dart';

int numberOfResources = 0;

void prepareIsar() {
  final isarDir = Directory('$fhirDirectory/isar');
  if (!isarDir.existsSync()) {
    isarDir.createSync();
  } else {
    isarDir
      ..deleteSync(recursive: true)
      ..createSync();
  }
  final dataTypes = Directory('$fhirDirectory/isar/data_types');
  if (!dataTypes.existsSync()) {
    dataTypes.createSync();
  }

  final resourceTypes = Directory('$fhirDirectory/isar/resource_types');
  if (!resourceTypes.existsSync()) {
    resourceTypes.createSync();
  }

  // Base Resource class
  File('$fhirDirectory/isar/resource.dart').writeAsStringSync("""
import 'package:isar/isar.dart';

part 'resource.g.dart';

@collection
  class IsarResource {
  
  final Id dbId = Isar.autoIncrement;
}""");

  // Base Element class
  File('$fhirDirectory/isar/element.dart').writeAsStringSync('''
import 'package:isar/isar.dart';
import 'isar_base.dart';

part 'element.g.dart';

@collection
class IsarElement {
  IsarElement({
    this.id,
    this.extension_,
  });

  
  final Id dbId = Isar.autoIncrement;
  final String? id;
  final IsarLinks<IsarFhirExtension>? extension_;
}''');
}

void exportIsarFiles() {
  final exportFiles = <String>[];
  final dataTypes = Directory('$fhirDirectory/isar/data_types');
  final files = dataTypes.listSync();
  for (final file in files) {
    final fileName = file.path.split('/').last;
    exportFiles.add("export 'data_types/$fileName';\n");
  }
  exportFiles.sort();
  File('$fhirDirectory/isar/data_types.dart')
      .writeAsStringSync(exportFiles.join());
  exportFiles.clear();
  final resourceTypes = Directory('$fhirDirectory/isar/resource_types');
  final resourceFiles = resourceTypes.listSync();
  for (final file in resourceFiles) {
    final fileName = file.path.split('/').last;
    exportFiles.add("export 'resource_types/$fileName';\n");
  }
  exportFiles.sort();
  File('$fhirDirectory/isar/resource_types.dart')
      .writeAsStringSync(exportFiles.join());
  File('$fhirDirectory/isar/isar_base.dart').writeAsStringSync("""
export 'data_types.dart';
export 'element.dart';
export 'resource.dart';
export 'resource_types.dart';
""");
}

void generateIsarClasses(Map<String, WritableClass> classes) {
  final exportFile = <String>{};

  classes.forEach((String className, WritableClass writableClass) {
    final buffer = StringBuffer();

    // Prefix class name with 'Isar'
    final officialClassName = 'Isar${writableClass.className.fhirToDartTypes}';

    // Prefix 'Isar' to classes that extend Resource
    final extended = officialClassName.isResource ? 'extends IsarResource' : '';

    // Write class header
    buffer
      ..writeln('@collection')
      ..writeln('class $officialClassName $extended {')
      ..writeln('\n  $officialClassName({');

    // Loop through the fields and add them to the constructor
    for (final field in writableClass.fields) {
      final actualFieldName = field.name.fhirFieldToDartName;
      if (field.isRequired) {
        buffer.writeln('    required this.$actualFieldName,');
      } else {
        buffer.writeln('    this.$actualFieldName,');
      }
      if ((field.isEnum || field.type.isPrimitiveType) &&
          (actualFieldName != 'id')) {
        buffer.writeln(
          '    this.${actualFieldName.endsWith('_') ? actualFieldName.substring(0, actualFieldName.length - 1) : actualFieldName}Element,',
        );
      }
    }

    buffer
      ..writeln('  });\n')
      ..writeln('  final Id dbId = Isar.autoIncrement;');

    // Loop through the fields and add them as class variables
    for (final field in writableClass.fields) {
      // Prefix 'Isar' to complex types and enum references

      var isarType = field.isEnum
          ? 'String'
          : field.type.fhirToIsarTypes.isPrimitiveType
              ? field.type.fhirToIsarTypes
              : 'Isar${field.type.fhirToDartTypes}';
      isarType = isarType == 'IsarEvidenceVariable'
          ? 'IsarEvidencevariable'
          : isarType;

      // Handle complex types (IsarLinks or IsarLists)
      if (!field.type.isPrimitiveType && !field.isEnum) {
        if (field.isList) {
          buffer.writeln(
            '  final IsarLinks<$isarType>${field.isRequired ? "" : "?"} ${field.name.fhirFieldToDartName};',
          );
        } else {
          buffer.writeln(
            '  final IsarLink<$isarType>${field.isRequired ? "" : "?"} ${field.name.fhirFieldToDartName};',
          );
        }
      } else {
        // Handle primitive types or enums
        final fieldType = field.isList ? 'List<$isarType>' : isarType;
        final actualFieldName = field.name.fhirFieldToDartName;
        buffer.writeln(
          '  final $fieldType? $actualFieldName;',
        );

        final finalFieldName = actualFieldName.endsWith('_')
            ? actualFieldName.substring(0, actualFieldName.length - 1)
            : actualFieldName;

        if (field.isList) {
          buffer.writeln(
            '  final IsarLinks<IsarElement>? ${finalFieldName}Element;',
          );
        } else {
          buffer.writeln(
            '  final IsarLink<IsarElement>? ${finalFieldName}Element;',
          );
        }
      }
    }

    // Close class
    buffer.writeln('}');

    // Write to a separate file per class
    final fileName = _writeToFile(buffer, 'Isar$className', 'isar');
    if (fileName.isNotEmpty) {
      exportFile.add("export '$fileName';\n");
    }
  });
}

String _writeToFile(
  StringBuffer buffer,
  String className,
  String targetDirectory, {
  Map<String, String>? nameMap,
}) {
  final writeFileName = nameMap != null
      ? className.fileNameFromClassName(nameMap)
      : className.toLowerCase();

  if (writeFileName == null) {
    print(
      'Warning: Skipping file generation for class $className, '
      'invalid file name.',
    );
    return '';
  }

  final baseFilePath = writeFileName.properFileName.split('.').first;
  final withoutIsarPath = baseFilePath.replaceFirst('isar', '');

  numberOfResources++;

  final filePath =
      withoutIsarPath.isResource || withoutIsarPath.isDomainResource
          ? '$fhirDirectory/$targetDirectory/resource_types/$baseFilePath.dart'
          : withoutIsarPath.isDataType ||
                  withoutIsarPath.isQuantity ||
                  withoutIsarPath.isBackboneType
              ? '$fhirDirectory/$targetDirectory/data_types/$baseFilePath.dart'
              : '$fhirDirectory/$targetDirectory/$baseFilePath.dart';

  final fileToWrite = File(filePath);

  var fileContent = '';

  if (!fileToWrite.existsSync()) {
    try {
      fileToWrite.createSync();
      fileContent += '// ignore_for_file: public_member_api_docs';
      fileContent += '\n\n';
      fileContent += "import 'package:fhir_r4/src/fhir/isar/isar_base.dart';";
      fileContent += "import 'package:isar/isar.dart';\n\n";
      fileContent +=
          "part '${filePath.split('/').last.split('.').first}.g.dart';\n\n";
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
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
  return '$baseFilePath.dart';
}
