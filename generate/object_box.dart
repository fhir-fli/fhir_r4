// ignore_for_file: avoid_print

import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'writable_class.dart';

int numberOfResources = 0;

void prepareObjectBox() {
  final objectBoxDir = Directory('$fhirDirectory/object_box');
  if (!objectBoxDir.existsSync()) {
    objectBoxDir.createSync();
  } else {
    objectBoxDir
      ..deleteSync(recursive: true)
      ..createSync();
  }
  final dataTypes = Directory('$fhirDirectory/object_box/data_types');
  if (!dataTypes.existsSync()) {
    dataTypes.createSync();
  }

  final resourceTypes = Directory('$fhirDirectory/object_box/resource_types');
  if (!resourceTypes.existsSync()) {
    resourceTypes.createSync();
  }

  File('$fhirDirectory/object_box/resource.dart').writeAsStringSync("""
// ignore_for_file: public_member_api_docs

import 'package:objectbox/objectbox.dart';

@Entity()
abstract class ObjectBoxResource {
  @Id()
  int? dbId;
}""");

  File('$fhirDirectory/object_box/element.dart').writeAsStringSync('''
// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxElement {
  ObjectBoxElement({
    this.id,
    this.extension_,
    });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  }''');
}

void exportObjectBoxFiles() {
  final exportFiles = <String>[];
  final dataTypes = Directory('$fhirDirectory/object_box/data_types');
  final files = dataTypes.listSync();
  for (final file in files) {
    final fileName = file.path.split('/').last;
    exportFiles.add("export 'data_types/$fileName';\n");
  }
  exportFiles.sort();
  File('$fhirDirectory/object_box/data_types.dart')
      .writeAsStringSync(exportFiles.join());
  exportFiles.clear();
  final resourceTypes = Directory('$fhirDirectory/object_box/resource_types');
  final resourceFiles = resourceTypes.listSync();
  for (final file in resourceFiles) {
    final fileName = file.path.split('/').last;
    exportFiles.add("export 'resource_types/$fileName';\n");
  }
  exportFiles.sort();
  File('$fhirDirectory/object_box/resource_types.dart')
      .writeAsStringSync(exportFiles.join());
  File('$fhirDirectory/object_box/object_box.dart').writeAsStringSync("""
export 'data_types.dart';
export 'element.dart';
export 'resource.dart';
export 'resource_types.dart';
""");
}

void generateObjectBoxClasses(Map<String, WritableClass> classes) {
  final exportFile = <String>{};

  classes.forEach((String className, WritableClass writableClass) {
    final buffer = StringBuffer();
    final officialClassName = writableClass.className.fhirToObjectBoxTypes;
    final extended =
        officialClassName.isResource ? 'extends ObjectBoxResource' : '';

    // Write class header
    buffer
      ..writeln('@Entity()')
      ..writeln('class $officialClassName $extended {')
      ..writeln('\n  $officialClassName({');

// Loop through the fields and add them to the constructor
    for (final field in writableClass.fields) {
      final actualFieldName = field.name.fhirFieldToDartName;
      final elementFieldName = _normalizeElementFieldName(actualFieldName);
      var objectBoxType =
          field.isEnum ? 'String' : field.type.fhirToObjectBoxTypes;

      objectBoxType = objectBoxType == 'ObjectBoxEvidenceVariable'
          ? 'ObjectBoxEvidenceModelCharacteristicVariable'
          : objectBoxType;

      // Handle ToOne or ToMany relationships (complex types)
      if (!field.type.isPrimitiveType && !field.isEnum) {
        final fieldType =
            field.isList ? 'List<$objectBoxType>?' : '$objectBoxType?';
        buffer.writeln('    $fieldType $actualFieldName,');
      }
      // Handle primitive or enum fields
      else {
        // Add the field to the constructor with required if necessary
        if (field.isRequired) {
          buffer.writeln('    required this.$actualFieldName,');
        } else {
          buffer.writeln('    this.$actualFieldName,');
        }

        // For primitive fields (except 'id'), add a matching element field
        if (actualFieldName != 'id') {
          final elementType =
              field.isList ? 'List<ObjectBoxElement>?' : 'ObjectBoxElement?';
          buffer.writeln('    $elementType ${elementFieldName}Element,');
        }
      }
    }

    // Close the constructor and begin the assignment logic
    buffer.writeln('  }) {');

    // After-constructor assignments for ToOne and ToMany relationships
    for (final field in writableClass.fields) {
      final actualFieldName = field.name.fhirFieldToDartName;
      final elementFieldName = _normalizeElementFieldName(actualFieldName);

      // Handle ToMany relationships
      if (!field.type.isPrimitiveType && !field.isEnum && field.isList) {
        buffer.writeln(
          '    this.$actualFieldName.addAll($actualFieldName ?? []);',
        );
      }
      // Handle ToOne relationships
      else if (!field.type.isPrimitiveType && !field.isEnum && !field.isList) {
        buffer.writeln('    this.$actualFieldName.target = $actualFieldName;');
      }

      // Handle matching element fields for primitive values
      if ((field.isEnum || field.type.isPrimitiveType) &&
          actualFieldName != 'id') {
        if (field.isList) {
          buffer.writeln(
            '    this.${elementFieldName}Element.addAll(${elementFieldName}Element ?? []);',
          );
        } else {
          buffer.writeln(
            '    this.${elementFieldName}Element.target = ${elementFieldName}Element;',
          );
        }
      }
    }

// Finalize the constructor
    buffer.writeln('  }\n');

// Add the @Id annotation for the ObjectBox class
    buffer.writeln('  @Id() int? dbId;');

    // Loop through the fields and add them as class variables
    for (final field in writableClass.fields) {
      var objectBoxType =
          field.isEnum ? 'String' : field.type.fhirToObjectBoxTypes;
      objectBoxType = objectBoxType == 'ObjectBoxEvidenceVariable'
          ? 'ObjectBoxEvidenceModelCharacteristicVariable'
          : objectBoxType;

      // Handle complex types (ToOne or ToMany relations)
      if (!field.type.isPrimitiveType && !field.isEnum) {
        if (field.isList) {
          buffer.writeln(
            '  ToMany<$objectBoxType> '
            '${field.name.fhirFieldToDartName} = ToMany<$objectBoxType>();',
          );
        } else {
          buffer.writeln(
            '  ToOne<$objectBoxType> '
            '${field.name.fhirFieldToDartName} = ToOne<$objectBoxType>();',
          );
        }
      } else {
        // Handle primitive types or enums
        final fieldType = field.isList ? 'List<$objectBoxType>' : objectBoxType;
        final actualFieldName = field.name.fhirFieldToDartName;
        buffer.writeln(
          '  $fieldType${field.isRequired ? '' : '?'} $actualFieldName;',
        );

        final finalFieldName = actualFieldName.endsWith('_')
            ? actualFieldName.substring(0, actualFieldName.length - 1)
            : actualFieldName;

        if (field.isList) {
          buffer.writeln(
            '  ToMany<ObjectBoxElement> ${finalFieldName}Element = ToMany<ObjectBoxElement>();',
          );
        } else {
          buffer.writeln(
            '  ToOne<ObjectBoxElement> ${finalFieldName}Element = ToOne<ObjectBoxElement>();',
          );
        }
      }
    }

    // Close class
    buffer.writeln('}');

    // Write to a separate file per class
    final fileName = _writeToFile(buffer, className, 'object_box');
    if (fileName.isNotEmpty) {
      exportFile.add("export '$fileName';\n");
    }
  });
}

/// Normalizes the field name to generate the corresponding element field name.
///
/// If the field name ends with '_', remove it to form the element field name.
/// Otherwise, return the field name as-is.
String _normalizeElementFieldName(String fieldName) {
  return fieldName.endsWith('_')
      ? fieldName.substring(0, fieldName.length - 1)
      : fieldName;
}

String _writeToFile(
  StringBuffer buffer,
  String className,
  String targetDirectory, {
  Map<String, String>? nameMap,
}) {
  final baseFilePath = className.split('.').first;

  // if (baseFilePath.isResource) {
  //   return '';
  // }

  numberOfResources++;

  final filePath = baseFilePath.isResource || baseFilePath.isDomainResource
      ? '$fhirDirectory/$targetDirectory/resource_types/${baseFilePath.properFileName}.dart'
      : baseFilePath.isDataType ||
              baseFilePath.isQuantity ||
              baseFilePath.isBackboneType
          ? '$fhirDirectory/$targetDirectory/data_types/${baseFilePath.properFileName}.dart'
          : '$fhirDirectory/$targetDirectory/object_box_${baseFilePath.properFileName}.dart';

  final fileToWrite = File(filePath);

  var fileContent = '';

  if (!fileToWrite.existsSync()) {
    try {
      fileToWrite.createSync();
      fileContent += '// ignore_for_file: public_member_api_docs\n\n';
      fileContent +=
          "import 'package:fhir_r4/src/fhir/object_box/object_box.dart';";
      fileContent += "import 'package:objectbox/objectbox.dart';";
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
    // print('Successfully wrote to: $filePath');
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
  return '$baseFilePath.dart';
}
